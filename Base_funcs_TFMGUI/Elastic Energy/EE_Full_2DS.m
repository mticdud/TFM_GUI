function [totals1,totals2,comps1,comps2] = EE_Full_2DS(pixscale,FF,DF,TMnum)
%Function for calculating the elastic energy of full frames for 2 Data Sets
[totals1,comps1] = EE_Full_Base(pixscale,FF{1},DF{1},TMnum{1});
[totals2,comps2] = EE_Full_Base(pixscale,FF{2},DF{2},TMnum{2});
end

