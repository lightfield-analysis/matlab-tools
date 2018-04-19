%This Matlab script was initialy writen for the Middlebury stereo 
%evaluation v. 3 and graciously provided by Eric Psota and Jedrzej 
%Kowalczuk.

function pfmwrite(D, filename)
%PFMREAD Write a PFM image file.
%   PFMREAD(D, filename) writes the contents of a floating-point,
%   single-channel image D into a file specified by filename.
%   
% Created: 11/13/2014 JK

if isa(D,'double')
    D=single(D);
end
assert(size(D, 3) == 1 & isa(D, 'single'));

[rows, cols] = size(D);
scale = -1.0;

fid = fopen(filename, 'wb');

fprintf(fid, 'Pf\n');
fprintf(fid, '%d %d\n', cols, rows);
fprintf(fid, '%f\n', scale);

%this line sometimes leads to problems
%fscanf(fid, '%c', 1);

fwrite(fid, D(end:-1:1, :)', 'single');

fclose(fid);

end

