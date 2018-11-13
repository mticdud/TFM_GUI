function Plot_Mags_2DS_1sub_nodiff(comps1,mags1,comps2,mags2)
%Plotting routine for Magnitudes with 1 Dataset, 1 Subset, and no Difference
figure;
plot(comps1,mags1/1000)
title('Force Magnitude for Two Datasets')
xlabel('Frame #')
ylabel('Force Magnitude (nN)'); hold on
plot(comps2,mags2/1000)
legend('F-Mag (Smpl1)','F-Mag (Smpl2)','Location','northwest');
end

