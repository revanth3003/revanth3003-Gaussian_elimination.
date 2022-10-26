# revanth3003-Gaussian_elimination.

testmatrix.m - Matlab function will test whether a given matrix is in an echelon form, 
               a row canonical form(Reduced Row Echelon Form), or neither. Example: A=randi([-1,4],4,4); x=textmatrix(A)

ref.m - Matlab function that will return a row echelon form for any given input matrix. Example: A=randi([-1,4],4,4); x=ref(A)

rcf.m - Matlab function that will return the row canonical form for any given row echelon matrix;
        function will return an appropriate error if the input matrix is NOT in echelon form. Example: A=randi([-1,4],4,4); x=rcf(A)

axb.m - a function that will take matrix argument A and vector argument b, and return the solution to Ax = b.
        The solution uses the functions (rcf.m and ref.m) and will give appropriate errors if a solution is not possible.
        Example: A=randi([-1,4],4,4); b=[2;3;4;5]; x=axb[A b] Note: Row dimension of A should match for b and column dimension of b is equal to 1.
        
compu_time.m - This file, with random matrices of various sizes, and will plot the time required to
                solve the system as a function of the number of rows m and columns n

Note: Make sure you have function files is in your path before run. 

Thank you !!
