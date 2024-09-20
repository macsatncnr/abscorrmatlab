function [transm, volume] = eg4_cylinder_transmission90d(theta,twotheta)

%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% Calculate the transmission of a cylinder given the theta-twotheta position.
% In this caseThe incident beam s0 is along the z axis s0=[0,0,1] s=[0,0,1] 
% for theta=2 theta=0
% The cylinder is defined in cylinder_sample(r,l)


    s0=[0.0,0.0,1.0];
    s=[0.0,0.0,1.0];
    mu_ef=4.0; % tramsmision linear coefficient for Ei
    mu_ei=4.0; % transmission linear coefficient for Ef
    r=0.5; % sphere radius.
    l=4;
    cyl_smpl=eg3_cylinder_sample(r,l);

    ss0=trm_srotyz(s0,-theta);
    ss=trm_srotyz(trm_srotyz(s,-theta),twotheta);  
    [transm, volume]=trm_integ(ss0, ss, cyl_smpl,mu_ei,mu_ef);  
end