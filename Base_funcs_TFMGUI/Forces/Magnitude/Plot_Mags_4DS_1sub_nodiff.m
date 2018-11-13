function Plot_Mags_4DS_1sub_nodiff(comps1,mags1,comps2,mags2,comps3,mags3,comps4,mags4)
%Plotting routine for Magnitudes with 4 Datasets, 1 Subset, and no Difference
figure;
plot(comps1,mags1/1000)
title('Force Magnitude for Four Datasets')
xlabel('Frame #')
ylabel('Force Magnitude (nN)'); hold on
plot(comps2,mags2/1000)
plot(comps3,mags3/1000)
plot(comps4,mags4/1000)
legend('F-Mag (Smpl1)','F-Mag (Smpl2)','F-Mag (Smpl3)','F-Mag (Smpl4)','Location','northwest');
end

