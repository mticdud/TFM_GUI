function Plot_F_2sub_1DS_2ROIdif_PA(forceX1,forceY1,forceX2,forceY2,comps1,start1,end1,start2,end2)
%Plotting routine for Force with one subset and 2 ROI select and diffs
diffx = (abs(forceX2)-abs(forceX1))/1000;
diffy = (abs(forceY2)-abs(forceY1))/1000;
figure
plot(comps1,diffx)
title('Force Difference for Subsets (nN)')
xlabel('Frame #')
ylabel('Force (nN)'); hold on;
plot(comps1,diffy)
x1 = [start1,end1];
x2 = [start2,end2];
y = get(gca,'YLim');
yUp = y(1);
patch('XData',[x1 fliplr(x1)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2);
patch('XData',[x2 fliplr(x2)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2); hold off;
legend('Force (X)','Force (Y)','Laser on','Location','northwest');
end

