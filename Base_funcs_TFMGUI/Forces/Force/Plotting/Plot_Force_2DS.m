function [roi1plot] = Plot_Force_2DS(comps1,forceX1,forceY1,comps2,forceX2,forceY2)
%Plotting Routine for Two Datasets Selected
roi1plot = figure;
plot(comps1,forceX1/1000)
title('Forces for Subset1 of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,forceY1/1000);
plot(comps2,forceX2/1000);
plot(comps2,forceY2/1000);
legend('Force-X (ROI1)','Force-Y (ROI2)','Force-X (ROI3)','Force-Y (ROI4)','Location','northwest'); hold off;
end

