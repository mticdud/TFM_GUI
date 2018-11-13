function [out] = PAcomp(PA)
%Routine for obtaining indices where there is light activation (laser is on)
[folder,~,~] = fileparts(PA);
a=dir([folder '/*.tif']);
out=size(a,1);
end

