function Plot_Mags_3DS_1sub_nodiff(comps1,mags1,comps2,mags2,comps3,mags3)
%Plotting routine for Magnitudes with 1 Dataset, 1 Subset, and no Difference
figure;
plot(comps1,mags1/1000)
title('Force Magnitude for Three Datasets')
xlabel('Frame #')
ylabel('Force Magnitude (nN)'); hold on
plot(comps2,mags2/1000)
plot(comps3,mags3/1000)
legend('F-Mag (Smpl1)','F-Mag (Smpl2)','F-Mag (Smpl3)','Location','northwest');
end