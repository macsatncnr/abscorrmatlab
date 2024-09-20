function [insid,t0,t]=trm_is_inside(smpl,s0,s,dd)

%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% This function check if the volume element is inside the sample.
% The routine check if there are boundaries between the dd volume position
% and the origin.
% The sample must be defined as a set of convex boundaries.
% If the sample is defined by several bounding functions, the 
% origin [0,0,0] will located at the volume of interest.
% eg: if we define a an sphere x^2+y^2+z^2=5 and a plane z=2.0
% there will be 2 parts of the sphere. And the origin [0,0,0] will be located
% at the sample volume of interest.
% F  Boundary functions
% dd  volume position
% s0 0incident beam vector
% ss scattered beam vector
% returns [inside,t0,t]
% inside=1 if the volume position is inside the samle, 0 otherwise.
%t distance from the sample volume to the beam exit boundary function.
%t0 distance from the sample volume to the bean entrance boundary function.
F=smpl.F;
VEI=smpl.VEI;
VEIs0=dd-VEI;
disdd=sqrt(VEIs0(1)^2+VEIs0(2)^2+VEIs0(3)^2);
  if disdd == 0.0
      tp1=1.0;
  else  
      s0p=VEIs0/disdd;
      sd0=VEI;
      insid=0;
      t=-1.0;
      t0=-1.0;
      [tn00,tp00,tn1,tp1]=trm_get_t_to_distances(F,sd0,s0p,s0p);
  end 
  if disdd <= tp1
    insid=1;
    [tn0,tp0,tn,tp]=trm_get_t_to_distances(F,dd,s0,s);
    t=tp;
    t0=tp0;
  end  
end

