function [ForceDiffPlot] = Plot_ForceDiffs(comps1,forceX1,forceY1,forceX2,forceY2)
%Plotting Routine for Force Differences with two subsets selected
[newX,newY] = deal(abs(forceX2)-abs(forceX1),abs(forceY2)-abs(forceY1));
ForceDiffPlot = figure;
plot(comps1,newX/1000)
title('Forces Difference for ROI Subsets of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,newY/1000); 
legend('Force Diff-X','Force Diff-Y','Location','northwest'); hold off;
end

