#include "mex.h"

void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
    if (nrhs != 2) {
        mexErrMsgIdAndTxt("mex:multiply:nrhs", "Two inputs required.");
    }
    if (nlhs > 1) {
        mexErrMsgIdAndTxt("mex:multiply:nlhs", "One output required.");
    }

    double x = mxGetScalar(prhs[0]);
    double y = mxGetScalar(prhs[1]);

    plhs[0] = mxCreateDoubleScalar(x * y);
}
