%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  This file is part of the 4D Light Field Benchmark.                      %
%                                                                          %
%  This work is licensed under the Creative Commons                        %
%  Attribution-NonCommercial-ShareAlike 4.0 International License.         %
%  To view a copy of this license,                                         %
%  visit http://creativecommons.org/licenses/by-nc-sa/4.0/.                %
%                                                                          %
%  Authors: Katrin Honauer & Ole Johannsen                                 %
%  Contact: contact@lightfield-analysis.net                                %
%  Website: www.lightfield-analysis.net                                    %
%                                                                          %
%  The 4D Light Field Benchmark was jointly created by the University of   %
%  Konstanz and the HCI at Heidelberg University. If you use any part of   %
%  the benchmark, please cite our paper "A dataset and evaluation          %
%  methodology for depth estimation on 4D light fields". Thanks!           %
%                                                                          %
%  @inproceedings{honauer2016benchmark,                                    %
%    title={A dataset and evaluation methodology for depth estimation on   %
%           4D light fields},                                              %
%    author={Honauer, Katrin and Johannsen, Ole and Kondermann, Daniel     %
%            and Goldluecke, Bastian},                                     %
%    booktitle={Asian Conference on Computer Vision},                      %
%    year={2016},                                                          %
%    organization={Springer}                                               %
%    }                                                                     %
%                                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ X,Y,Z ] = getPointcloud(LF,varargin)
%GETPOINTCLOUD creates a 3D pointcloud from a disparity map and the LF
%parameters. you can specifiy a disp map by [X,Y,Z] = getPointcloud(LF,'disp',d)
%for visualization use pcshow([X(:),-Y(:),Z(:)])

p = inputParser;

addRequired (p,'LF',@isstruct);
addParameter (p,'disp',[],@isnumeric);

parse(p,LF,varargin{:});

LF   = p.Results.LF;
disp   = p.Results.disp;

if isempty(disp)
    disp=LF.disp_lowres;
end

b=LF.parameters.extrinsics.baseline_mm*LF.parameters.intrinsics.focal_length_mm*LF.parameters.extrinsics.focus_distance_m*1000*max(LF.parameters.intrinsics.image_resolution_x_px,LF.parameters.intrinsics.image_resolution_y_px);
Z=b./(disp*LF.parameters.extrinsics.focus_distance_m*1000*LF.parameters.intrinsics.sensor_size_mm+LF.parameters.extrinsics.baseline_mm*LF.parameters.intrinsics.focal_length_mm*max(LF.parameters.intrinsics.image_resolution_x_px,LF.parameters.intrinsics.image_resolution_y_px));

[X,Y]=ndgrid(0:LF.parameters.intrinsics.image_resolution_y_px-1,0:LF.parameters.intrinsics.image_resolution_x_px-1);
X=(X/(LF.parameters.intrinsics.image_resolution_y_px-1)-1/2)*LF.parameters.intrinsics.sensor_size_mm;
Y=(Y/(LF.parameters.intrinsics.image_resolution_x_px-1)-1/2)*LF.parameters.intrinsics.sensor_size_mm;
X=X.*Z/LF.parameters.intrinsics.focal_length_mm;
Y=Y.*Z/LF.parameters.intrinsics.focal_length_mm;
end

