function [ color_map_updated ] = modify_color_map( color_map, gamma )
%modify_color_map Modifies the color map by applying a correlation factor
%   color_map : The color map you want to change
%   gamma : The correlation factor

color_map_updated = color_map.^gamma;

end

