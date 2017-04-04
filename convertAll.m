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

convertBlenderTo5D('test/bedroom')
convertBlenderTo5D('test/bicycle')
convertBlenderTo5D('test/herbs')
convertBlenderTo5D('test/origami')

convertBlenderTo5D('stratified/backgammon')
convertBlenderTo5D('stratified/dots')
convertBlenderTo5D('stratified/pyramids')
convertBlenderTo5D('stratified/stripes')

convertBlenderTo5D('training/boxes')
convertBlenderTo5D('training/cotton')
convertBlenderTo5D('training/dino')
convertBlenderTo5D('training/sideboard')

convertBlenderTo5D('additional/boardgames')
convertBlenderTo5D('additional/kitchen')
convertBlenderTo5D('additional/medieval2')
convertBlenderTo5D('additional/museum')
convertBlenderTo5D('additional/pens')
convertBlenderTo5D('additional/pillows')
convertBlenderTo5D('additional/platonic')
convertBlenderTo5D('additional/rosemary')
convertBlenderTo5D('additional/table')
convertBlenderTo5D('additional/tomb')
convertBlenderTo5D('additional/town')
convertBlenderTo5D('additional/vinyl')

