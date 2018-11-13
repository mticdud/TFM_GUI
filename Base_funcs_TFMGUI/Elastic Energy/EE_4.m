function [comps1,subsets1,comps2,subsets2,comps3,subsets3,comps4,subsets4] = EE_4(pixscale,FF,DF,TMnum)
%Calculating Elastic Energy for 3 Datasets
disp('Selecting Elastic Energy for First Subset')
[comps,subsets] = EE_Sub_base(pixscale,FF{1},DF{1},TMnum{1});
[comps1,subsets1] = deal(comps,subsets);
disp('Selecting Elastic Energy for Second Subset')
[comps,subsets] = EE_Sub_base(pixscale,FF{2},DF{2},TMnum{2});
[comps2,subsets2] = deal(comps,subsets);
disp('Selecting Elastic Energy for Third Subset')
[comps,subsets] = EE_Sub_base(pixscale,FF{3},DF{3},TMnum{3});
[comps3,subsets3] = deal(comps,subsets);
disp('Selecting Elastic Energy for Fourth Subset')
[comps,subsets] = EE_Sub_base(pixscale,FF{4},DF{4},TMnum{4});
[comps4,subsets4] = deal(comps,subsets);
end

