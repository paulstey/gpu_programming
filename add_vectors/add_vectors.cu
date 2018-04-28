#include <thrust/device_vector.h>
#include <thrust/transform.h>
#include <thrust/functional.h>
#include <iostream>


int main(void) {
    thrust::device_vector<float> X(3);
    thrust::device_vector<float> Y(3);
    thrust::device_vector<float> Z(3);
    X[0] = 10;
    X[1] = 20;
    X[2] = 30;
    Y[0] = 15;
    Y[1] = 35;
    Y[2] = 10;
    thrust::transform(X.begin(),
                      X.end(),
                      Y.begin(),
                      Z.begin(),
                      thrust::plus<float>());

    for (size_t i = 0; i < Z.size(); i++) {
        std::cout << "Z[" << i << "] = " << Z[i] << "\n";
    }
}
