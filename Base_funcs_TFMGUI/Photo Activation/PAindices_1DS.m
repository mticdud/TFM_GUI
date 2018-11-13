function [start1,end1,start2,end2] = PAindices_1DS(PA,threshold)
%Routine for obtaining indices where there is light activation (laser is on)
[folder,~,~] = fileparts(PA);
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
[start1,end1] = deal(PAfrms(1),PAfrms(jump));
[start2,end2] = deal(PAfrms(jump+1),PAfrms(end));
end

