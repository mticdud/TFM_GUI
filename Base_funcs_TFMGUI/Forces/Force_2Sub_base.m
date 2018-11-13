function [mags,img,comps,forceX,forceY] = Force_2Sub_base(pixscale,FF,DF,TMnum)
%Force Base Function
load(FF),load(DF),load(TMnum)
newpix = pixscale*10^(-6);
[iters,TracMap] = deal(length(displFieldShifted),cur_tMap);
comps = linspace(1,iters,iters);
img = figure; image(TracMap)
h = imrect;
BW = createMask(h);
[rId, cId] = find(BW);
[minX,minY,maxX,maxY] = deal(rId(1),cId(1),rId(end),cId(end));

[forceX,forceY,magnitudes] = deal(zeros(iters),zeros(iters),zeros(iters,1));
for b=1:iters
    [sffp,sffv] = deal(forceFieldShifted(b).pos,forceFieldShifted(b).vec);
    sdfp = displFieldShifted(b).pos;
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
    noni = nonzeros(newi);
    comprows = xrange(noni);
    subfv = sffv(comprows,:);
    [subfvY,subfvX] = deal(sum(subfv(1)),sum(subfv(2)));
    [forceY(b),forceX(b)] = deal(((subfvY*sizecalfactor*newpix^2)*10^12),((subfvX*sizecalfactor*newpix^2)*10^12));
    veccomps = [forceX(:,1),forceY(:,1)];
    magnitudes(b) = norm(veccomps);
end
mags = magnitudes(:,1);
end

