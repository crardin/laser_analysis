% Fraunhofer diffraction from a rectangular aperture

clc
close all
clear all

% beam
lambda = 1e-6; % m 
k = (2 * pi)/lambda; % m^-1 
Io = 1e6; % W/m^2

% system
D = 10e-2; % m
R=1e3; % m

figure(1)
title('Fraunhofer Diffraction for a Square Aperture', 'fontsize', 14)

function y = sinc(x)
% this function computes the sinc function
% given beta as an input
    y = ones(size(x));
    isNonZero = x~=0;
    y(isNonZero) = sin(pi * x(isNonZero))./(pi*x(isNonZero));
end
