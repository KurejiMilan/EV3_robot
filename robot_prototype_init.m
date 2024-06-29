%run this init file before working with simlink
clc;
clear;
T_S = 1e-3;
%%
%run this section for square movemnet

% enter the length of square in cm
square_length = 30;
encoded_length = round(length_to_encoder(square_length));
encoded_angle = floor(degree_to_encoder(90));                          %for square movement we need to turn 90 degree
%%
function [encoder] = degree_to_encoder(degree)
    %distance between to tires
    d = 9+2.8/2;
    %radius of tire
    r = 5.6/2;
    encoder = (2*d*degree)/(2*r) - 4;
end

function [length_encoder] = length_to_encoder(length)
    %This length is equivalent to 1 degree of turn    
    min_length = 0.048869;
    length_encoder = length/min_length;
end