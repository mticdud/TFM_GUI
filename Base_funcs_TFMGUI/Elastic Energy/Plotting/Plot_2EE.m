function Plot_2EE(comps1,subsets1,comps2,subsets2)
%Plotting Routine for 2 DS EE
figure
plot(comps1,subsets1)
title('Energies Subset of Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)'); hold on;
plot(comps2,subsets2)
legend('EE (Sample 1)','EE (Sample 2)','Location','northwest'); 
end

