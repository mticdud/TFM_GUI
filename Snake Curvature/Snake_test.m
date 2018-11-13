% Example, GVF:
%frame = 'D:\Mitch_temp\ellipse.png';

%scaling = 3.5;
%frame = 'D:\Mitch_temp\curvebest.png';
%[B,P] = nonbinary_curves(frame,scaling);



%{
scaling = 3.5;
frame = 'D:\Mitch_temp\curvebest.png';
A = imread(frame);
rgb = rgb2gray(A);
binned = imcomplement(imbinarize(rgb));
beast = double(binned);
B = resizem(beast,scaling,'bicubic');
boundsdbl = bwboundaries(binned); %error here
boundmultiply = ((scaling+.1)*boundsdbl{1,1}); %possibly {2,1}
x = boundmultiply(:,1);
y = boundmultiply(:,2);
P=[x(:) y(:)];
%}


%[B,P] = binary_curves(frame,scaling);


%I = im2double(imread('testimage2.png'));
%I = im2double(imread('D:\Mitch_temp\mask_nucleus\frame_0013.tif'));
%A = imbinarize(I);
%beast = double(A);
%boundsdbl = bwboundaries(A);
%B = resizem(beast,scaling,'bicubic');
%boundmultiply = ((scaling+.1)*boundsdbl{1,1});
%x = boundmultiply(:,1);
%y = boundmultiply(:,2);
%P=[x(:) y(:)];



%Settings for sharper curves/cell images:
Options.Verbose=true;
Options.nPoints = 300; %Number of contour points, default 100 %200 before
Options.Iterations=500; %Number of iterations, default 100 %500 before
Options.Wedge=2; %Attraction to edges, default 2.0 %was 2
Options.Wline=0; %Attraction to lines, if negative to black lines otherwise white, def .04 %0 before
Options.Wterm=0; %Attraction to terminations of lines (end points) and lines, def .01 %0 before
Options.Kappa=8; %Weight of external image force, default 2 %4 before
Options.Sigma1=8; %Sigma used to calculate image derivatives, default 10 %8 before
Options.Sigma2=15; %Gradient of the edge energy image (image force), def 20 %15 before
Options.Alpha=0.1; %Membrame energy  (first order), default 0.2 %.1 before
Options.Beta=0.1; %Thin plate energy (second order), default 0.2 %.1 before
Options.Mu=0.2; %Trade of between real edge vectors, and noise vectors, default 0.2.
Options.Delta=-0.1; %Baloon force, default 0.1
Options.GIterations=0; %Number of GVF iterations, default 0 %400 before


%{
%settings for more regular shapes (less sharp curves):
Options=struct;
Options.nPoints = 200;
Options.Verbose=true;
Options.Iterations=200;
Options.Wedge=2;
Options.Wline=0;
Options.Wterm=0;
Options.Kappa=2;
Options.Sigma1=10;
Options.Sigma2=20;
Options.Alpha=0.2;
Options.Beta=0.2;
Options.Mu=0.2;
Options.Delta=-0.1;
Options.GIterations=600;
%}

%{
[Vertices,J]=Snake2D(B,P,Options);
k = LineCurvature2D(Vertices);
N=LineNormals2D(Vertices);
newvertsx = Vertices(:,2); %+ 50; %2 for ellipse, 219 for circle
newvertsy = Vertices(:,1); %- 150; %1 for ellipse, 219 for circle

%figure
%histogram(k) %histogram for raw curvature values. For excentuated place
%after the gencolor_curves function line.

param = .03; %This is a visualization parameter. higher is less harsh. Default .03
gencolor_curves(newvertsx,newvertsy,k,param,B)
%}

