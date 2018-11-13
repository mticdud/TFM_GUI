function Plotting_EE_1DS(comps,subsets)
figure
plot(comps,subsets)
title('Energies Subset of Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)');
legend('EE (S1)','Location','northwest');
end

