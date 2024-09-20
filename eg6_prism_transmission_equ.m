function [transm, volume] = eg6_prism_transmission_equ(theta,twotheta)

%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% Calculate the neutron transmission of a prism.
% The incident beam s0 is along the y axis s0=[0,1,0] s=[0,1,0] for theta=2theta=0
% The sample is defined in prism_sample() with 5 planes. (3 rectangles and
% 2 triangles). The rotation axis is perpendicular to the triangles
   
    s0=[0.0,1.0,0];
    s=[0.0,1.0,0.0];

    mu_ef=4; % tramsmision linear coefficient for Ei
    mu_ei=4; % transmission linear coefficient for Ef 
    
    ss0=trm_srotxy(s0,-theta);
    ss=trm_srotxy(trm_srotxy(s,-theta),twotheta);  
    [transm, volume]=trm_integ(ss0, ss, eg6_prism_sample_equ(),mu_ei,mu_ef);  
end