#include "matmul.hpp"
#include "kernels.hpp"
#include <iostream>
NN_data getPixelVal(NN_data arr[], int w, int h, int x, int y)
{
//    if (x < 0 || x >= w || y < 0 || y >= h)
//        return 0;
    return arr[y * w + x];
}

NN_data max(float a, float b, float c, float d)
{
    if (a > b && a > c && a > d)
        return a;

    else if (b > c && b > d)
        return b;

    else if (c > d)
        return c;

    return d;
}

void maxPooling(NN_data arr[], int w, int h, NN_data out[])
{
#pragma HLS array_partition variable=arr type=complete dim=1
    int t = 0;
    for (int i = 0; i < h-1; i += 2)
    {
#pragma HLS UNROLL factor = 10
        for (int j = 0; j < w-1; j += 2)
        {
            out[t++] = max(getPixelVal(arr, w, h, j, i), getPixelVal(arr, w, h, j, i + 1), getPixelVal(arr, w, h, j + 1, i), getPixelVal(arr, w, h, j + 1, i + 1));
        }
    }
}

void applySingleKernel(NN_data arr[], NN_data kernel[], int w, int h, NN_data out[])
{
#pragma HLS array_partition variable=arr type=complete dim=1
    int t = 0;
    NN_data sum;
    for (int i = 1; i < h - 1; i++)
    {
#pragma HLS UNROLL factor = 10
        for (int j = 1; j < w - 1; j++)
        {
//#pragma HLS UNROLL factor = 6
            sum = 0;
            for (int m = 0; m < 3; m++)
            {
                for (int n = 0; n < 3; n++)
                {
                    sum += getPixelVal(arr, w, h, j - 1 + n, i - 1 + m) * kernel[m * 3 + n];
                }
            }
            out[t++] = sum;
        }
    }
}

void mat_mul(NN_data input[], int size_in, const NN_data weights[], int width_w, int height_w, NN_data output[])
{
    NN_data sum;
    for (int i = 0; i < height_w; i++)
    {
#pragma HLS UNROLL factor = 4
        sum = 0;
        for (int j = 0; j < width_w; j++)
        {
            sum += weights[i * width_w + j] * input[j];
        }
        output[i] = sum;
    }
    return;
}
void add_vec(NN_data vec[], NN_data bias[], int size)
{
    for (int i = 0; i < size; i++)
    {
#pragma HLS UNROLL
        vec[i] += bias[i];
    }
}



void relu(NN_data input[], NN_data output[], int size)
{
    for (int i = 0; i < size; i++)
    {
#pragma HLS UNROLL
        if (input[i] < 0)
            output[i] = 0;
    }
    return;
}

void nn_inference(NN_data input_img[n_inputs], NN_data output[2])
{
#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=input_img
#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=output
#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU
    const int cols_1 = 54;
    const int rows_1 = 30;
    const int cols_1_conv = 52;
    const int rows_1_conv = 28;
    const int cols_2 = 26;
    const int rows_2 = 14;
    const int cols_2_conv = 24;
    const int rows_2_conv = 12;
    const int cols_3 = 12;
    const int rows_3 = 6;
    const int cols_3_conv = 10;
    const int rows_3_conv = 4;
    const int cols_out = 5;
    const int rows_out = 2;
    NN_data out_conv[cols_1 * rows_1];
    NN_data out_pool[cols_1 * rows_1];
    NN_data img[n_inputs];
#pragma HLS array_partition variable=out_conv type=block  factor=10
#pragma HLS array_partition variable=img type=block  factor=10
#pragma HLS array_partition variable=out_pool type=block  factor=10
    for(int i = 0; i<n_inputs; i++){
    	img[i] = input_img[i];
    }

        applySingleKernel(img, layer_0[0][0], cols_1, rows_1, out_conv);
        maxPooling(out_conv, cols_1_conv, rows_1_conv, out_pool);
        relu(out_pool, out_pool, cols_2 * rows_2);

        applySingleKernel(out_pool, layer_1[0][0], cols_2, rows_2, out_conv);
        maxPooling(out_conv, cols_2_conv, rows_2_conv, out_pool);
        relu(out_pool, out_pool, cols_3 * rows_3);

        applySingleKernel(out_pool, layer_2[0][0], cols_3, rows_3, out_conv);
        maxPooling(out_conv, cols_3_conv, rows_3_conv, out_pool);
        relu(out_pool, out_pool, cols_out * rows_out);
        NN_data fully_connected_in[cols_out * rows_out];
        int u = 0;
        for (int j = 0; j < cols_out * rows_out; j++)
        {
#pragma HLS UNROLL
            fully_connected_in[u++] = out_pool[j];
        }

        mat_mul(fully_connected_in, cols_out * rows_out, layer7_weights, cols_out * rows_out, n_layer7, out_conv);
        add_vec(out_conv, bias_layer7, n_layer7);
        relu(out_conv, out_conv, n_layer7);

        mat_mul(out_conv, n_layer7, layer8_weights, n_layer7, n_layer8, out_pool);
        add_vec(out_pool, bias_layer8, n_layer8);
        relu(out_pool, out_pool, n_layer8);

        mat_mul(out_pool, n_layer8, layer9_weights, n_layer8, n_layer9, out_conv);
        add_vec(out_conv, bias_layer9, n_layer9);
        relu(out_conv, out_conv, n_layer9);

        mat_mul(out_conv, n_layer9, layer10_weights, n_layer9, n_layer10, out_pool);
        add_vec(out_pool, bias_layer10, n_layer10);
        std::cout<<out_pool[0]<<" "<<out_pool[1]<<std::endl;
        output[0] = out_pool[0];
        output[1] = out_pool[1];

    }

