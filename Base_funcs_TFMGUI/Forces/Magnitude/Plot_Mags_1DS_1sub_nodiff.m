function Plot_Mags_1DS_1sub_nodiff(comps,mags)
%Plotting routine for Magnitudes with 1 Dataset, 1 Subset, and no Difference
figure;
plot(comps,mags/1000)
title('Force Magnitude for One Dataset')
xlabel('Frame #')
ylabel('Force Magnitude (nN)');
legend('Force Magnitude','Location','northwest');
end

