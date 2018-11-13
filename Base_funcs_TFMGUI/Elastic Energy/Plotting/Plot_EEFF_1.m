function Plot_EEFF_1(totals1,comps1)
%Plotting Routine for Elastic Energy Full Frame One Data Set
figure
plot(comps1,totals1)
title('Energies for Full Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)');
legend('EE','Location','northwest'); 
end

