function [ForceDiffPlot2] = Plot_F_2DS_2Sub(comps1,forceX1,forceY1,comps2,forceX2,...
                            forceY2,comps3,forceX3,forceY3,comps4,forceX4,forceY4)
%Plotting Routine for Force with Two Datasets and Two Subsets Selected
[newX1,newY1] = deal(abs(forceX2)-abs(forceX1),abs(forceY2)-abs(forceY1));
[newX2,newY2] = deal(abs(forceX4)-abs(forceX3),abs(forceY4)-abs(forceY3));
ForceDiffPlot2 = figure;
plot(comps1,newX1/1000)
title('Forces Difference for ROI Subsets of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,newY1/1000);
plot(comps3,newX2/1000);
plot(comps3,newY2/1000);
legend('Force Diff-X (Sample 1)','Force Diff-Y (Sample 1)','Force Diff-X (Sample 2)',...
        'Force Diff-Y (Sample 2)','Location','northwest'); hold off;
end

