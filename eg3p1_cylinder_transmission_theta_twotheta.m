function [transm, volume] = eg3p1_cylinder_transmission_theta_twotheta(theta,twotheta)

%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% Calculate the transmission of a cylinder given the theta-twotheta position.
% In this caseThe incident beam s0 is along the z axis s0=[0,0,1] s=[0,0,1] 
% for theta=2 theta=0
% The cylinder is defined in cylinder_sample(r,l)


    s0=[0.0,1.0,0.0];
    s=[0.0,1.0,0.0];
    mu_ef=2; % tramsmision linear coefficient for Ei
    mu_ei=2; % transmission linear coefficient for Ef
    r=1.0; % sphere radius.
    l=0.5;
    cyl_smpl=eg3_cylinder_sample(r,l);

    ss0=trm_srotxy(s0,-theta);
    ss=trm_srotxy(trm_srotxy(s,-theta),twotheta);  
    [transm, volume]=trm_integ(ss0, ss, cyl_smpl,mu_ei,mu_ef);  
end