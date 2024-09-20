function [tn0,tp0,tn,tp] = trm_get_t_to_distances(F,dd,s0,s)
%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% Get t and t0 distances from sample volumeF
% F  Boundary functions
% dd  volume element
% s0 incident beam
% s scattered beam
% returns [tn0,tp0,tn,tp] where:
% tn,tn0 absolute smalest negative distance for the incident and scattered beam
% tp,tp0 absolute smalest positive distance for the incident and scattered beam
    x_elem=height(F);
    tn=-1.5e20;
    tn0=-1.5e20;
    tp=1.5E20;
    tp0=1.5E20;
   for n_bound=1:x_elem
        boundary=F(n_bound,:);
        [t10,t20]=trm_todis(boundary,s0,dd);
        [t1,t2]=trm_tdis(boundary,s,dd);
        if t1 > 0 && t1 < tp
            tp=t1;
        end    
        if t1 < 0 && t1 > tn
            tn=t1;
        end    
        if t2 > 0 && t2 < tp
            tp=t2;
        end    
        if t2 < 0 && t2 > tn
            tn=t2;
        end    
        if t10 > 0 && t10 < tp0
            tp0=t10;
        end    
        if t10 < 0 && t10 > tn0
            tn0=t10;
        end    
        if t20 > 0 && t20 < tp0
            tp0=t20;
        end    
        if t20 < 0 && t20 > tn0
            tn0=t20;
        end
    end
end

