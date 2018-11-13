function [totals1,totals2,comps1,comps2,totals3,comps3,totals4,comps4] = EE_Full_4DS(pixscale,FF,DF,TMnum)
%Function for calculating the elastic energy of full frames for 4 Data Sets
[totals1,comps1] = EE_Full_Base(pixscale,FF{1},DF{1},TMnum{1});
[totals2,comps2] = EE_Full_Base(pixscale,FF{2},DF{2},TMnum{2});
[totals3,comps3] = EE_Full_Base(pixscale,FF{3},DF{3},TMnum{3});
[totals4,comps4] = EE_Full_Base(pixscale,FF{4},DF{4},TMnum{4});
end
