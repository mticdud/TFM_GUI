function Moviemaker3(TMnum)
%Routine for Making Movies to be Associated with Traction Maps
[folder,~,~] = fileparts(TMnum);
cmap = jet(256);
a=dir([folder '/*.mat']);
out=size(a,1);

%clear vid
for i=1:out
    first = {a(i).folder};
    second = {a(i).name};
    full = fullfile(first,second);
    strang = string(full);
    load(strang)
    %disp(strang)
    y = uint8(cur_tMap);
    vid(i) = im2frame(y,cmap);
end
v = VideoWriter('newfile3.avi');
open(v)
writeVideo(v,vid)
close(v)
implay('newfile3.avi',15)
set(findall(0,'tag','spcui_scope_framework'),'position',[150 150 700 550]);
end

