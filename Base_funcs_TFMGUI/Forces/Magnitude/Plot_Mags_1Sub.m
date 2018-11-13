function [magplot] = Plot_Mags_1Sub(comps,mags)
%Base Function for Plotting Magnitudes
magplot = figure;
plot(comps,mags/1000)
title('Force Magnitude for Subset of Frame (nN)')
xlabel('Frame #')
ylabel('Force Magnitude (nN)');
legend('Force Magnitude','Location','northwest');
end

