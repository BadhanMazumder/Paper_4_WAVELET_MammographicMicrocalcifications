clc;close all;


%Train1= readtable('sym6_DWT_Training_B_M_Level_4.xlsx');

%Test1= readtable('sym6_DWT_Testing_B_M_Level_4.xlsx');

trainedModel1=dwt10FoldEnsembleBaggedTrees(Train1);
trainedModel2=dwt10FoldEnsembleBoostedTrees(Train1);
trainedModel3=dwt10FoldEnsembleRUSBoostedTrees(Train1);
trainedModel4=dwt10FoldEnsembleSubspaceDiscriminant(Train1);

yfit1 = trainedModel1.predictFcn(Test1);
yfit2 = trainedModel2.predictFcn(Test1);
yfit3 = trainedModel3.predictFcn(Test1);
yfit4 = trainedModel4.predictFcn(Test1);

filename = 'Results_Ensemble_dwt_10fold.xlsx';
xlswrite(filename,yfit1,'BaggedTrees','A1');
xlswrite(filename,yfit2,'BoostedTrees','A1');
xlswrite(filename,yfit3,'RUSBoostedTrees','A1');
xlswrite(filename,yfit4,'SubspaceDiscriminant','A1');