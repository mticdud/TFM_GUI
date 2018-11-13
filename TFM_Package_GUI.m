function varargout = TFM_Package_GUI(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TFM_Package_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @TFM_Package_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function TFM_Package_GUI_OpeningFcn(hObject, ~, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = TFM_Package_GUI_OutputFcn(~, ~, handles) 
varargout{1} = handles.output;

%-----------------------------------------------------------------------------------------------
% Main Checkboxes:
function cb_EE_Callback(hObject, ~, ~)
if (get(hObject,'Value') == get(hObject,'Max'))
	disp('Elastic Energy Analysis Selected');
end

function cb_Force_Callback(hObject, ~, ~)
if (get(hObject,'Value') == get(hObject,'Max'))
	disp('Force Analysis Selected');
end

function cbMags_Callback(hObject, ~, ~)
if (get(hObject,'Value') == get(hObject,'Max'))
	disp('Magnitude Analysis Selected');
end

%----------------------------------------------------------------------------------------------
%Secondary Checkboxes:
function cbEE_FF_Callback(hObject, ~, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.cbEE_Sub,'Enable','off')
end

function cbEE_Sub_Callback(hObject, ~, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.cbEE_FF,'Enable','off')
end

function cb_Force_1Sub_Callback(hObject, ~, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.cb_Force_2Sub,'Enable','off')
    set(handles.cb_Force_Diff,'Enable','off')
    set(handles.cb_Mags_2Subs,'Enable','off')
    set(handles.cb_Mag_Diff,'Enable','off')
    disp('Force for One Subset');
end

function cb_Force_Diff_Callback(hObject, ~, ~)
if (get(hObject,'Value') == get(hObject,'Max'))
    disp('Force Difference Between Two Subsets');
end

function cb_Force_2Sub_Callback(hObject, ~, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.cb_Force_1Sub,'Enable','off')
    set(handles.cbMags_1sub,'Enable','off')
    disp('Forces of Two Subsets');
end

function cbMags_1sub_Callback(hObject, ~, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.cb_Mags_2Subs,'Enable','off')
    set(handles.cb_Mag_Diff,'Enable','off')
    set(handles.cb_Force_2Sub,'Enable','off')
    set(handles.cb_Force_Diff,'Enable','off')
    disp('Force Magnitude of One Subset');
end

function cb_Mags_2Subs_Callback(hObject, ~, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.cbMags_1sub,'Enable','off')
    set(handles.cb_Force_1Sub,'Enable','off')
    disp('Force Magnitude of Two Subsets');
end

function cb_Mag_Diff_Callback(hObject, ~, ~)
if (get(hObject,'Value') == get(hObject,'Max'))
    disp('Difference in Force Magnitude Between Two Subsets');
end

%---------------------------------------------------------------------------------------------
%Listboxes:
function lbFFFile_Callback(~, ~, ~)

function lbFFFile_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function lbCDFfile_Callback(~, ~, ~)

function lbCDFfile_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function lbTMfile_Callback(~, ~, ~)

function lbTMfile_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function lb_PAfiles_Callback(~, ~, ~)

function lb_PAfiles_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%------------------------------------------------------------------------------------------
%Radio Buttons:
function rb_Export_Callback(hObject, ~, ~)

%--------------------------------------------------------------------------------------------
%Pushbuttons:
function pb_reset_Callback(~, ~, handles)
set(handles.cb_Force_1Sub,'Value',0)
set(handles.cbMags_1sub,'Value',0)
set(handles.cb_Force_2Sub,'Value',0)
set(handles.cb_Force_Diff,'Value',0)
set(handles.cb_Mags_2Subs,'Value',0)
set(handles.cb_EE,'Value',0)
set(handles.cbEE_FF,'Value',0)
set(handles.cbEE_Sub,'Value',0)
set(handles.cb_Force,'Value',0)
set(handles.cbMags,'Value',0)
set(handles.cb_Mag_Diff,'Value',0)
set(handles.cb_Force_1Sub,'Enable','on')
set(handles.cbMags_1sub,'Enable','on')
set(handles.cb_Force_2Sub,'Enable','on')
set(handles.cb_Force_Diff,'Enable','on')
set(handles.cb_Mags_2Subs,'Enable','on')
set(handles.cb_Mag_Diff,'Enable','on')
set(handles.cb_Mag_Diff,'Enable','on')
set(handles.cbEE_Sub,'Enable','on')
set(handles.cbEE_FF,'Enable','on')


function pb6_clearfiles_Callback(~, ~, handles)
handles.lbFFFile.String = [];
handles.lbCDFfile.String = [];
handles.lbTMfile.String = [];
handles.lb_PAfiles.String = [];

function pbHelp_Callback(~, ~, ~)
f = msgbox({'-Use the add file pushbuttons for Force Field, Displacement Field,';...
            'and Traction Map Data.';'-Use the drop-down menu to select the number of datasets.';...
             '-Enter your camera pixelscale in um/pix in the text box.';...
             '-Use the checkboxes to select your desired analysis methods.';...
             '-Use the reset button to reset selections in the checkboxes';...
             '-Use the clear files button to reset the listboxes';...
             '-Force and Magnitude differences indicate the difference in two ROI selections';...
             '-When Run is pressed movies are created based on traction maps for ROI selection';...
             '-Selecting "Full Frame" for elastic energy will not display an average traction map for guidance';...
             '-If sampling down bead frames, make sure to sample down photo activation files in the same manner if planning on using PA analysis'},'HELP');

function pb_PA_files_Callback(~, ~, handles) 
set(handles.lb_PAfiles,'Max',4,'Min',0);
numDS = get(handles.popupmenu2, 'value');
[file,path] = uigetfile('*.tif');
PAp1 = fullfile(path,file);
set(handles.lb_PAfiles, 'String', PAp1);
if numDS >= 2
    [file,path] = uigetfile('*.tif');
    PAp2 = fullfile(path,file);
    ar2 = {PAp1,PAp2};
    set(handles.lb_PAfiles, 'String', ar2);
    if numDS >= 3
        [file,path] = uigetfile('*.tif');
        PAp3 = fullfile(path,file);
        ar3 = {PAp1,PAp2,PAp3};
        set(handles.lb_PAfiles, 'String', ar3);
        if numDS == 4
            [file,path] = uigetfile('*.tif');
            PAp4 = fullfile(path,file);
            ar4 = {PAp1,PAp2,PAp3,PAp4};
            set(handles.lb_PAfiles, 'String', ar4);
        end
    end
end
         
function FFaddfile_Callback(~, ~, handles)
assignin('base','oldpath',pwd)
set(handles.lbFFFile,'Max',4,'Min',0);
numDS = get(handles.popupmenu2, 'value');
[file,path] = uigetfile('*.mat');
FFp1 = fullfile(path,file);
cd(path)
set(handles.lbFFFile, 'String', FFp1);
if numDS >= 2
    [file,path] = uigetfile('*.mat');
    FFp2 = fullfile(path,file);
    ar2 = {FFp1,FFp2};
    set(handles.lbFFFile, 'String', ar2);
    if numDS >= 3
        [file,path] = uigetfile('*.mat');
        FFp3 = fullfile(path,file);
        ar3 = {FFp1,FFp2,FFp3};
        set(handles.lbFFFile, 'String', ar3);
        if numDS == 4
            [file,path] = uigetfile('*.mat');
            FFp4 = fullfile(path,file);
            ar4 = {FFp1,FFp2,FFp3,FFp4};
            set(handles.lbFFFile, 'String', ar4);
        end
    end
end

function DFaddfile_Callback(~, ~, handles)
set(handles.lbCDFfile,'Max',4,'Min',0);
numDS = get(handles.popupmenu2, 'value');
[file,path] = uigetfile('*.mat');
DFp1 = fullfile(path,file);
set(handles.lbCDFfile, 'String', DFp1);
if numDS >= 2
    [file,path] = uigetfile('*.mat');
    DFp2 = fullfile(path,file);
    ar2 = {DFp1,DFp2};
    set(handles.lbCDFfile, 'String', ar2);
    if numDS >= 3
        [file,path] = uigetfile('*.mat');
        DFp3 = fullfile(path,file);
        ar3 = {DFp1,DFp2,DFp3};
        set(handles.lbCDFfile, 'String', ar3);
        if numDS == 4
            [file,path] = uigetfile('*.mat');
            DFp4 = fullfile(path,file);
            ar4 = {DFp1,DFp2,DFp3,DFp4};
            set(handles.lbCDFfile, 'String', ar4);
        end
    end
end

function TMaddfile_Callback(~, ~, handles)
set(handles.lbTMfile,'Max',4,'Min',0);
numDS = get(handles.popupmenu2, 'value');
[file,path] = uigetfile('*.mat');
TMp1 = fullfile(path,file);
set(handles.lbTMfile, 'String', TMp1);
if numDS >= 2
    [file,path] = uigetfile('*.mat');
    TMp2 = fullfile(path,file);
    ar2 = {TMp1,TMp2};
    set(handles.lbTMfile, 'String', ar2);
    if numDS >= 3
        [file,path] = uigetfile('*.mat');
        TMp3 = fullfile(path,file);
        ar3 = {TMp1,TMp2,TMp3};
        set(handles.lbTMfile, 'String', ar3);
        if numDS == 4
            [file,path] = uigetfile('*.mat');
            TMp4 = fullfile(path,file);
            ar4 = {TMp1,TMp2,TMp3,TMp4};
            set(handles.lbTMfile, 'String', ar4);
        end
    end
end

function pushbutton4_Callback(~, ~, handles)
FF = get(handles.lbFFFile, 'String');
DF = get(handles.lbCDFfile, 'String');
TMnum = get(handles.lbTMfile, 'String');
PA = get(handles.lb_PAfiles, 'String');
iters = get(handles.popupmenu2, 'value');
pixscale = str2double(get(handles.PixelScaleEdit, 'String'));
threshold = str2double(get(handles.txt_threshold, 'String'));
difftest = (get(handles.cb_Force_Diff,'Value') == get(handles.cb_Force_Diff,'Max'));
magtest = (get(handles.cbMags,'Value') == get(handles.cbMags,'Max'));

%For iters with excel generation
if iters == 1
    load(DF);
    sizes = length(displFieldShifted);
    numbers = linspace(1,sizes,sizes);
    nums = reshape(numbers,[sizes,1]);
end

if numel(PA) == 0
    PAit = 0;
else
    PAit = iters;
end

if get(handles.cb_Force_2Sub,'Value')==1 && get(handles.cb_Force_1Sub,'Value')==1
    f = warndlg('Unable to select both two and one subsets','Incompatible Selection Warning');
    disp(f)
    error('Unable to select both two and one subsets')
end

if get(handles.cb_Mags_2Subs,'Value')==1 && get(handles.cbMags_1sub,'Value')==1
    b = warndlg('Unable to select both two and one subsets','Incompatible Selection Warning');
    disp(b)
    error('Unable to select both two and one subsets')
end

if get(handles.cb_Mags_2Subs,'Value')==1 && get(handles.cb_Force_1Sub,'Value')==1
    j = warndlg('Unable to select both two and one subsets','Incompatible Selection Warning');
    disp(j)
    error('Unable to select both two and one subsets')
end

if get(handles.cb_Force_2Sub,'Value')==1 && get(handles.cbMags_1sub,'Value')==1
    h = warndlg('Unable to select both two and one subsets','Incompatible Selection Warning');
    disp(h)
    error('Unable to select both two and one subsets')
end

if PAit == 1 && iters == 1
    [numPAframes] = PAcomp(PA);
    [numregframes] = regcomp(DF);
    if numPAframes ~= numregframes
        o = warndlg('Number of frames for photo-activation and traction map frames are different','Frame Inconsistency');
        disp(o)
        error('Frame Inconsistency')   
    end
end

%Movies
disp('Displaying Movies for Helping ROI Selection:')
if iters == 1
    Moviemaker1(TMnum)
end
if iters == 2
    Moviemaker1(TMnum{1})
    Moviemaker2plus(TMnum{2})
end
if iters == 3
    Moviemaker1(TMnum{1})
    Moviemaker2plus(TMnum{2})
    Moviemaker3(TMnum{3})
end
if iters == 4
    Moviemaker1(TMnum{1})
    Moviemaker2plus(TMnum{2})
    Moviemaker3(TMnum{3})
    Moviemaker4(TMnum{4})
end

%EE
if (get(handles.cb_EE,'Value') == get(handles.cb_EE,'Max'))
    if (get(handles.cbEE_FF,'Value') == get(handles.cbEE_FF,'Max'))
        if iters == 1
            [totals1,comps1] = EE_Full_Base(pixscale,FF,DF,TMnum);
            if PAit == 1
                [start1,end1,start2,end2] = PAindices_1DS(PA,threshold);
                Plot_EE_FF_1DS_PA(totals1,comps1,start1,end1,start2,end2)
            else
                Plot_EEFF_1(totals1,comps1)
            end
        end
        if iters == 2
            [totals1,totals2,comps1,comps2] = EE_Full_2DS(pixscale,FF,DF,TMnum);
            Plot_EEFF_2(totals1,comps1,totals2,comps2)
        end
        if iters == 3
            [totals1,totals2,comps1,comps2,totals3,comps3] = EE_Full_3DS(pixscale,FF,DF,TMnum);
            Plot_EEFF_3(totals1,comps1,totals2,comps2,totals3,comps3)
        end
        if iters == 4
            [totals1,totals2,comps1,comps2,totals3,comps3,totals4,comps4]...
            = EE_Full_4DS(pixscale,FF,DF,TMnum);
            Plot_EEFF_4(totals1,comps1,totals2,comps2,totals3,comps3,totals4,comps4)
        end
    end
    if (get(handles.cbEE_Sub,'Value') == get(handles.cbEE_Sub,'Max'))
        if iters == 1
            disp('Selecting Elastic Energy Subset')
            [comps,subsets] = EE_Sub_base(pixscale,FF,DF,TMnum);
            if PAit == 1
                [start1,end1,start2,end2] = PAindices_1DS(PA,threshold);
                Plot_EE_FF_1DS_PA(subsets,comps,start1,end1,start2,end2)                
            else
                Plotting_EE_1DS(comps,subsets)
            end
        end
        if iters == 2
            [comps1,subsets1,comps2,subsets2] = EE_2(pixscale,FF,DF,TMnum);
            Plot_2EE(comps1,subsets1,comps2,subsets2)
        end
        if iters == 3
            [comps1,subsets1,comps2,subsets2,comps3,subsets3] = EE_3(pixscale,FF,DF,TMnum);
            Plot_3EE(comps1,subsets1,comps2,subsets2,comps3,subsets3)
        end
        if iters == 4
            [comps1,subsets1,comps2,subsets2,comps3,...
                subsets3,comps4,subsets4] = EE_4(pixscale,FF,DF,TMnum);
            Plot_4EE(comps1,subsets1,comps2,subsets2,comps3,subsets3,comps4,subsets4)  
        end
    end
end

%Forces
if (get(handles.cb_Force,'Value') == get(handles.cb_Force,'Max'))
    if (get(handles.cb_Force_1Sub,'Value') == get(handles.cb_Force_1Sub,'Max'))
        if iters ==1
            disp('Selecting Force Subset')
            [mags,comps,forceX,forceY] = Force_Sub_base(pixscale,FF,DF,TMnum);
            if PAit == 1 && magtest == 0
                [start1,end1,start2,end2] = PAindices_1DS(PA,threshold);
                Plot_F_1sub_1DS_PA(forceX,forceY,comps,start1,end1,start2,end2)
            end
            if PAit == 0 && magtest == 0
                Plot_Force_1Sub(comps,forceX,forceY)
            end
        end
        if iters == 2
            [comps1,mags1,forceX1,forceY1,comps2,mags2,...
                forceX2,forceY2] = Force_2DS(pixscale,FF,DF,TMnum);
            Plot_Force_2DS(comps1,forceX1,forceY1,comps2,forceX2,forceY2)
        end
        if iters == 3
            [comps1,mags1,forceX1,forceY1,comps2,mags2,forceX2,...
            forceY2,comps3,mags3,forceX3,forceY3] = Force_3DS(pixscale,FF,DF,TMnum);
            Plot_Force_3DS(comps1,forceX1,forceY1,comps2,...
                forceX2,forceY2,comps3,forceX3,forceY3)
        end
        if iters == 4
            [comps1,mags1,forceX1,forceY1,comps2,mags2,forceX2,forceY2,...
            comps3,mags3,forceX3,forceY3,comps4,mags4,forceX4,forceY4] = Force_4DS(pixscale,FF,DF,TMnum);
            Plot_Force_4DS(comps1,forceX1,forceY1,comps2,forceX2,...
                forceY2,comps3,forceX3,forceY3,comps4,forceX4,forceY4)
        end
    end
    if (get(handles.cb_Force_2Sub,'Value') == get(handles.cb_Force_2Sub,'Max'))
        if iters ==1
            disp('Selecting Force Subsets')
            [mags1,comps1,forceX1,forceY1] = Force_Sub_base(pixscale,FF,DF,TMnum);
            [mags2,comps2,forceX2,forceY2] = Force_Sub_base(pixscale,FF,DF,TMnum);
            if PAit == 1 && difftest == 0
                [start1,end1,start2,end2] = PAindices_1DS(PA,threshold);
                Plot_F_1sub_1DS_2ROI_PA(forceX1,forceY1,forceX2,forceY2,comps1,start1,end1,start2,end2)
            end
            if PAit == 0 && difftest == 0
                Plot_Force_1Sub(comps,forceX,forceY)
            end
        end
        if iters == 2
            [comps1,mags1,forceX1,forceY1,comps3,mags3,forceX3,forceY3] = Force_2DS(pixscale,FF,DF,TMnum);
            [comps2,mags2,forceX2,forceY2,comps4,mags4,forceX4,forceY4] = Force_2DS(pixscale,FF,DF,TMnum);
        end
        if iters == 3
            [comps1,mags1,forceX1,forceY1,comps3,mags3,forceX3,...
                forceY3,comps5,mags5,forceX5,forceY5] = Force_3DS(pixscale,FF,DF,TMnum);
            
            [comps2,mags2,forceX2,forceY2,comps4,mags4,forceX4,...
                forceY4,comps6,mags6,forceX6,forceY6] = Force_3DS(pixscale,FF,DF,TMnum);
        end
        if iters == 4
            [comps1,mags1,forceX1,forceY1,comps3,mags3,forceX3,forceY3,...
            comps5,mags5,forceX5,forceY5,comps7,mags7,forceX7,...
            forceY7] = Force_4DS(pixscale,FF,DF,TMnum);
        
            [comps2,mags2,forceX2,forceY2,comps4,mags4,forceX4,forceY4,...
            comps6,mags6,forceX6,forceY6,comps8,mags8,forceX8,...
            forceY8] = Force_4DS(pixscale,FF,DF,TMnum);
        end
        if(get(handles.cb_Force_Diff,'Value') == get(handles.cb_Force_Diff,'Max'))
            if iters == 1
                if PAit == 1
                    [start1,end1,start2,end2] = PAindices_1DS(PA,threshold);
                    Plot_F_2sub_1DS_2ROIdif_PA(forceX1,forceY1,forceX2,forceY2,comps1,start1,end1,start2,end2) 
                else
                    Plot_F_1DS_2Sub(comps1,forceX1,forceY1,comps2,forceX2,forceY2)
                end
            end
            if iters == 2
                Plot_F_2DS_2Sub(comps1,forceX1,forceY1,comps2,forceX2,...
                            forceY2,comps3,forceX3,forceY3,comps4,forceX4,forceY4)
            end
            if iters == 3
                Plot_F_3DS_2Sub(comps1,forceX1,forceY1,comps2,forceX2,...
                                forceY2,comps3,forceX3,forceY3,comps4,forceX4,forceY4,...
                                comps5,forceX5,forceY5,comps6,forceX6,forceY6)
            end
            if iters == 4
                Plot_F_4DS_2Sub(comps1,forceX1,forceY1,comps2,forceX2,...
                               forceY2,comps3,forceX3,forceY3,comps4,forceX4,forceY4,...
                               comps5,forceX5,forceY5,comps6,forceX6,forceY6,...
                               comps7,forceX7,forceY7,comps8,forceX8,forceY8)
            end
        else
            if iters == 1 && PAit ~= 1
                Plot_F_1DS_ND(comps1,forceX1,forceY1,forceX2,forceY2)                
            end
            if iters == 2
                Plot_F_2DS_ND(comps1,forceX1,forceY1,forceX2,forceY2,...
                              comps2,forceX3,forceY3,forceX4,forceY4)
            end
            if iters == 3
                Plot_F_3DS_ND(comps1,forceX1,forceY1,forceX2,forceY2,...
                              comps2,forceX3,forceY3,forceX4,forceY4,...
                              comps3,forceX5,forceY5,forceX6,forceY6)
            end
            if iters == 4
                Plot_F_4DS_ND(comps1,forceX1,forceY1,forceX2,forceY2,...
                              comps2,forceX3,forceY3,forceX4,forceY4,...
                              comps3,forceX5,forceY5,forceX6,forceY6,...
                              comps4,forceX7,forceY7,forceX8,forceY8)
            end
        end
    end
    if (get(handles.cb_Mags_2Subs,'Value') == get(handles.cb_Mags_2Subs,'Max'))  
        if (get(handles.cb_Mag_Diff,'Value') == get(handles.cb_Mag_Diff,'Max'))
            if iters == 1
                if PAit == 1
                    Plot_Mags_2subdiff_1DS_PA(comps1,mags1,mags2,start1,end1,start2,end2)
                else    
                    Plot_Mags_1DS_2sub_diff(comps1,mags1,mags2)
                end
            end
            if iters == 2
                Plot_Mags_2DS_2sub_diff(comps1,mags1,mags2,comps3,mags3,mags4)
            end
            if iters == 3
                Plot_Mags_3DS_2sub_diff(comps1,mags1,mags2,comps3,mags3,mags4,...
                                    comps5,mags5,mags6)
            end
            if iters == 4
                Plot_Mags_4DS_2sub_diff(comps1,mags1,mags2,comps3,mags3,mags4,...
                                    comps5,mags5,mags6,comps7,mags7,mags8)
            end
        else
            if iters == 1
                if PAit == 1
                   Plot_Mags_2subnodiff_1DS_PA(comps1,mags1,mags2,start1,end1,start2,end2)
                else
                    Plot_Mags_1DS_2sub_nodiff(comps1,mags1,mags2)                    
                end
            end
            if iters == 2
                Plot_Mags_3DS_2sub_nodiff(comps1,mags1,mags2,comps3,mags3,mags4,...
                                   comps5,mags5,mags6)
            end
            if iters == 3
                Plot_Mags_3DS_2sub_nodiff(comps1,mags1,mags2,comps3,mags3,mags4,...
                                   comps5,mags5,mags6)
            end
            if iters == 4
                Plot_Mags_4DS_2sub_nodiff(comps1,mags1,mags2,comps3,mags3,mags4,...
                                   comps5,mags5,mags6,comps7,mags7,mags8)
            end
        end
    end
    if (get(handles.cbMags_1sub,'Value') == get(handles.cbMags_1sub,'Max'))
        if iters == 1
            if PAit == 1
                [start1,end1,start2,end2] = PAindices_1DS(PA,threshold);
                Plot_F_1sub_1DS_PA(forceX,forceY,comps,start1,end1,start2,end2)
                Plot_Mags_1sub_1DS_PA(comps,mags,start1,end1,start2,end2)
            else
                Plot_Mags_1DS_1sub_nodiff(comps,mags);
            end
        end
        if iters == 2
            Plot_Mags_2DS_1sub_nodiff(comps1,mags1,comps2,mags2)
        end
        if iters == 3
            Plot_Mags_3DS_1sub_nodiff(comps1,mags1,comps2,mags2,comps3,mags3)
        end
        if iters == 4
            Plot_Mags_4DS_1sub_nodiff(comps1,mags1,comps2,mags2,comps3,...
                                        mags3,comps4,mags4)
        end
    end
end

if (get(handles.cbEE_FF,'Value') == get(handles.cbEE_FF,'Max'))
    E = 1;
end

if (get(handles.cbEE_Sub,'Value') == get(handles.cbEE_Sub,'Max'))
    E = 2;
end

if (get(handles.cb_Force_1Sub,'Value') == get(handles.cb_Force_1Sub,'Max'))
    F = 1;
end

if (get(handles.cb_Force_2Sub,'Value') == get(handles.cb_Force_2Sub,'Max'))
    F = 2;
end

if(get(handles.cb_Force_Diff,'Value') == get(handles.cb_Force_Diff,'Max'))
    F = 3;
end

if (get(handles.cbMags_1sub,'Value') == get(handles.cbMags_1sub,'Max'))
    M = 1;
end

if (get(handles.cb_Mags_2Subs,'Value') == get(handles.cb_Mags_2Subs,'Max'))
    M = 2;
end

if (get(handles.cb_Mag_Diff,'Value') == get(handles.cb_Mag_Diff,'Max'))
    M = 3;
end

Echeck = get(handles.cb_EE,'Value');
if Echeck == 0
    E = 0;
end
Fcheck = get(handles.cb_Force,'Value');
if Fcheck == 0
    F = 0;
end
Mcheck = get(handles.cbMags,'Value');
if Mcheck == 0
    M = 0;
end

if handles.rb_Export.Value == 1
    if E == 0 %no EE
        if F == 1 %1 F subset
            if M == 0 %no mags
                Excel_Sheets(E,F,M,[],[],[],[],forceX,forceY,[],[],[],[],[],sizes,nums)  
            end
            if M == 1 %1 Mag subset
                Excel_Sheets(E,F,M,[],[],mags,[],forceX,forceY,[],[],[],[],[],sizes,nums)  
            end
        end
        if F == 2 %2 F subsets
            if M == 2 %2 mag subsets
                Excel_Sheets(E,F,M,[],[],[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)  
            end
            if M == 3 %mag diff
                Excel_Sheets(E,F,M,[],[],[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)  
            end
        end
        if F == 3 %2 F subsets w/diff
            if M == 2 %2 mag subsets
                Excel_Sheets(E,F,M,[],[],[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)  
            end
            if M == 3 %mag diff
                Excel_Sheets(E,F,M,[],[],[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)  
            end
        end
    end  
    
    if E == 1 %EE_FF
        if F == 0 %just EE_FF
            Excel_Sheets(E,F,M,totals1,[],[],[],[],[],[],[],[],[],[],[],nums)
        end
        if F == 1 %1 F subset
            if M == 0 %no mags
                Excel_Sheets(E,F,M,totals1,[],[],[],forceX,forceY,[],[],[],[],[],sizes,nums)
            end
            if M == 1 %1 mag subset
                Excel_Sheets(E,F,M,totals1,[],mags,[],forceX,forceY,[],[],[],[],[],sizes,nums)
            end
        end
        if F == 2 %2 F subsets
            if M == 2 %2 mag subsets
                Excel_Sheets(E,F,M,totals1,[],[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
            end
            if M == 3 %mag difference
                Excel_Sheets(E,F,M,totals1,[],[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
            end
        end
        if F == 3 %F difference
            if M == 2 %mags no diff
                Excel_Sheets(E,F,M,totals1,[],[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
            end
            if M == 3 %mags diff
                Excel_Sheets(E,F,M,totals1,[],[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
            end
        end
    end
    
    if E == 2 %EE subset
        if F == 0 %no F
            Excel_Sheets(E,F,M,[],subsets,[],[],[],[],[],[],[],[],[],sizes,nums)
        end
        if F == 1 %1 F subset
            if M == 0 %no mags
                Excel_Sheets(E,F,M,[],subsets,[],[],forceX,forceY,[],[],[],[],[],sizes,nums)
            end
            if M == 1 %1 Mag subset
                Excel_Sheets(E,F,M,[],subsets,mags,[],forceX,forceY,[],[],[],[],[],sizes,nums)
            end
        end
        if F == 2 %2 F subsets
            if M == 2 %2 mag subsets
                Excel_Sheets(E,F,M,[],subsets,[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
            end
            if M == 3 %mag diff
                Excel_Sheets(E,F,M,[],subsets,[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
            end
        end
        if F == 3 %F diff
            if M == 2 %2 mag subsets
                Excel_Sheets(E,F,M,[],subsets,[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
            end
            if M == 3 %mag diff
                Excel_Sheets(E,F,M,[],subsets,[],mags1,[],[],forceX1,forceY1,mags2,forceX2,forceY2,sizes,nums)
            end
        end        
    end
end
    
cd(pwd)
%--------------------------------------------------------------------------------------------
%Pop-Up Menus:
function popupmenu2_Callback(~, ~, ~)

function popupmenu2_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%--------------------------------------------------------------------------------------------
%Edit Text:
function PixelScaleEdit_Callback(~, ~, handles)
pixscale = str2double(get(handles.PixelScaleEdit, 'String'));

function PixelScaleEdit_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txt_threshold_Callback(~, ~, handles)
threshold = str2double(get(handles.txt_threshold, 'String'));

function txt_threshold_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
