function Plot_EEFF_4(totals1,comps1,totals2,comps2,totals3,comps3,totals4,comps4)
%Plotting Routine for Elastic Energy Full Frame Four Data Sets
figure
plot(comps1,totals1)
title('Energies for Full Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)'); hold on;
plot(comps2,totals2)
plot(comps3,totals3)
plot(comps4,totals4)
legend('EE (Smpl1)','EE (Smpl2)','EE (Smpl3)','EE (Smpl4)','Location','northwest'); hold off;
end

