function [totals,comps] = EE_Full_Base(pixscale,FF,DF,TMnum)
%Routine for Full Frame EE analysis
load(FF), load(DF), load(TMnum)
newpix = pixscale*10^(-6);
FieldSize = length(displFieldShifted);
TracMap = cur_tMap;
comps = linspace(1,FieldSize,FieldSize);

totals = zeros(FieldSize,1);
for b=1:FieldSize
    sffv = forceFieldShifted(b).vec;
    sdfv = displFieldShifted(b).vec;
    sdfp = displFieldShifted(b).pos;
    [sizebig,sizeTracMap] = deal(size(sdfp),size(TracMap));
    [sizesqrt,sizeTM1] = deal(sqrt(sizebig(1)),sizeTracMap(1));
    sizecalfactor = (sizeTM1/sizesqrt)^2;
    sdfvcal = sdfv*(newpix);
    elastot = dot(sdfvcal,sffv);
    Etotsum = (elastot(1)+elastot(2));
    totals(b) = ((Etotsum*sizecalfactor*(newpix^2))/2)*(10^12);
end
end