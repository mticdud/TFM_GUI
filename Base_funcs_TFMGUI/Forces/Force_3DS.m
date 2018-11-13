function [comps1,mags1,forceX1,forceY1,comps2,mags2,forceX2,forceY2,comps3,mags3,forceX3,forceY3] = Force_3DS(pixscale,FF,DF,TMnum)
%Force Calculation for 3 Datasets
disp('Selecting Force Subsets')
[mags,comps,forceX,forceY] = Force_Sub_base(pixscale,FF{1},DF{1},TMnum{1});
[mags1,comps1,forceX1,forceY1] = deal(mags,comps,forceX,forceY);
[mags,comps,forceX,forceY] = Force_Sub_base(pixscale,FF{2},DF{2},TMnum{2});
[mags2,comps2,forceX2,forceY2] = deal(mags,comps,forceX,forceY);
[mags,comps,forceX,forceY] = Force_Sub_base(pixscale,FF{3},DF{3},TMnum{3});
[mags3,comps3,forceX3,forceY3] = deal(mags,comps,forceX,forceY);
end

