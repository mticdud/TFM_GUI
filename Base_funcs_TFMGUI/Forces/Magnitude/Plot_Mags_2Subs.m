function [magplot,magplot1] = Plot_Mags_2Subs(comps1,mags1,comps,mags)
%Plotting Routine for Two Subsets Selected
magplot = figure;
plot(comps,mags/1000)
title('Force Magnitude for Subset of Frame (nN)')
xlabel('Frame #')
ylabel('Force Magnitude (nN)');
legend('Force Magnitude','Location','northwest');

magplot1 = figure;
plot(comps1,mags1/1000);
title('Force Magnitude for Subset of Frame (nN)')
xlabel('Frame #')
ylabel('Force Magnitude (nN)');
legend('Force Magnitude','Location','northwest');
end

