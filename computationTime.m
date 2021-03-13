clc;close all;


%Train1= readtable('sym6_DWT_Training_B_M_Level_4.xlsx');

%Test1= readtable('sym6_DWT_Testing_B_M_Level_4.xlsx');

trainedModel1=swt10FoldEnsembleBaggedTrees(Train1);
trainedModel2=swt10FoldEnsembleBoostedTrees(Train1);
trainedModel3=swt10FoldEnsembleRUSBoostedTrees(Train1);
trainedModel4=swt10FoldEnsembleSubspaceDiscriminant(Train1);
for i=1:100
tic
yfit1 = trainedModel1.predictFcn(Test1);
toc
tic
yfit2 = trainedModel2.predictFcn(Test1);
toc
tic
yfit3 = trainedModel3.predictFcn(Test1);
toc
tic
yfit4 = trainedModel4.predictFcn(Test1);
toc
end