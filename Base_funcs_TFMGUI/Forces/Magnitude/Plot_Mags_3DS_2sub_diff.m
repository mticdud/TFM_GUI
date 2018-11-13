function Plot_Mags_3DS_2sub_diff(comps1,mags1,mags2,comps3,mags3,mags4,...
                                    comps5,mags5,mags6)
%Plotting Routine for Magnitudes with Three Datasets and Two Subsets Selected
%and with Difference Selected.
figure;
diff1 = abs((mags2/1000)-(mags1/1000));
diff2 = abs((mags3/1000)-(mags4/1000));
diff3 = abs((mags5/1000)-(mags6/1000));
plot(comps1,diff1)
title('Force Magnitude Difference for Three Datasets')
xlabel('Frame #')
ylabel('Force Magnitude (nN)'); hold on
plot(comps3,diff2)
plot(comps5,diff3)
legend('F-Mag (Smpl1)','F-Mag (Smpl2)','F-Mag (Smpl3)','Location','northwest');
end

