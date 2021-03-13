clc;
close all;
%-------------------------------ReadImage----------------------------------
offset =1;
for a_iter=1:322
k=imread(sprintf('BC_resized (%d).TIF',offset));

%--------------------------------Segmentaion-------------------------------

segmented_image = mcSegment(k);

%----------------------SWT Decomposition_+_Feature extraction------------

     %FeatureData1 = db6SwtEnergyFeature(segmented_image);
     FeatureData2 = sym6SwtEnergyFeature(segmented_image);
     
     excelfile= 'swtEnergyFeature.xlsx';
     %xlswrite(excelfile,FeatureData1,'db6',sprintf('A%d',offset));
     xlswrite(excelfile,FeatureData2,'sym6',sprintf('A%d',offset));
     
    offset=offset+1;
end
