function [Force1Subplot] = Plot_Force_1Sub(comps,forceX,forceY)
%Plotting Routine for Force with One Subset Selected
Force1Subplot = figure;
plot(comps,forceX/1000)
title('Forces for Subset of Frame (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps,forceY/1000); 
legend('Force-X','Force-Y','Location','northwest'); hold off;
end

