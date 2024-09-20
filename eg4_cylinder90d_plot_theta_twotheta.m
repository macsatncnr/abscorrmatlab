%plot theta vs twotheta countour map

thetarange=[0,180,5];
twothetarange=[0,180,5];
N_theta=int64((thetarange(2)-thetarange(1)+1)/thetarange(3));
N_twotheta=int64((twothetarange(2)-twothetarange(1)+1)/twothetarange(3));

theta_angles=zeros(N_theta,1);
twotheta_angles=zeros(N_twotheta,1);
transmission=zeros(N_twotheta,N_theta);
N_element_theta=0;
file_name="cylinder_rod_90d_mu_4";
fileID_write = fopen(strcat(file_name,'.txt'),'w');
tic
for theta=thetarange(1):thetarange(3):thetarange(2)
   N_element_theta=N_element_theta+1;
   N_element_twotheta=0;
   for twotheta=twothetarange(1):twothetarange(3):twothetarange(2)
       N_element_twotheta=N_element_twotheta+1;
       [transm,volume] = eg4_cylinder_transmission90d(theta,twotheta);
       theta_angles(N_element_theta)=theta;
       twotheta_angles(N_element_twotheta)=twotheta;
       transmission(N_element_twotheta,N_element_theta)=transm;
       fprintf(fileID_write,"%f    %f  %f\n",theta,twotheta,transm);
   end
   string(round(100*(theta-thetarange(1))/(thetarange(2)-thetarange(1))))+'%'
end
toc

save(strcat(file_name,'_twotheta_angles_cyl.mat'),'twotheta_angles');
save(strcat(file_name,'_theta_angles_cyl.mat'),'theta_angles');
save(strcat(file_name,'_transmission_cyl.mat'),'transmission');



contourf(theta_angles,twotheta_angles,transmission,150,'linecolor','none');
title('Neutron Transmision \theta vs 2\theta.');
xlabel("\theta");
ylabel("2\theta");
fontsize(22,"points")
colormap(jet)