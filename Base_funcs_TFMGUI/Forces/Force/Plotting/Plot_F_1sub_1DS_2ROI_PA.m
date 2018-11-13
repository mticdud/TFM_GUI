function Plot_F_1sub_1DS_2ROI_PA(forceX1,forceY1,forceX2,forceY2,comps1,start1,end1,start2,end2)
%Plotting routine for Force with one subset and 2 ROI selection
figure
plot(comps1,forceX1/1000)
title('Force for Subsets (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,forceY1/1000)
plot(comps1,forceX2/1000)
plot(comps1,forceY2/1000)
x1 = [start1,end1];
x2 = [start2,end2];
y = get(gca,'YLim');
yUp = y(1);
patch('XData',[x1 fliplr(x1)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2);
patch('XData',[x2 fliplr(x2)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2); hold off;
legend('Force (S1-X)','Force (S1-Y)','Force (S2-X)','Force (S2-Y)','Laser on','Location','northwest');
end

