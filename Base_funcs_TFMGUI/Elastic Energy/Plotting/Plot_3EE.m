function Plot_3EE(comps1,subsets1,comps2,subsets2,comps3,subsets3)
%Plotting Routine for 2 DS EE
figure
plot(comps1,subsets1)
title('Energies Subset of Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)'); hold on;
plot(comps2,subsets2)
plot(comps3,subsets3)
legend('EE (Sample 1)','EE (Sample 2)','EE (Sample 3)','Location','northwest');
end

