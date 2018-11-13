function [ForcePlot2] = Plot_F_2DS_ND(comps1,forceX1,forceY1,forceX2,forceY2,...
                                    comps2,forceX3,forceY3,forceX4,forceY4)
%Plotting Routine for Force with Two Datasets and Difference not Selected
ForcePlot2 = figure;
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
legend('Force-X (Smpl1,ROI1)','Force-Y (Smpl1,ROI1)','Force-X (Smpl2,ROI1)',...
        'Force-Y (Smpl2,ROI1)','Force-X (Smpl2,ROI1)','Force-Y (Smpl2,ROI1)',...
        'Force-X (Smpl2,ROI2)','Force-Y (Smpl2,ROI2)','Location','northwest'); hold off;
end

