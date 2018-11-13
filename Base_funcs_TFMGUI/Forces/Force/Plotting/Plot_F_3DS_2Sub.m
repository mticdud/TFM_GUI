function [ForceDiffPlot3] = Plot_F_3DS_2Sub(comps1,forceX1,forceY1,comps2,forceX2,...
                                    forceY2,comps3,forceX3,forceY3,comps4,forceX4,forceY4,...
                                    comps5,forceX5,forceY5,comps6,forceX6,forceY6)
%Plotting Routine for Force with Two Datasets and Two Subsets Selected
[newX1,newY1] = deal(abs(forceX2)-abs(forceX1),abs(forceY2)-abs(forceY1));
[newX2,newY2] = deal(abs(forceX4)-abs(forceX3),abs(forceY4)-abs(forceY3));
[newX3,newY3] = deal(abs(forceX6)-abs(forceX5),abs(forceY6)-abs(forceY5));
ForceDiffPlot3 = figure;
plot(comps1,newX1/1000)
title('Forces Difference for ROI Subsets of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,newY1/1000);
plot(comps3,newX2/1000);
plot(comps3,newY2/1000);
plot(comps5,newX3/1000);
plot(comps5,newY3/1000);
legend('Force Diff-X (Sample 1)','Force Diff-Y (Sample 1)','Force Diff-X (Sample 2)',...
        'Force Diff-Y (Sample 2)','Force Diff-X (Sample 3)',...
        'Force Diff-Y (Sample 3)','Location','northwest'); hold off;
end

