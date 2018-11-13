function [roi1plot,roi2plot] = Plotting_Force_Multi(comps1,forceX1,forceY1,comps,forceX,forceY)
%Plotting Routine for Two Subsets Selected
roi1plot = figure;
plot(comps1,forceX1/1000)
title('Forces for Subset1 of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,forceY1/1000); 
legend('Force-X (ROI1)','Force-Y (ROI2)','Location','northwest'); hold off;

roi2plot = figure;
plot(comps,forceX/1000);
title('Forces for Subset2 of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps,forceY/1000)
legend('Force-X (ROI3)','Force-Y (ROI4)','Location','northwest');
end

