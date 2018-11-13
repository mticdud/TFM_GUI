function Plot_MultiDS_EE(comps,subsets,iters)
%Plotting routine for multiple Datasets
if iters == 1
    figure
    plot(comps,subsets)
    title('Energies Subset of Frame (pJ)')
    xlabel('Frame #')
    ylabel('Elastic Energy (pJ)');
    legend('EE (S1)','Location','northwest');
end

if iters == 2
    comps1 = comps(1,:);
    comps2 = comps(2,:);
    subsets1 = subsets(1,:);
    subsets2 = subsets(2,:); 
    
    figure
    plot(comps1,subsets1)
    title('Energies Subset of Frame (pJ)')
    xlabel('Frame #')
    ylabel('Elastic Energy (pJ)'); hold on;
    plot(comps2,subsets2)
    legend('EE (S1)','EE (S2)','Location','northwest');
end

if iters == 3
    comps1 = comps(1,:);
    comps2 = comps(2,:);
    comps3 = comps(2,:);
    subsets1 = subsets(1,:);
    subsets2 = subsets(2,:); 
    subsets3 = subsets(3,:);
    
    figure
    plot(comps1,subsets1)
    title('Energies Subset of Frame (pJ)')
    xlabel('Frame #')
    ylabel('Elastic Energy (pJ)'); hold on;
    plot(comps2,subsets2)
    plot(comps3,subsets3)
    legend('EE (Sample 1)','EE (Sample 2)','EE (Sample 3)','Location','northwest');   
end

if iters == 4
    comps1 = comps(1,:);
    comps2 = comps(2,:);
    comps3 = comps(3,:);
    comps4 = comps(4,:);
    subsets1 = subsets(1,:);
    subsets2 = subsets(2,:); 
    subsets3 = subsets(3,:);
    subsets4 = subsets(4,:);
    
    figure
    plot(comps1,subsets1)
    title('Energies Subset of Frame (pJ)')
    xlabel('Frame #')
    ylabel('Elastic Energy (pJ)'); hold on;
    plot(comps2,subsets2)
    plot(comps3,subsets3)
    plot(comps4,subsets4)
    legend('EE (Sample 1)','EE (Sample 2)','EE (Sample 3)','EE (Sample 4)','Location','northwest');   
end

end

