sphere_smpl=sphere_sample(2);
%sample = box_sample(0.5,1.0,3.0);
dd=[3,0,0];
s0=[1.0,0,0];
s= [1.0,0,0];

[tn0,tp0,tn,tp] = trm_get_t_to_distances(sphere_smpl.F,dd,s0,s)
%[t1,t2]=tdis(sphere_smpl.,s0,dd)
%[t01,t02]=todis(sphere_smpl.F,s,dd)
%[tt0,tt,outsid0,outsid] = trm_get_t_t0_distances_VEI_out(sample,dd,s0,s)

%[insi,t0,t]=trm_is_inside(sphere_smpl,s0,s0,dd)

