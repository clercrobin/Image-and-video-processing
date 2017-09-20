function [ weber_matrix ] = weber( l1,l2,lb )
%weber Build the associated weber matrix

weber_matrix = lb*ones(600,600);
weber_matrix(220:380,220:300) = l1;
weber_matrix(220:380,300:380) = l2;

end

