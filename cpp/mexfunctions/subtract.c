#include "mex.h"

void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
    if (nrhs != 2) {
        mexErrMsgIdAndTxt("mex:subtract:nrhs", "Two inputs required.");
    }
    if (nlhs > 1) {
        mexErrMsgIdAndTxt("mex:subtract:nlhs", "One output required.");
    }

    double x = mxGetScalar(prhs[0]);
    double y = mxGetScalar(prhs[1]);

    plhs[0] = mxCreateDoubleScalar(x - y);
}
