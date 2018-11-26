x = -5:.01:5;
plot(x, sinc(x))
grid on

function y = sinc(x)
% this function computes the sinc function
% given beta as an input
    y = ones(size(x));
    isNonZero = x~=0;
    y(isNonZero) = sin(pi * x(isNonZero))./(pi*x(isNonZero));
end