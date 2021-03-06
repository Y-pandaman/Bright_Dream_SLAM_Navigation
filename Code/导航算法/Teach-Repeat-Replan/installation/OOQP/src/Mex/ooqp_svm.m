function [w, beta, v, z, u, s] = ooqp_svm( X, y, rho )
% ooqp_svm      Create a support vector machine classifier.
%
% function [w, beta, v, z, u, s] = ooqp_svm( X, y, rho )
%
% Create a support vector machine for classifying observations into two
% categories. If x is an observation then
%    x is classifed to be in category A if w' * x - beta >= 0
%    x is classifed to be in category B if w' * x - beta < 0
%
%    X - a training set of observations, one per row
%    y - a vector such that y(i) = 1 if X(i,:) is in category A and
%        y(i) = -1 if X(i,:) is in category B
%    rho(optional) - a weight with default value 1. Larger values of rho
%        will prefer machines that minimize the empirical error over
%        machines that minimize an estimate of the expected error.
%
%    w, beta - The classifier
%    v - a vector such that w = .5 * X' * diag(y) * v. The non-zero
%        elements of v expose the "Support Vectors" in X.
%    z, u, s - other variable used in solving creating the classifier. The 
%        value of these variables are probably not of interest to most 
%        users. 
%
%    The values returned should approximately satisfy the relationships:
%
%    2 * w - X' * diag(y) * v     = zeros(size(w))
%    y' * v                       = 0
%    rho * ones(size(v)) - v - u  = zeros(size(v))
%    diag(y) * (X * w - beta) - s = ones(size(z)) - z
%    s .* v                       = zeros(size(s))
%    z .* u                       = zeros(size(z))
%    s, v, z, u                   >= 0

error( sprintf( '%s\n%s\n',...
 'ooqp-svm is distributed as a compiled (mex) file.  The file ooqp-svm.m',...
    '(which you are trying to run) contains only the documentation.' ) );
