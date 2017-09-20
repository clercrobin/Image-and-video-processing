function [ quantized_image ] = quantization( original_image, gray_levels )
%quantization Quantize the image with a given number of gray levels
%   original_image : gray image
%   gray_levels : number of gray levels
step_size = round(256/gray_levels);
quantized_image = round(original_image./step_size);

end

