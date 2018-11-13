function [ForcePlot4] = Plot_F_4DS_ND(comps1,forceX1,forceY1,forceX2,forceY2,...
                              comps2,forceX3,forceY3,forceX4,forceY4,...
                              comps3,forceX5,forceY5,forceX6,forceY6,...
                              comps4,forceX7,forceY7,forceX8,forceY8)
%Plotting Routine for Force with Two Datasets and Difference not Selected
ForcePlot4 = figure;
plot(comps1,forceX1/1000)
title('Forces Difference for ROI Subsets of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,forceY1/1000);
plot(comps1,forceX2/1000);
plot(comps1,forceY2/1000);
plot(comps2,forceX3/1000)
plot(comps2,forceY3/1000);
plot(comps2,forceX4/1000);
plot(comps2,forceY4/1000);
plot(comps3,forceX5/1000)
plot(comps3,forceY5/1000);
plot(comps3,forceX6/1000);
plot(comps3,forceY6/1000);
plot(comps4,forceX7/1000)
plot(comps4,forceY7/1000);
plot(comps4,forceX8/1000);
plot(comps4,forceY8/1000);
legend('Force-X (Smpl1,ROI1)','Force-Y (Smpl1,ROI1)','Force-X (Smpl2,ROI1)',...
        'Force-Y (Smpl2,ROI1)','Force-X (Smpl2,ROI1)','Force-Y (Smpl2,ROI1)',...
        'Force-X (Smpl2,ROI2)','Force-Y (Smpl2,ROI2)','Force-X (Smpl2,ROI2)',...
        'Force-Y (Smpl2,ROI2)','Force-X (Smpl2,ROI2)','Force-Y (Smpl2,ROI2)',...
        'Force-X (Smpl1,ROI1)','Force-Y (Smpl1,ROI1)','Force-X (Smpl2,ROI1)',...
        'Force-Y (Smpl2,ROI1)','Location','northwest'); hold off;
end
