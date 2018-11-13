function Plot_Mags_4DS_2sub_nodiff(comps1,mags1,mags2,comps3,mags3,mags4,...
                                   comps5,mags5,mags6,comps7,mags7,mags8)
%Plotting Routine for Magnitudes with Four Datasets and Two Subsets Selected
%and with no Difference Selected.
figure;
plot(comps1,mags1)
title('Force Magnitude Difference for Four Datasets')
xlabel('Frame #')
ylabel('Force Magnitude (nN)'); hold on
plot(comps1,mags2)
plot(comps3,mags3)
plot(comps3,mags4)
plot(comps5,mags5)
plot(comps5,mags6)
plot(comps7,mags7)
plot(comps7,mags8)
legend('F-Mag (Smpl1-ROI1)','F-Mag (smpl1-ROI2)','F-Mag (Smpl2-ROI1)',...
        'F-Mag (smpl2-ROI2)','F-Mag (Smpl3-ROI1)','F-Mag (smpl3-ROI2)',...
        'F-Mag (Smpl4-ROI1)','F-Mag (smpl4-ROI2)','Location','northwest');
end

