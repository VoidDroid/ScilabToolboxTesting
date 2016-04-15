// test cases for seqperiod()
// Author: Deepankar Chanda

funcprot(0)
exec('seqperiod.sci',-1); 

// ***********
// Test case 1
// ***********

x = [1 2 3 3 2 1 1 2 3 3; 0 0 0 5 0 0 0 5 0 0]

desiredRes = [6 4 1.67 2.5];
[p,num] = seqperiod(x);
res = [p num];

assert_checkalmostequal(res,desiredRes);

// repeated incomplete sequence
// FAILED

// ***********
// Test case 2
// ***********

x = ['a' 'b' 'c'; 'a' 'r' 'b'; 'a' 'p' 'c'; 'a' 't' 'b']

// desiredRes = error, input must be a set of real or complex numbers
[p,num] = seqperiod(x);
res = [p num];

// i/p is not a number sequence
// FAILED

// ***********
// Test case 3
// ***********

x(:,:,1,1) =[1;0];
x(:,:,2,1) = [0;0];
x(:,:,1,2) = [1;2];
x(:,:,2,2) = [2;2];
x(:,:,1,3) = [1;0];
x(:,:,2,3) = [5;7];

desiredRes(:,:,1,1) = [2 1];
desiredRes(:,:,2,1) = [1 2];
desiredRes(:,:,1,2) = [2 1];
desiredRes(:,:,2,2) = [1 2];
desiredRes(:,:,1,3) = [2 1];
desiredRes(:,:,2,3) = [2 1];

[p,num] = seqperiod(x);
res = [p num];

assert_checkalmostequal(res,desiredRes);

// hypermatrix
// FAILED

// ***********
// Test case 4
// ***********

x(:,:,1) = [1 0];
x(:,:,2) = [7 0];
x(:,:,3) = [1 4];

desiredRes(:,:,1) = [2 1];
desiredRes(:,:,2) = [2 1];
desiredRes(:,:,3) = [2 1];

[p,num] = seqperiod(x);
res = [p num];

assert_checkalmostequal(res,desiredRes);

// FAILED

// ***********
// Test case 5
// ***********

x = [%nan 1 2; 2 1 2; %nan 1 3]

desiredRes = [2 1 3 1.5 3 1];
[p,num] = seqperiod(x);
res = [p num];

assert_checkalmostequal(res,desiredRes);

// NaN as input
// FAILED

// ***********
// Test case 6
// ***********

x = [%inf 1 2; 0 1 2; %inf 1 3]

desiredRes = [2 1 3 1.5 3 1];
[p,num] = seqperiod(x);
res = [p num];

assert_checkalmostequal(res,desiredRes);

// inf as input
// PASSED

// ***********
// Test case 7
// ***********

x = [complex(1,2) 2 complex(3,1); 1 complex(2,3) complex(3,1); complex(1,2) 4 complex(3,1)]

desiredRes = [2 3 1 1.5 1 3];
[p,num] = seqperiod(x);
res = [p num];

assert_checkalmostequal(res,desiredRes);

// complex sequence
// PASSED

// ***********
// Test case 8
// ***********

x = rand(5,2,3)

desiredRes = [5 5 1 1; 5 5 1 1; 5 5 1 1];
[p,num] = seqperiod(x);
res = [p num];

assert_checkalmostequal(res,desiredRes);

// random input value
// PASSED

// ***********
// Test case 9
// ***********

a = [1 2; 7 8; 9 4]
x = repmat(a,3,2);

desiredRes = [3 3 3 3 3 3 3 3];
[p,num] = seqperiod(x);
res = [p num];

assert_checkalmostequal(res,desiredRes);

// repeated 2D matrix
// PASSED
