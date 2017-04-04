%This Matlab script was initialy writen for the Middlebury stereo 
%evaluation v. 3 and graciously provided by Eric Psota and Jedrzej 
%Kowalczuk.

function D = pfmread(filename_pfm)

fid = fopen(filename_pfm);

fscanf(fid,'%c',[1,3]);
cols = fscanf(fid,'%f',1);
rows = fscanf(fid,'%f',1);
fscanf(fid,'%f',1);
fscanf(fid,'%c',1);
D = fread(fid,[cols,rows],'single');
D(D == Inf) = 0;
D = rot90(D);
fclose(fid);