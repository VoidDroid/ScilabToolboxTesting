// test cases for is2rc()
// Author: Deepankar Chanda

funcprot(0)
exec('is2rc.sci',-1); 

// ***********
// Test case 1
// ***********

isin = [1.32]

// desiredRes = error, inverse sine coefficients are bounded b/w (-1,1)
desiredRes = %nan
[k] = is2rc(isin);
res = [k];

assert_checkalmostequal(res,desiredRes);

// from the equation arcsin is bounded b/w [-pi/2,pi/2]
// is = 2/pi*arcsin(k) => is is bounded b/w [-1,1]
// FAILED

// ***********
// Test case 2
// ***********

isin = [complex(0.8,0)]

desiredRes = 0.9510565
[k] = is2rc(isin);
res = [k];

assert_checkalmostequal(res,desiredRes);

// isin is a real value
// FAILED

// ***********
// Test case 3
// ***********

isin = [1/complex(5,0)]

desiredRes = 0.3090170
[k] = is2rc(isin);
res = [k];

assert_checkalmostequal(res,desiredRes);

// isin is a real value
// FAILED


// ***********
// Test case 4
// ***********

isin = []

desiredRes = 0.9510565
[k] = is2rc(isin);
res = [k];

assert_checkalmostequal(res,desiredRes);

// isin is a real value
// FAILED

// ***********
// Test case 5
// ***********

isin = [complex(1,2)]

// desiredRes =  error
[k] = is2rc(isin);
res = [k];

// isin is a complex value
// PASSED

// ***********
// Test case 6
// ***********

isin = [2/%pi]

desiredRes = 0.8414710
[k] = is2rc(isin);
res = [k];

assert_checkalmostequal(res,desiredRes);

// for isin irrational
// PASSED

// ***********
// Test case 7
// ***********

isin = [1/%inf]

desiredRes = 0
[k] = is2rc(isin);
res = [k];

assert_checkalmostequal(res,desiredRes);

// for isin = 0
// PASSED

// ***********
// Test case 8
// ***********

isin = [%inf]

desiredRes = %nan
[k] = is2rc(isin);
res = [k];

assert_checkalmostequal(res,desiredRes);

// for isin approaching infinity
// PASSED

// ***********
// Test case 9
// ***********

isin = [243e-3]

desiredRes =  0.3725019;
[k] = is2rc(isin);
res = [k];

assert_checkalmostequal(res,desiredRes);

// PASSED


// ***********
// Test case 10
// ***********

isin = ['abc']

// desiredRes =  error
[k] = is2rc(isin);
res = [k];

// PASSED
