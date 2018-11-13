function Plot_EE_FF_1DS_PA(totals,comps,start1,end1,start2,end2)
%Plotting routine for elastic energy full frame one data set with PA
figure
plot(comps,totals)
title('Elastic Energy of Full Frame (pJ)')
xlabel('Frame #')
ylabel('Elastic Energy (pJ)'); hold on;
x1 = [start1,end1];
x2 = [start2,end2];
y = get(gca,'YLim');
yUp = y(1);
patch('XData',[x1 fliplr(x1)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2);
patch('XData',[x2 fliplr(x2)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2); hold off;
legend('EE (S1)','Laser on','Location','northwest');
end

