% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1313.436901005909700 ; 1308.142139521487700 ];

%-- Principal point:
cc = [ 610.195064998048110 ; 555.374669895309350 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.355614815570557 ; 1.510163074842843 ; 0.004351933369938 ; 0.000033900979216 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 11.763284498144122 ; 11.554311770881119 ];

%-- Principal point uncertainty:
cc_error = [ 15.395288353861767 ; 15.996494837959336 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.058640464182925 ; 0.499241183974434 ; 0.002240663412375 ; 0.003916689488055 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 1024;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 22;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.165312e+000 ; -2.118621e+000 ; 6.862846e-002 ];
Tc_1  = [ 8.668315e+001 ; -1.356643e+002 ; 1.013677e+003 ];
omc_error_1 = [ 1.477108e-002 ; 1.544260e-002 ; 3.072789e-002 ];
Tc_error_1  = [ 1.193047e+001 ; 1.247544e+001 ; 9.480651e+000 ];

%-- Image #2:
omc_2 = [ -2.101610e+000 ; -2.056441e+000 ; 2.446164e-001 ];
Tc_2  = [ 5.703706e+000 ; -1.370555e+002 ; 1.038911e+003 ];
omc_error_2 = [ 1.204806e-002 ; 1.059052e-002 ; 2.431127e-002 ];
Tc_error_2  = [ 1.224469e+001 ; 1.270381e+001 ; 9.018074e+000 ];

%-- Image #3:
omc_3 = [ -2.009671e+000 ; -1.979531e+000 ; 3.813686e-001 ];
Tc_3  = [ 4.625424e+000 ; -1.375938e+002 ; 1.047658e+003 ];
omc_error_3 = [ 1.075841e-002 ; 8.514466e-003 ; 2.016839e-002 ];
Tc_error_3  = [ 1.234905e+001 ; 1.280734e+001 ; 8.956479e+000 ];

%-- Image #4:
omc_4 = [ -1.922702e+000 ; -1.903913e+000 ; 5.007327e-001 ];
Tc_4  = [ 5.075923e+000 ; -1.380769e+002 ; 1.056277e+003 ];
omc_error_4 = [ 1.060013e-002 ; 7.898875e-003 ; 1.841155e-002 ];
Tc_error_4  = [ 1.244924e+001 ; 1.291255e+001 ; 8.947108e+000 ];

%-- Image #5:
omc_5 = [ -1.828468e+000 ; -1.820193e+000 ; 6.237094e-001 ];
Tc_5  = [ 6.904241e+000 ; -1.386141e+002 ; 1.066072e+003 ];
omc_error_5 = [ 1.073476e-002 ; 7.793928e-003 ; 1.718591e-002 ];
Tc_error_5  = [ 1.256278e+001 ; 1.303304e+001 ; 8.952262e+000 ];

%-- Image #6:
omc_6 = [ -1.731085e+000 ; -1.732162e+000 ; 7.349937e-001 ];
Tc_6  = [ 1.003421e+001 ; -1.390117e+002 ; 1.074436e+003 ];
omc_error_6 = [ 1.094165e-002 ; 7.999211e-003 ; 1.617753e-002 ];
Tc_error_6  = [ 1.265927e+001 ; 1.313659e+001 ; 8.955838e+000 ];

%-- Image #7:
omc_7 = [ 2.164762e+000 ; 2.082063e+000 ; 3.076774e-001 ];
Tc_7  = [ 2.140689e+001 ; -1.352796e+002 ; 1.009751e+003 ];
omc_error_7 = [ 1.077461e-002 ; 8.144189e-003 ; 2.132568e-002 ];
Tc_error_7  = [ 1.189385e+001 ; 1.234801e+001 ; 9.226095e+000 ];

%-- Image #8:
omc_8 = [ 2.060721e+000 ; 1.977055e+000 ; 4.745994e-001 ];
Tc_8  = [ 2.951975e+001 ; -1.350972e+002 ; 1.003580e+003 ];
omc_error_8 = [ 1.067265e-002 ; 7.535005e-003 ; 1.907359e-002 ];
Tc_error_8  = [ 1.182389e+001 ; 1.227374e+001 ; 9.217612e+000 ];

%-- Image #9:
omc_9 = [ 1.975593e+000 ; 1.890128e+000 ; 5.975390e-001 ];
Tc_9  = [ 3.424776e+001 ; -1.349259e+002 ; 9.987190e+002 ];
omc_error_9 = [ 1.082787e-002 ; 7.589687e-003 ; 1.788535e-002 ];
Tc_error_9  = [ 1.176757e+001 ; 1.221656e+001 ; 9.230827e+000 ];

%-- Image #10:
omc_10 = [ 2.181929e+000 ; 1.758303e+000 ; -1.128223e+000 ];
Tc_10  = [ 9.094521e+000 ; -1.518777e+002 ; 1.158750e+003 ];
omc_error_10 = [ 8.912962e-003 ; 1.216620e-002 ; 1.847667e-002 ];
Tc_error_10  = [ 1.368094e+001 ; 1.419858e+001 ; 9.524420e+000 ];

