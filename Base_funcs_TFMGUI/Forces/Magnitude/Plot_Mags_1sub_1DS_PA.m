function Plot_Mags_1sub_1DS_PA(comps,mags,start1,end1,start2,end2)
%Plotting Routine for mags, 1 subset, 1DS, no difference selected
figure
plot(comps,(mags/1000))
title('Force Magnitudes for Subset (nN)')
xlabel('Frame #')
ylabel('Magnitude (nN)'); hold on;
x1 = [start1,end1];
x2 = [start2,end2];
y = get(gca,'YLim');
yUp = y(1);
patch('XData',[x1 fliplr(x1)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2);
patch('XData',[x2 fliplr(x2)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2); hold off;
legend('Force Magnitude','Laser on','Location','northwest');
end

