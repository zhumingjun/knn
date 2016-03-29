function [resultLabel]= KNN(inx,data,labels,k)
   [datarow,datacol]=size(data);
   diffMat=repmat(inx,[datarow,1])-data;
   distanceMat=sqrt(sum(diffMat.^2,2));
   [B,IX]=sort(distanceMat,'ascend');
   len=min(k,length(B));
   resultLabel=mode(labels(IX(1:len)));
end