%-- Image #11:
omc_11 = [ 2.120253e+000 ; 1.820324e+000 ; -6.128925e-001 ];
Tc_11  = [ -4.325111e+000 ; -1.805703e+002 ; 1.106589e+003 ];
omc_error_11 = [ 9.447757e-003 ; 1.068685e-002 ; 1.905538e-002 ];
Tc_error_11  = [ 1.310501e+001 ; 1.359314e+001 ; 9.385994e+000 ];

%-- Image #12:
omc_12 = [ 2.084465e+000 ; 1.768609e+000 ; -1.042802e-001 ];
Tc_12  = [ -9.373067e+000 ; -1.999975e+002 ; 1.039978e+003 ];
omc_error_12 = [ 1.010107e-002 ; 9.281420e-003 ; 1.855523e-002 ];
Tc_error_12  = [ 1.234816e+001 ; 1.275318e+001 ; 9.211752e+000 ];

%-- Image #13:
omc_13 = [ 1.948412e+000 ; 1.716010e+000 ; 3.598787e-001 ];
Tc_13  = [ 1.111871e+001 ; -1.905924e+002 ; 9.734036e+002 ];
omc_error_13 = [ 1.039954e-002 ; 8.425983e-003 ; 1.666285e-002 ];
Tc_error_13  = [ 1.155637e+001 ; 1.190884e+001 ; 8.923039e+000 ];

%-- Image #14:
omc_14 = [ 1.850467e+000 ; 1.606893e+000 ; 5.421671e-001 ];
Tc_14  = [ 2.192761e+001 ; -1.817750e+002 ; 9.323160e+002 ];
omc_error_14 = [ 1.076563e-002 ; 8.564684e-003 ; 1.542453e-002 ];
Tc_error_14  = [ 1.106613e+001 ; 1.140917e+001 ; 8.659376e+000 ];

%-- Image #15:
omc_15 = [ 1.921050e+000 ; 1.935400e+000 ; 3.097100e-001 ];
Tc_15  = [ 6.424720e+001 ; -2.099740e+002 ; 9.520122e+002 ];
omc_error_15 = [ 1.010058e-002 ; 8.722395e-003 ; 1.743190e-002 ];
Tc_error_15  = [ 1.134130e+001 ; 1.167105e+001 ; 8.728098e+000 ];

%-- Image #16:
omc_16 = [ -1.957862e+000 ; -1.247636e+000 ; 2.596020e-002 ];
Tc_16  = [ -3.070365e+001 ; -1.346390e+002 ; 1.018915e+003 ];
omc_error_16 = [ 1.043659e-002 ; 7.413853e-003 ; 1.481163e-002 ];
Tc_error_16  = [ 1.202481e+001 ; 1.248529e+001 ; 8.997708e+000 ];

%-- Image #17:
omc_17 = [ -1.974139e+000 ; -1.490660e+000 ; -2.643249e-001 ];
Tc_17  = [ 3.798486e+000 ; -1.371490e+002 ; 9.538652e+002 ];
omc_error_17 = [ 9.171415e-003 ; 8.395361e-003 ; 1.571565e-002 ];
Tc_error_17  = [ 1.127477e+001 ; 1.171203e+001 ; 8.675519e+000 ];

%-- Image #18:
omc_18 = [ -1.966500e+000 ; -1.664589e+000 ; -5.065519e-001 ];
Tc_18  = [ 3.806321e+001 ; -1.358621e+002 ; 9.202126e+002 ];
omc_error_18 = [ 8.076974e-003 ; 9.657288e-003 ; 1.656867e-002 ];
Tc_error_18  = [ 1.088577e+001 ; 1.129901e+001 ; 8.587881e+000 ];

%-- Image #19:
omc_19 = [ -1.957356e+000 ; -1.829956e+000 ; -7.779671e-001 ];
Tc_19  = [ 6.956700e+001 ; -1.346679e+002 ; 8.988527e+002 ];
omc_error_19 = [ 6.942158e-003 ; 1.124587e-002 ; 1.738992e-002 ];
Tc_error_19  = [ 1.063685e+001 ; 1.102744e+001 ; 8.669164e+000 ];

%-- Image #20:
omc_20 = [ -1.962792e+000 ; -1.935338e+000 ; -1.012796e+000 ];
Tc_20  = [ 8.955251e+001 ; -1.279565e+002 ; 8.825892e+002 ];
omc_error_20 = [ 6.077929e-003 ; 1.260609e-002 ; 1.789476e-002 ];
Tc_error_20  = [ 1.043944e+001 ; 1.082831e+001 ; 8.686303e+000 ];

%-- Image #21:
omc_21 = [ NaN ; NaN ; NaN ];
Tc_21  = [ NaN ; NaN ; NaN ];
omc_error_21 = [ NaN ; NaN ; NaN ];
Tc_error_21  = [ NaN ; NaN ; NaN ];

%-- Image #22:
omc_22 = [ -2.149667e+000 ; -2.163723e+000 ; 2.239705e-002 ];
Tc_22  = [ 7.397543e+001 ; -9.934483e+001 ; 1.012473e+003 ];
omc_error_22 = [ 1.245321e-002 ; 1.411580e-002 ; 2.960700e-002 ];
Tc_error_22  = [ 1.190008e+001 ; 1.245147e+001 ; 9.513379e+000 ];

