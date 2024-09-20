function [transm, volume] = eg5_half_cylinder_transmission(theta,twotheta)

%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% wec alculate the absorption of half cylinder given the theta-twotheta position.
% The incident beam s0 is along the y axis s0=[0,1,0] s=[0,1,0] for theta=2theta=0
% The cylinder is defined in eg_half_cylinder_sample(r,l) 
    s0=[0.0,1.0,0.0];
    s=[0.0,1.0,0.0];
    %mu_ef=4.9413; % tramsmision linear coefficient for Ei
    %mu_ei=4.9413; % transmission linear coefficient for Ef
     mu_ef=2; % tramsmision linear coefficient for Ei
    mu_ei=2; % transmission linear coefficient for Ef
    r=1.0; % sphere radius. 
    l=0.5;
    cyl_smpl=eg5_half_cylinder_sample(r,l);
    ss0=trm_srotxy(s0,-theta);
    ss=trm_srotxy(trm_srotxy(s,-theta),twotheta);  
    [transm, volume]=trm_integ(ss0, ss, cyl_smpl,mu_ei,mu_ef);  
end