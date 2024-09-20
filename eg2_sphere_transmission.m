function [trans, volume] = eg2_sphere_transmission(twotheta,r,mu_ei,mu_ef)
%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research
% wec alculate the absorption of the box given the theta-twotheta position.
% The incident beam s0 is along the y axis s0=[0,1,0] s=[0,1,0] for theta=2theta=0
% mu_ei= transmision linear coefficient for Ei
% mu_ef= transmision liniear coefficient for Ef
% r=sphere radious
    s0=[0.0,1.0,0.0];
    s=[0.0,1.0,0.0];
    sphere_smpl=eg2_sphere_sample(r);
    ss=trm_srotxy(s,twotheta);
    [trans, volume]=trm_integ(s0, ss, sphere_smpl,mu_ei,mu_ef);
end

