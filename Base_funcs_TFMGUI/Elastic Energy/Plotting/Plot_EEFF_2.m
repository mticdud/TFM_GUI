function Plot_EEFF_2(totals1,comps1,totals2,comps2)
%Plotting Routine for Elastic Energy Full Frame Two Data Sets
figure
plot(comps1,totals1)
title('Energies for Full Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)'); hold on;
plot(comps2,totals2)
legend('EE (Smpl1)','EE (Smpl2)','Location','northwest'); hold off;
end


