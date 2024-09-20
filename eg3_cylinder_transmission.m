function [transm, volume] = eg3_cylinder_transmission(twotheta,r,l,mu_ei,mu_ef)
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research
% Calculate the transmision of a cylinder with radios r and height l.
% with mu_ei and mu_ef linear transmission coeficcients.
% The incident beam s0 is along the y axis s0=[0,1,0] s=[0,1,0] for theta=2theta=0
    s0=[0.0,1.0,0.0];
    s=[0.0,1.0,0.0];
    cylind=eg3_cylinder_sample(r,l);
    
    ss=trm_srotxy(s,twotheta);
    [transm, volume]=trm_integ(s0, ss, cylind,mu_ei,mu_ef);  
end

