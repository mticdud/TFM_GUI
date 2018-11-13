function Plot_EEFF_3(totals1,comps1,totals2,comps2,totals3,comps3)
%Plotting Routine for Elastic Energy Full Frame Three Data Sets
figure
plot(comps1,totals1)
title('Energies for Full Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)'); hold on;
plot(comps2,totals2)
plot(comps3,totals3)
legend('EE (Smpl1)','EE (Smpl2)','EE (Smpl3)','Location','northwest'); hold off;
end

