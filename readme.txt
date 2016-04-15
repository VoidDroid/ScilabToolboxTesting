// Author: Deepankar Chanda
// Testcases for Signal Processing SciLab Toolbox written by FOSSEE Project

************************************
Function name: eqtflength()

Report name: eqtflength_testcase.sce

Total testcases - 17
Passed - 6
Failed - 11

Outlined Issues:

Non-trailing zeros are also removed
Incorrect order of numeratoe and denominator
Does not throw error when i/p is not a number
Conjugated o/p for complex coefficients
Does not throw error when denominator is 0
Does not throw error when denominator is inf
Does not throw error when all filter coefficients are 0
Incorrect o/p when numerator coefficient is inf


************************************
Function name: is2rc()

Report name: is2rc_testcase.sce

Total testcases - 11
Passed - 4
Failed - 7

Outlined Issues:
Calculates value for invs < -1 & invs > 1
Incorrect o/p when input is real, defined using complex(a,0) function
Incorrect o/p for no input value


************************************
Function name: seqperiod()


Report name: seqperiod_testcase.sce

Total testcases - 9
Passed - 4
Failed - 5

Outlined Issues:
Incorrect o/p for a repeated but incomplete sequence
Does not throw error when i/p is not a number
Incorrect o/p for i/p hypermatrix
Incorrect o/p when i/p is NaN