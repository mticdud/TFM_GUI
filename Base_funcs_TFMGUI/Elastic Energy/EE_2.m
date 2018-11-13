function [comps1,subsets1,comps2,subsets2] = EE_2(pixscale,FF,DF,TMnum)
%Calculating Elastic Energy for 2 Datasets
disp('Selecting Elastic Energy for First Subset')
[comps,subsets] = EE_Sub_base(pixscale,FF{1},DF{1},TMnum{1});
[comps1,subsets1] = deal(comps,subsets);
disp('Selecting Elastic Energy for Second Subset')
[comps,subsets] = EE_Sub_base(pixscale,FF{2},DF{2},TMnum{2});
[comps2,subsets2] = deal(comps,subsets);
end

