function Plot_Mags_1DS_2sub_nodiff(comps1,mags1,mags2)
%Plotting Routine for Magnitudes with One Dataset and Two Subsets Selected
%and with no Difference Selected.
figure;
plot(comps1,mags1)
title('Force Magnitude Difference for One Dataset')
xlabel('Frame #')
ylabel('Force Magnitude (nN)'); hold on
plot(comps1,mags2)
legend('F-Mag (ROI1)','F-Mag (ROI2)','Location','northwest');
end


