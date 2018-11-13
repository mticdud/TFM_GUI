function Plot_F_1sub_1DS_PA(forceX,forceY,comps,start1,end1,start2,end2)
%Plotting routine for Force with one subset
figure
plot(comps,forceX)
title('Energies for Subset of Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)'); hold on;
plot(comps,forceY)
x1 = [start1,end1];
x2 = [start2,end2];
y = get(gca,'YLim');
yUp = y(1);
patch('XData',[x1 fliplr(x1)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2);
patch('XData',[x2 fliplr(x2)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2); hold off;
legend('Force (S1-X)','Force (S1-Y)','Laser on','Location','northwest');
end
