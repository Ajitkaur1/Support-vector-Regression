# Support-vector-Regression
MATLAB interface of LIBSVM:
Table of Contents
•	Installation (LIBSVM)
•	Project Execution steps
Installation
On Windows systems, pre-built binary files are already in the directory ‘…\windows’, so no need to conduct installation. Now we provide binary files only for 64bit MATLAB on Windows. If you would like to re-build the package, please rely on the following steps.
We recommend using make.m on both MATLAB and OCTAVE. Just type ‘make’ to build ‘libsvmread.mex’, ‘libsvmwrite.mex’, ‘svmtrain.mex’, and ‘svmpredict.mex’.
On MATLAB :
    >> make
If make.m does not work on MATLAB (especially for Windows), try ‘mex -setup’ to choose a suitable compiler for mex. Make sure your compiler is accessible and workable. Then type ‘make’ to start the installation.
Example:
matlab>> mex -setup
(ps: MATLAB will show the following messages to setup default compiler.)
Please choose your compiler for building external interface (MEX) files:
Would you like mex to locate installed compilers [y]/n? y
Select a compiler:
[1] Microsoft Visual C/C++ version 7.1 in C:\Program Files\Microsoft Visual Studio
[0] None
Compiler: 1
Please verify your choices:
Compiler: Microsoft Visual C/C++ 7.1
Location: C:\Program Files\Microsoft Visual Studio
Are these correct?([y]/n): y

matlab>> make
On Unix systems, if neither make.m nor ‘mex -setup’ works, please use Makefile and type ‘make’ in a command window. Note that we assume your MATLAB is installed in ‘/usr/local/matlab’. If not, please change MATLABDIR in Makefile.
Example: linux> make
To use octave, type ‘make octave’:
Example: linux> make octave
For a list of supported/compatible compilers for MATLAB, please check the following page:
http://www.mathworks.com/support/compilers/current_release/

PROJECT EXECUTION STEPS:
There are total 14 matlab functions/files in SVR code. They are as follows:
              

Numerical data:
In order to execute numerical data set , we need to just run file “main.m” file. When you execute this file it will ask to enter incomplete file name where we need to mention complete name of xlsx file.
Example:
Enter incomplete file:
Simple1

Output:
optimization finished, #iter = 4679
nu = 0.732091
obj = -4750.448966, rho = -0.741192
nSV = 3063, nBSV = 3048
Prob. model for test data: target value = predicted value + z,
z: Laplace distribution e^(-|z|/sigma)/(2sigma),sigma=0.365988
Mean squared error = -1.#IND (regression)
Squared correlation coefficient = -1.#IND (regression)
dimputed values are
    1.8011    1.7994    1.8011

    0.0067
Note – Last value displayed is NRMS Error
Categorical data:
In order to execute categorical data we need to just run the file “mainc.m” file. When you execute this file it will ask to enter incomplete file name where we need to mention complete name of xlsx file.

