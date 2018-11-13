function [PAfrms] = PAindices_4DS(PA,threshold)
%Routine for obtaining indices where there is light activation (laser is on)
[folder,~,~] = fileparts(PA{4});
a=dir([folder '/*.tif']);
out=size(a,1);

PAavgs = zeros(out,1);
for i=1:out
    first = {a(i).folder};
    second = {a(i).name};
    full = fullfile(first,second);
    chars = char(full);
    PAfile = imread(chars);
    save('PAdata','PAfile')
    newlight = mean2(PAfile);
    PAavgs(i) = newlight;
end

PAfrms = find(PAavgs > threshold);
jump = find(diff(PAfrms)>2);
start1 = PAfrms(1);
end1 = PAfrms(jump);
start2 = PAfrms(jump+1);
end2 = PAfrms(end);
end

