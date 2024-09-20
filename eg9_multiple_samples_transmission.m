function [transm,volume] = eg9_multiple_samples_transmission(theta,twotheta)
%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% We calculate the transmission for three samples in the beam.
% The samples are one cube, one cylinder and one sphere
% The samples are defined in eg_multiple_samples
% The incident beam s0 is along the y axis s0=[0,1,0] s=[0,1,0] for theta=2theta=0
    s0=[0.0,1.0,0.0];
    s=[0.0,1.0,0.0];
    mu_ei=2.0;
    mu_ef=mu_ei;
    all_samples = eg9_multiple_samples();
    % Theta is negative because the sample rotates in oposite direction as the s0 vector
    % Twotheta rotates the same direction as the sample.
    ss0=trm_srotxy(s0,-theta); 
    ss=trm_srotxy(trm_srotxy(s,-theta),twotheta); 
    [transm,volume]=trm_integ(ss0, ss, all_samples,mu_ei,mu_ef);
end

