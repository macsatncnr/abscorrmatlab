function [absorp, volume] = trm_integ(s0,s,all_smpl,mu_Ei,mu_Ef)
%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

%	This function calculates the absorption given an s0,s,F,grids and d.
%	s0: Incoming beam
%	s: exit beam
%	F: bounding functions
%   mu_Ei, muEf: Linear transmission coefficients for Ei and Ef)
  sum_absorp=0;
  mm=0.0;
  [col,rows]=size(all_smpl);
  volume=0;
  for smpl_n=1:rows
      smpl=all_smpl(smpl_n);
      gridx=smpl.box_deltas(1);
      gridy=smpl.box_deltas(2);
      gridz=smpl.box_deltas(3);
      dx=smpl.box_dimensions(1)/2;
      dy=smpl.box_dimensions(2)/2;
      dz=smpl.box_dimensions(3)/2;
      x_bb=smpl.box_bottom(1);
      y_bb=smpl.box_bottom(2);
      z_bb=smpl.box_bottom(3);
      M_smpl_n=0;
      delta_V_smpl_n=8*dx*dy*dz/gridx/gridy/gridz;
      for p=1:gridx
          xp=x_bb+(dx/gridx)+(p-1)*(2*dx/gridx);
          for q=1:gridy
              yq=y_bb+(dy/gridy)+(q-1)*(2*dy/gridy);
              for r=1:gridz
                  zr=z_bb+(dz/gridz)+(r-1)*(2*dz/gridz);
                  element=[xp,yq,zr];
                  [insi,t0,t]=trm_is_inside(smpl,s0,s,element);
                  if insi==1
                      t0_out=0;
                      t_out=0;
                      for smpl_n2=1:rows
                           if smpl_n ~= smpl_n2
                                smpl_out=all_smpl(smpl_n2);
                                [tt0,tt,outsid0,outsid] = trm_get_t_t0_distances_VEI_out(smpl_out,element,s0,s);
                                if outsid0 == 1
                                    t0_out = t0_out + tt0;
                                end 
                                if outsid == 1
                                    t_out = t_out + tt;
                                end 
                           end    
                      end
                      mm=mm+1;
                      M_smpl_n= M_smpl_n+1;
                      t0=t0+t0_out;
                      t=t+t_out;
                      sum_absorp=sum_absorp + exp(-1.0*(mu_Ei*t0+mu_Ef*t))*delta_V_smpl_n;
                  end
              end
          end
      end
      
      volume=volume+ M_smpl_n*delta_V_smpl_n;
  end
  absorp=sum_absorp/volume;
end

