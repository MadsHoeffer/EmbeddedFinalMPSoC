#pragma once
#include "kernels.hpp"
#define rows 30
#define cols 54
#define n_inputs 30*54
#define n_layer7 32
#define n_layer8 32
#define n_layer9 8
#define n_layer10 2
void mat_mul(NN_data input[], int size_in, const NN_data weights[], int width_w, int height_w, NN_data output[]);
void applySingleKernel(NN_data arr[], NN_data kernel[], int &w, int &h,NN_data out[]);
void nn_inference(float input_img[n_inputs], NN_data output[2]);
NN_data getPixelVal(NN_data arr[], int w, int h, int x, int y);
NN_data max(float a, float b, float c, float d);
void maxPooling(NN_data arr[], int w, int h, NN_data out[]);
void add_vec(NN_data vec[], NN_data bias[], int size);
void relu(NN_data input[], NN_data output[], int size);

