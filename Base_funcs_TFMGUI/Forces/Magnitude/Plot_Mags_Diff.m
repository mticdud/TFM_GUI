function [MagDiffPlot] = Plot_Mags_Diff(comps,mags,mags1)
%Plotting Routine for Mags Difference
newMags = abs(mags1/1000-mags/1000);
MagDiffPlot = figure;
plot(comps,newMags)
title('Force Magnitude Difference for Subset of Frame (nN)')
xlabel('Frame #')
ylabel('Force Magnitude Difference (nN)');
legend('F-Mag Difference','Location','northwest');
end

