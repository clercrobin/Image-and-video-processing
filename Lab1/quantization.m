function [ quantized_image ] = quantization( original_image, gray_levels )
gray_levels;
%quantization Quantize the image with a given number of gray levels
%   original_image : gray image
%   gray_levels : number of gray levels
step_size = round(256/gray_levels);
quantized_image = floor(double(original_image)./step_size)*step_size + step_size/2;

end

