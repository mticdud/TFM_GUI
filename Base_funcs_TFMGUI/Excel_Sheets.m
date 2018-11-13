function Excel_Sheets(E,F,M,totals1,subsets,mags,mags1,forceX,forceY,forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
%Writing routine for excel spreadsheets based on data and selections

if M == 0 && F == 0 %only EE selected
    if E == 1 %FF
        Data = cat(2,nums,totals1);
        col_header={'Frame Num','Elastic Energy'};
        xlswrite('Data.xls',Data,'Sheet1','A2');
        xlswrite('Data.xls',col_header,'Sheet1','A1');
    end
    if E == 2 %Subsets
        Dataint = subsets;
        Dataint2 = reshape(Dataint,[sizes,1]);
        Data = cat(2,nums,Dataint2);
        col_header={'Frame Num','Elastic Energy'};
        xlswrite('Data.xls',Data,'Sheet1','A2');
        xlswrite('Data.xls',col_header,'Sheet1','A1');
    end
end

if E == 0 %No EE
    if F == 1
        if M == 1
            FFXint = forceX/1000;
            FFX = reshaped(FFXint,[sizes,1]);
            FFYint = forceY/1000;
            FFY = reshaped(FFYint,[sizes,1]);
            Magint = mags/1000;
            Mag = reshaped(Magint,[sizes,1]);
            Data = cat(2,nums,FFX,FFY,Mag);
            col_header={'Frame Num','Force-X','Force-Y','Force Magnitude'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 0
            FFXint = forceX/1000;
            FFX = reshaped(FFXint,[sizes,1]);
            FFYint = forceY/1000;
            FFY = reshaped(FFYint,[sizes,1]);
            Data = cat(2,nums,FFX,FFY);
            col_header={'Frame Num','Force-X','Force-Y'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
    end
    if F == 2 %no diff
        if M == 2
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            Data = cat(2,nums,FFX1,FFY1,FFX2,FFY2,mag1,mag2);
            col_header={'Frame Num','Force-X ROI1','Force-Y ROI1','Force-X ROI2',...
                'Force-Y ROI2','Force Magnitude ROI1','Force Magnitude ROI2'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');  
        end
        if M == 3
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            magdiffint = abs(mag2int)-abs(mag1int);
            magdiff = reshape(magdiffint,[sizes,1]);
            Data = cat(2,nums,FFX1,FFY1,FFX2,FFY2,mag1,mag2,magdiff);
            col_header={'Frame Num','Force-X ROI1','Force-Y ROI1','Force-X ROI2',...
                'Force-Y ROI2','Force Magnitude ROI1','Force Magnitude ROI2','Magnitude Difference'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');     
        end
        if M == 0
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            Data = cat(2,nums,FFX1,FFY1,FFX2,FFY2);
            col_header={'Frame Num','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2',};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');           
        end
    end
    if F == 3 %diffs
        if M == 2
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            Data = cat(2,nums,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif,mag1,mag2);
            col_header={'Frame Num','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y',...
                'Force Magnitude ROI1','Force Magnitude ROI2'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 3
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            magdiffint = abs(mag2int)-abs(mag1int);
            magdiff = reshape(magdiffint,[sizes,1]);
            Data = cat(2,nums,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif,mag1,mag2,magdiff);
            col_header={'Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y',...
                'Force Magnitude ROI1','Force Magnitude ROI2','Magnitude Difference'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 0
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            Data = cat(2,nums,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif);
            col_header={'Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');            
        end
    end
end

if E == 1 %FF
    if F == 1
        if M == 1
            EEint = totals1;
            EE = reshape(EEint,[sizes,1]);
            FFXint = forceX/1000;
            FFX = reshape(FFXint,[sizes,1]);
            FFYint = forceY/1000;
            FFY = reshape(FFYint,[sizes,1]);
            Magint = mags/1000;
            mag = reshape(Magint,[sizes,1]);
            Data = cat(2,nums,EE,FFX,FFY,mag);
            col_header={'Frame Num','Elastic Energy','Force-X','Force-Y','Force Magnitude'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 0
            EEint = totals1;
            EE = reshape(EEint,[sizes,1]);
            FFXint = forceX/1000;
            FFX = reshape(FFXint,[sizes,1]);
            FFYint = forceY/1000;
            FFY = reshape(FFYint,[sizes,1]);
            Data = cat(2,nums,EE,FFX,FFY);
            col_header={'Frame Num','Elastic Energy','Force-X','Force-Y'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
    end
    if F == 2 %no diff
        if M == 2
            EEint = totals1;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,mag1,mag2);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Magnitude ROI1','Force Magnitude ROI2'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');            
        end
        if M == 3
            EEint = totals1;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            magdiffint = abs(mags2/1000)-abs(mags1/1000);
            magdiff = reshape(magdiffint,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,mag1,mag2,magdiff);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Magnitude ROI1',...
                'Force Magnitude ROI2','Magnitude Difference'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');            
        end
        if M == 0
            EEint = totals1;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2',};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');            
        end
    end
    if F == 3 %diffs
        if M == 2
            EEint = totals1;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif,mag1,mag2);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y',...
                'Force Magnitude ROI1','Force Magnitude ROI2'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');  
        end
        if M == 3
            EEint = totals1;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            magdiffint = abs(mags2/1000)-abs(mags1/1000);
            magdiff = reshape(magdiffint,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif,mag1,mag2,magdiff);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y',...
                'Force Magnitude ROI1','Force Magnitude ROI2','Magnitude Difference'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 0
            EEint = totals1;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');            
        end
    end
end

if E == 2 %subset
    if F == 1
        if M == 1
            EEint = subsets;
            EE = reshape(EEint,[sizes,1]);
            FFXint = forceX/1000;
            FFX = reshape(FFXint,[sizes,1]);
            FFYint = forceY/1000;
            FFY = reshape(FFYint,[sizes,1]);
            Magint = mags/1000;
            Mag = reshape(Magint,[sizes,1]);
            Data = cat(2,nums,EE,FFX,FFY,Mag);
            col_header={'Frame Num','Elastic Energy (pJ)','Force-X (nN)','Force-Y (nN)','Force Magnitude (nN)'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 0
            EEint = subsets;
            EE = reshape(EEint,[sizes,1]);
            FFXint = forceX/1000;
            FFX = reshape(FFXint,[sizes,1]);
            FFYint = forceY/1000;
            FFY = reshape(FFYint,[sizes,1]);
            Data = cat(2,nums,EE,FFX,FFY);
            col_header={'Frame Num','Elastic Energy (pJ)','Force-X (nN)','Force-Y (nN)'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
    end
    if F == 2 %no diff
        if M == 2
            EEint = subsets;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,mag1,mag2);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Magnitude ROI1','Force Magnitude ROI2'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 3
            EEint = subsets;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);
            magdiffint = abs(mags2/1000)-abs(mags1/1000);
            magdiff = reshape(magdiffint,[sizes,1]);     
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,mag1,mag2,magdiff);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Magnitude ROI1',...
                'Force Magnitude ROI2','Magnitude Difference'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 0
            EEint = subsets;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
    end
    if F == 3 %diffs
        if M == 2
            EEint = subsets;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);         
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif,mag1,mag2);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y'...
                'Force Magnitude ROI1','Force Magnitude ROI2'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 3
            EEint = subsets;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            mag1int = mags1/1000;
            mag1 = reshape(mag1int,[sizes,1]);
            mag2int = mags2/1000;
            mag2 = reshape(mag2int,[sizes,1]);         
            magdiffint = abs(mags2/1000)-abs(mags1/1000);
            magdiff = reshape(magdiffint,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif,mag1,mag2,magdiff); 
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y'...
                'Force Magnitude ROI1','Force Magnitude ROI2','Magnitude Difference'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
        if M == 0
            EEint = subsets;
            EE = reshape(EEint,[sizes,1]);
            FFX1int = forceX1/1000;
            FFX1 = reshape(FFX1int,[sizes,1]);
            FFY1int = forceY1/1000;
            FFY1 = reshape(FFY1int,[sizes,1]);
            FFX2int = forceX2/1000;
            FFX2 = reshape(FFX2int,[sizes,1]);
            FFY2int = forceY2/1000;
            FFY2 = reshape(FFY2int,[sizes,1]);
            FXdifint = abs(forceX2/1000)-abs(forceX1/1000);
            FXdif = reshape(FXdifint,[sizes,1]);
            FYdifint = abs(forceY2/1000)-abs(forceY1/1000);
            FYdif = reshape(FYdifint,[sizes,1]);
            Data = cat(2,nums,EE,FFX1,FFY1,FFX2,FFY2,FXdif,FYdif);
            col_header={'Frame Num','Elastic Energy','Force-X ROI1','Force-Y ROI1',...
                'Force-X ROI2','Force-Y ROI2','Force Diff-X','Force Diff-Y'};
            xlswrite('Data.xls',Data,'Sheet1','A2');
            xlswrite('Data.xls',col_header,'Sheet1','A1');
        end
    end
end
end
