function Feature = sym6SwtEnergyFeature(X)

%------------------------------------------Visualize the original image------------------------------------------
%subplot(321)
%image(X)
%title('Original image');
%colormap(map)

%------------------------------------------Perform SWT decomposition------------------------------------------
                                      
[ca1,chd1,cvd1,cdd1] = swt2(X,1,'sym6');
[ca2,chd2,cvd2,cdd2] = swt2(X,2,'sym6');
[ca3,chd3,cvd3,cdd3] = swt2(X,3,'sym6');
[ca4,chd4,cvd4,cdd4] = swt2(X,4,'sym6');
%[ca5,chd5,cvd5,cdd5] = swt2(X,5,'sym6');


%%------------------------------------------SWT Energy Calculation------------------------------------------
%Level 1
Echd1=sum(chd1(1,:).^2);
Ecvd1=sum(cvd1(1,:).^2);
Ecdd1=sum(cdd1(1,:).^2);
%Level 2
Echd2=sum(chd2(2,:).^2);
Ecvd2=sum(cvd2(2,:).^2);
Ecdd2=sum(cdd2(2,:).^2);
%Level 3
Echd3=sum(chd3(3,:).^2);
Ecvd3=sum(cvd3(3,:).^2);
Ecdd3=sum(cdd3(3,:).^2);
%Level 4
Echd4=sum(chd4(4,:).^2);
Ecvd4=sum(cvd4(4,:).^2);
Ecdd4=sum(cdd4(4,:).^2);
%Level 5
%Echd5=sum(chd5(5,:).^2);
%Ecvd5=sum(cvd5(5,:).^2);
%Ecdd5=sum(cdd5(5,:).^2);

%Feature = [Echd1,Ecvd1,Ecdd1,Echd2,Ecvd2,Ecdd2,Echd3,Ecvd3,Ecdd3,Echd4,Ecvd4,Ecdd4,Echd5,Ecvd5,Ecdd5];
Feature = [Echd1,Ecvd1,Ecdd1,Echd2,Ecvd2,Ecdd2,Echd3,Ecvd3,Ecdd3,Echd4,Ecvd4,Ecdd4];
%------------------------------------------Visualize the decomposition------------------------------------------
%for k = 1:4
    % Images coding for level k.
    %cod_ca  = (ca4(:,:,k));
    %cod_chd = (chd4(:,:,k));
    %cod_cvd = (cvd4(:,:,k));
    %cod_cdd = (cdd4(:,:,k));
    %decl = [cod_ca,cod_chd;cod_cvd,cod_cdd];

    % Visualize the coefficients of the decomposition
    % at level k.
    %subplot(3,2,k+1)
    %image(decl)
    %title(['SWT dec.: approx. ', ...
   %'and det. coefs (lev. ',num2str(k),')']);
    %colormap(map)
%end
end