%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% Plot the transmission of a cylinder and compare with the IUCr tables.

twothetarange=[0,180,10];
N_twotheta=int64((twothetarange(2)-twothetarange(1)+1)/twothetarange(3));

twotheta_angles=zeros(N_twotheta,1);
transmission=zeros(N_twotheta,1);

mu_ei=2.5; % tramsmision linear coefficient for Ei
mu_ef=2.5; % transmission linear coefficient for Ef
r=1.0; % cylinder radius.
l=2.0;
fileID_write = fopen('cylinder_transmission.txt','w');
tic

   N_element_twotheta=0;
   for twotheta=twothetarange(1):twothetarange(3):twothetarange(2)
       N_element_twotheta=N_element_twotheta+1;
       [transm,volume] = eg3_cylinder_transmission(twotheta,r,l,mu_ei,mu_ef);
       twotheta_angles(N_element_twotheta)=twotheta;
       transmission(N_element_twotheta)=transm;
       fprintf(fileID_write,"%f   %f\n",twotheta,transm);
      twotheta
   end

toc
plot(twotheta_angles/2,transmission)
title('Cylinder \mu_{Ei} ='+string(mu_ei)+' mm^{-1}   \mu_{Ef}='+string(mu_ef)' +' mm^{-1}  r='+string(r)'+' mm');
xlabel("\theta");
ylabel("Transmission");
fontsize(18,"points")
hold on
eg3_cylinder_tables_mr2p5;
hold off
legend('WP algorithm','IUCr tables.')