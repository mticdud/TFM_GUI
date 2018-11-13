function Plot_Mags_2DS_2sub_nodiff(comps1,mags1,mags2,comps3,mags3,mags4)
%Plotting Routine for Magnitudes with Two Datasets and Two Subsets Selected
%and with no Difference Selected.
figure;
plot(comps1,mags1)
title('Force Magnitude Difference for Two Datasets')
xlabel('Frame #')
ylabel('Force Magnitude (nN)'); hold on
plot(comps1,mags2)
plot(comps3,mags3)
plot(comps3,mags4)
legend('F-Mag (Smpl1-ROI1)','F-Mag (smpl1-ROI2)','F-Mag (Smpl2-ROI1)',...
        'F-Mag (smpl2-ROI2)','Location','northwest');
end


