function [ reconstructed_image ] = reconstruction( quantized_image, gray_levels )
%quantization Quantize the image with a given number of gray levels
%   quantized_image : gray quantized image
%   gray_levels : number of gray levels
step_size = round(256/gray_levels);
reconstructed_image = quantized_image.*step_size + step_size/2;

end
