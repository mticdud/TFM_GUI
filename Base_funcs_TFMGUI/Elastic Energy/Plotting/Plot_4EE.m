function Plot_4EE(comps1,subsets1,comps2,subsets2,comps3,subsets3,comps4,subsets4)
%Inefficient Plotting Routine Until I can Figure Out a Better Way
figure
plot(comps1,subsets1)
title('Energies Subset of Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)'); hold on;
plot(comps2,subsets2)
plot(comps3,subsets3)
plot(comps4,subsets4)
legend('EE (Sample 1)','EE (Sample 2)','EE (Sample 3)','EE (Sample 4)','Location','northwest'); 
end

