function [transm,volume] = eg1_box_transmission(theta,twotheta)

%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% wec alculate the absorption of the box given the theta-twotheta position.
% The incident beam s0 is along the y axis s0=[0,1,0] s=[0,1,0] for theta=2theta=0
    s0=[0.0,1.0,0.0];
    s=[0.0,1.0,0.0];
    mu_ei=4;
    mu_ef=mu_ei;
    llx=2.0;
    lly=0.5;
    llz=2.0;
    smplbx=eg1_box_sample(llx,lly,llz);
    % Theta is negative because the sample rotates in oposite direction as the s0 vector
    % Twotheta rotates the same direction as the sample.
    ss0=trm_srotxy(s0,-theta); 
    ss=trm_srotxy(trm_srotxy(s,-theta),twotheta); 
    [transm,volume]=trm_integ(ss0, ss, smplbx,mu_ei,mu_ef);
end

