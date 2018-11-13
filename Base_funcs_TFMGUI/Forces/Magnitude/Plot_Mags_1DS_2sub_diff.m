function Plot_Mags_1DS_2sub_diff(comps1,mags1,mags2)
%Plotting Routine for Magnitudes with One Dataset and Two Subsets Selected
%and with Difference Selected.
figure;
diff1 = abs((mags2/1000)-(mags1/1000));
plot(comps1,diff1)
title('Force Magnitude Difference for One Dataset')
xlabel('Frame #')
ylabel('Force Magnitude (nN)');
legend('F-Mag','Location','northwest');
end

