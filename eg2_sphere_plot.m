%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

twothetarange=[0,180,10]; % [twotheta minimumn, twotheta maximum, steps]
N_twotheta=int64((twothetarange(2)-twothetarange(1)+1)/twothetarange(3));

twotheta_angles=zeros(N_twotheta,1);
transmission=zeros(N_twotheta,1);
mu_ei=2.5; % tramsmision linear coefficient for Ei
mu_ef=2.5; % transmission linear coefficient for Ef
r=1.0; % sphere radius.
fileID_write = fopen('sphere_transmission.txt','w');
tic

   N_element_twotheta=0;
   for twotheta=twothetarange(1):twothetarange(3):twothetarange(2)
       N_element_twotheta=N_element_twotheta+1;
       [trans,volume] = eg2_sphere_transmission(twotheta,r,mu_ei,mu_ef);
       twotheta_angles(N_element_twotheta)=twotheta;
       transmission(N_element_twotheta)=trans;
       fprintf(fileID_write,"%f   %f\n",twotheta,trans);
      twotheta
   end

toc
plot(twotheta_angles/2,transmission)
title('Sphere \mu_{Ei} ='+string(mu_ei)+' mm^{-1}   \mu_{Ef}='+string(mu_ef)' +' mm^{-1}  r='+string(r)'+' mm');
xlabel("\theta");
ylabel("Transmission");
fontsize(18,"points")
hold on
eg2_sphere_tables_mr2p5;
hold off
legend('WP algorithm','IUCr tables.')