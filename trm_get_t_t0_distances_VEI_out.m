%   Created on August 03 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

%  This function returns the t0 and t distance between a volume element dd
%  and a sample smpl giving the incident beam vector s0 and s.
%  Inputs: 
%           smpl:   sample
%           dd:     volume element
%           s0:     incident beam unitary vector
%           s:      scattered beam unitary vector
%
%  Outputs:
%           tt0:    distance between the volume element dd and the
%                   sample smpl in the s0 direction
%           tt:     distance between the volume element dd and the
%                   sample smpl in the s direction
%           outside0:   returns 1 if the sample smpl is in the path of
%                       the vector s0 from volume dd. 0 otherwise
%
%           outside:    returns 1 if the sample smpl is in the path of
%                       the vector s from volume dd. 0 otherwise

function [tt0,tt,outsid0,outsid] = trm_get_t_t0_distances_VEI_out(smpl,dd,s0,s)
F=smpl.F;
outsid0=0;
outsid=0;
tt=-1.5e20;
tt0=-1.5e20;

    [tn0,tp0,tn,tp] = trm_get_t_to_distances(F,dd,-s0,-s);
    if (tp0>0 && tp0<1.5E19)
        ddtest=dd+1.01*tp0*s0;
        [insid,t0,t] = trm_is_inside(smpl,s0,s0,ddtest);
        if insid==1
            tt0=t0+t;
            outsid0=1;
        end
    end    
    if (tp>0 && tp<1.5E19) 
        ddtest=dd-1.01*tp*s;
        [insid,t0,t] = trm_is_inside(smpl,s,s,ddtest);
        if insid==1
            tt=t0+t;
            outsid=1;
        end
    end
    
end

