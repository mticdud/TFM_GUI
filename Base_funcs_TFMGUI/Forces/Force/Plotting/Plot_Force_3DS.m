function [roiplot3] = Plot_Force_3DS(comps1,forceX1,forceY1,comps2,forceX2,forceY2,comps3,forceX3,forceY3)
%Plotting Routine for Three Datasets Selected
roiplot3 = figure;
plot(comps1,forceX1/1000)
title('Forces for Subset1 of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,forceY1/1000);
plot(comps2,forceX2/1000);
plot(comps2,forceY2/1000);
plot(comps3,forceX3/1000);
plot(comps3,forceY3/1000);
legend('Force-X (ROI1)','Force-Y (ROI2)','Force-X (ROI3)','Force-Y (ROI4)','Force-X (ROI5)','Force-Y (ROI6)','Location','northwest'); hold off;
end

