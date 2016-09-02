function [normList] = l2NormOfCol(M)
% normList = l2NormOfCol(M)
% This is used to compute the L2 Norm of each column in a matrix.
% 
% Phillip K Poon 16 Aug 2016

normList = diag(sqrt(M'*M));

% Transpose to make it a row vector
normList = normList.';

end