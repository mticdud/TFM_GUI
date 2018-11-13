function Plot_Mags_2subnodiff_1DS_PA(comps1,mags1,mags2,start1,end1,start2,end2)
%Plotting Routine for mags, 2subsets, 1DS, no difference selected
figure
plot(comps1,(mags1/1000))
title('Force Magnitudes for Subsets (nN)')
xlabel('Frame #')
ylabel('Magnitude (nN)'); hold on;
plot(comps1,(mags2/1000))
x1 = [start1,end1];
x2 = [start2,end2];
y = get(gca,'YLim');
yUp = y(1);
patch('XData',[x1 fliplr(x1)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2);
patch('XData',[x2 fliplr(x2)],'YData',[yUp yUp y(2) y(2)],'FaceColor','b','FaceAlpha',0.2); hold off;
legend('Mag-Diff X','Mag-Diff Y','Laser on','Location','northwest');
end

