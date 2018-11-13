function [comps,totals] = EE_FF_base(pixscale,FF,DF,TMnum)
%Base Function for Elastic Energy of a Full Frame
load(FF),load(DF),load(TMnum)
newpix = pixscale*10^(-6);
[iters,TracMap] = deal(length(displFieldShifted),cur_tMap);
comps = linspace(1,iters,iters);

%loop through x,y for length of x,y
totals = zeros(iters,1);
for b=1:iters
    [sffp,sffv] = deal(forceFieldShifted(b).pos,forceFieldShifted(b).vec);
    [sdfp,sdfv] = deal(displFieldShifted(b).pos,displFieldShifted(b).vec);
    sdfvcal = sdfv*(newpix);
    [sizebig,sizeTracMap] = deal(size(sdfp),size(TracMap));
    [sizesqrt,sizeTM1] = deal(sqrt(sizebig(1)),sizeTracMap(1));
    sizecalfactor = (sizeTM1/sizesqrt)^2;
    xrange = find(sffp(:,2)>=minX & sffp(:,2)<=maxX);
    yrange = find(sffp(:,1)>=minY & sffp(:,1)<=maxY);
    [lenx,leny] = deal(numel(xrange),numel(yrange));
    [newi,newj] = deal(zeros(1,lenx),zeros(1,leny));
    for i=1:lenx
        for j=1:leny
            if(xrange(i)==yrange(j))
                [newi, newj] = deal([newi,i],[newj,j]);
            end
        end
    end
    elastot = dot(sdfvcal,sffv);
    Esum = (elastot(1)+elastot(2));
    totals(b) = ((Esum*sizecalfactor*(newpix^2))/2)*(10^12);
end
end

