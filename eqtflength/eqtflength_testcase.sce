// test cases for eqtflength()
// Author: Deepankar Chanda

funcprot(0)
exec('eqtflength.sci',-1); 

// ***********
// Test case 1
// ***********

a = [1 3 2 0 0 6];
b = [2 4 3];

desiredRes = [2 4 3 0 0 0 1 3 2 0 0 6 2 5]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// output = [2 4 3 1 3 2 2 2]
// outputs incorrect order and filter coefficents
// FAILED

// ***********
// Test case 2
// ***********

a = [1 3];
b = [2 0 3 0];

desiredRes = [2 0 3 1 3 0 2 1]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// outputs incorrect order and filter coefficents
// FAILED

// ***********
// Test case 3
// ***********

a = [3 0 5];
b = [1 0 2];

desiredRes = [1 0 2 3 0 5 2 2]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// FAILED

// ***********
// Test case 4
// ***********

a = ['p' 'q' 'r'];
b = [1 2 3];

//desiredRes = run-time error to indicate value must be a number
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

// FAILED

// ************
// Test case 5
// ************

a = [complex(1,0.2) complex(3,5) 2];
b = [complex(0.2,1e2) complex(0,5)) 0];

desiredRes = [complex(0.2,1e2) complex(0,5)) 0 complex(1,0.2) complex(3,5) 2 1 2]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// o/p values conjugated
// FAILED

// ***********
// Test case 6
// ***********

a = [0];
b = [1 2 3];

// desiredRes = run-time error to indicate denominator cannot be zero
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

// FAILED

// ***********
// Test case 7
// ***********

a = [1 2 3];
b = [0 0 0 1 2];

desiredRes = [0 0 0 1 2 1 2 3 0 0 4 2]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// incorrect order, final vector length should be 5
// FAILED

// ***********
// Test case 8
// ***********

a = [0 0 0 1 2 3];
b = [0 0 0 1 2];

desiredRes = [0 0 0 1 2 0 0 0 0 1 2 3 4 5]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// incorrect order, final vector length should be 6
// FAILED

// ***********
// Test case 9
// ***********

a = [0 0 0];
b = [0 0 0];

//desiredRes = run-time error to indicate at least one denominator value
//            must be non-zero
[b_o,a_o,N,M] = eqtflength(a,b);
res = [b_o a_o N M];

// FAILED

// ***********
// Test case 10
// ***********

a = [2 3];
b = [%inf)];

// desiredRes = run-time error or
desiredRes = [%nan %nan 2 3 -1 1]
[b_o,a_o,N,M] = eqtflength(a,b);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// order of numerator not defined
// FAILED

// ***********
// Test case 11
// ***********

a = [%inf];
b = [1 2];

//desiredRes = run-time error to indicate denominator should be finite
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// FAILED

// ***********
// Test case 12
// ***********

a = [1 3 2];
b = [1 0 0];

desiredRes = [1 0 0 1 3 2 0 2]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// PASSED

// ***********
// Test case 13
// ***********

a = [1 2 0];
b = [3 5 6 0 0];

desiredRes = [3 5 6 1 2 0 2 1]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// PASSED

// ***********
// Test case 14
// ***********

a = [1e-3 8e28 6e1];
b = [1e-23 5e-4 6e13 8e22];

desiredRes = [1e-23 5e-4 6e13 8e22 1e-3 8e28 6e1 0 3 2]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// PASSED

// ***********
// Test case 15
// ***********

a = [4 %pi];
b = [2 %e 5];

desiredRes = [2 %e 5 4 %pi 0 2 1]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// PASSED

// ***********
// Test case 16
// ***********

a = [1 2 4];
b = [0];

desiredRes = [0 0 0 1 2 4 -1 2]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// technically order of numerator is not defined in this case
// PASSED

// ***********
// Test case 17
// ***********

a = [1 2 4];
b = [1 2 4];

desiredRes = [1 2 4 1 2 4 2 2]
[b_o,a_o,N,M] = eqtflength(b,a);
res = [b_o a_o N M];

assert_checkalmostequal(res,desiredRes);

// PASSED
