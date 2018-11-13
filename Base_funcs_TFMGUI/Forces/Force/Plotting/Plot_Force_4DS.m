function [roiplot4] = Plot_Force_4DS(comps1,forceX1,forceY1,comps2,forceX2,forceY2,comps3,forceX3,forceY3,comps4,forceX4,forceY4)
%Plotting Routine for Four Datasets Selected
roiplot4 = figure;
plot(comps1,forceX1/1000)
title('Forces for Subset1 of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,forceY1/1000);
plot(comps2,forceX2/1000);
plot(comps2,forceY2/1000);
plot(comps3,forceX3/1000);
plot(comps3,forceY3/1000);
plot(comps4,forceX4/1000);
plot(comps4,forceY4/1000);
legend('Force-X (ROI1)','Force-Y (ROI2)','Force-X (ROI3)','Force-Y (ROI4)','Force-X (ROI5)','Force-Y (ROI6)','Force-X (ROI7)','Force-Y (ROI8)','Location','northwest'); hold off;
end

