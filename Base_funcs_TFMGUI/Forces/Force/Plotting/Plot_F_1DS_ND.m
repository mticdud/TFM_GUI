function [ForcePlot1] = Plot_F_1DS_ND(comps1,forceX1,forceY1,forceX2,forceY2)
%Plotting Routine for Force with One Dataset and Difference not Selected
ForcePlot1 = figure;
plot(comps1,forceX1/1000)
title('Forces for ROI Subsets of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,forceY1/1000);
plot(comps1,forceX2/1000);
plot(comps1,forceY2/1000);
legend('Force-X (Smpl1,ROI1)','Force-Y (Smpl1,ROI1)','Force-X (Smpl1,ROI2)',...
        'Force-Y (Smpl1,ROI2)','Location','northwest'); hold off;
end

