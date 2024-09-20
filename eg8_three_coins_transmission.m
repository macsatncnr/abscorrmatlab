function [transm,volume] = eg8_three_coins_transmission(theta,twotheta)
%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% 
% Calculate the absorption of the a sample eg_three_coins_sample() 
% given the theta-twotheta position.
% The incident beam s0 is along the y axis s0=[0,1,0] s=[0,1,0] for theta=2theta=0

    s0=[0.0,0.0,1.0];
    s=[0.0,0.0,1.0]; 
    mu_ei=2;
    mu_ef=mu_ei;
    all_samples = eg8_three_coins_sample();
    % Theta is negative because the sample rotates in oposite direction as the s0 vector
    % Twotheta rotates the same direction as the sample.
    ss0=trm_srotyz(s0,-theta); 
    ss=trm_srotyz(trm_srotyz(s,-theta),twotheta); 
    [transm,volume]=trm_integ(ss0, ss, all_samples,mu_ei,mu_ef);
end

