function [comps1,mags1,forceX1,forceY1,comps2,mags2,forceX2,forceY2] = Force_2DS(pixscale,FF,DF,TMnum)
%Force Calculation for 2 Datasets
disp('Selecting Force Subsets')
[mags1,comps1,forceX1,forceY1] = Force_Sub_base(pixscale,FF{1},DF{1},TMnum{1});
[mags2,comps2,forceX2,forceY2] = Force_Sub_base(pixscale,FF{2},DF{2},TMnum{2});
end

