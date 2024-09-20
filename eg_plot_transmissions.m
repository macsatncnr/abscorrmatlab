%prism triangle rectangle mu=4
twotheta_angs="twotheta_angles_prism_mu_4.mat";
theta_angs="theta_angles_prism_mu_4.mat";
transm= "transmission_prism_mu_4.mat";
fig_title="Prism triangle rectangle \mu=4";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%prism triangle rectangle mu=2
twotheta_angs="twotheta_angles_prism.mat";
theta_angs="theta_angles_prism.mat";
transm= "transmission_prism.mat";
fig_title="Prism triangle rectangle \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%prism equilateral mu=4
twotheta_angs="twotheta_angles_prism_equ_mu_4.mat";
theta_angs="theta_angles_prism_equ_mu_4.mat";
transm= "transmission_prism_equ_mu_4.mat";
fig_title="Prism Equilateral Triangle \mu=4";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%prism equilateral mu=2
twotheta_angs="twotheta_angles_prism_equ.mat";
theta_angs="theta_angles_prism_equ.mat";
transm= "transmission_prism_equ.mat";
fig_title="Prism Equilateral Triangle \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%half cylinder mu=2
twotheta_angs="twotheta_angles_half_cyl.mat";
theta_angs="theta_angles_half_cyl.mat";
transm= "transmission_half_cyl.mat";
fig_title="Half cylinder \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%repeat:
%cylinder theta-twotheta mu=2
twotheta_angs="twotheta_angles_cyl.mat";
theta_angs="theta_angles_cyl.mat";
transm= "transmission_cyl.mat";
fig_title="cylinder \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%multi samples mu=2
twotheta_angs="twotheta_angles_multi.mat";
theta_angs="theta_angles_multi.mat";
transm= "transmission_multi.mat";
fig_title="box, sphere and cylinder \mu=2";
trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%3 coins sample mu=2
twotheta_angs="twotheta_angles_3_coins.mat";
theta_angs="theta_angles_3_coins.mat";
transm= "transmission_3_coins.mat";
fig_title="3 cylinders slabs r=5.0 l=1.5 \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%cylinder rod 90d mu=2  r=0.5 l=4
twotheta_angs="cylinder_rod_90d__twotheta_angles_cyl.mat";
theta_angs="cylinder_rod_90d__theta_angles_cyl.mat";
transm= "cylinder_rod_90d__transmission_cyl.mat";
fig_title="cylinder rod r=0.5, l=4 \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%cylinder rod 90d mu=4  r=0.5 l=4
twotheta_angs="cylinder_rod_90d_mu_4_twotheta_angles_cyl.mat";
theta_angs="cylinder_rod_90d_mu_4_theta_angles_cyl.mat";
transm= "cylinder_rod_90d_mu_4_transmission_cyl.mat";
fig_title="cylinder rod r=1, l=4 \mu=4";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%cuboid rod mu=2 lx=1 ly=4 lz=1
twotheta_angs="cuboid_rod_transmissiontwotheta_angles.mat";
theta_angs="cuboid_rod_transmissiontheta_angles.mat";
transm= "cuboid_rod_transmissiontransmission.mat";
fig_title="Cuboid rod 1x4x1, \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);
%xlim([0 180])

%cuboid rod mu=4 lx=1 ly=4 lz=1
twotheta_angs="cuboid_rod_transmission_mu_4twotheta_angles.mat";
theta_angs="cuboid_rod_transmission_mu_4theta_angles.mat";
transm= "cuboid_rod_transmission_mu_4transmission.mat";
fig_title="Cuboid rod 1x4x1, \mu=4";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);
%xlim([0 180])

%cube mu=2 lx=1 ly=1 lz=1
twotheta_angs="cube_transmissiontwotheta_angles.mat";
theta_angs="cube_transmissiontheta_angles.mat";
transm= "cube_transmissiontransmission.mat";
fig_title="Cube 1x1x1, \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%cube mu=4 lx=1 ly=4 lz=1
twotheta_angs="cube_transmission_mu_4twotheta_angles.mat";
theta_angs="cube_transmission_mu_4theta_angles.mat";
transm= "cube_transmission_mu_4transmission.mat";
fig_title="Cube 1x1x1, \mu=4";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);


%coin cylinder  mu=2 r=1 l=0.5
twotheta_angs="coin_cylinder_90d_transmissiontwotheta_angles_cyl.mat";
theta_angs="coin_cylinder_90d_transmissiontheta_angles_cyl.mat";
transm= "coin_cylinder_90d_transmissiontransmission_cyl.mat";
fig_title="Flat cylinder r=1 l=0.5, \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%coin cylinder  mu=4 r=1 l=0.5
twotheta_angs="coin_cylinder_90d_transmission_mu_4twotheta_angles_cyl.mat";
theta_angs="coin_cylinder_90d_transmission_mu_4theta_angles_cyl.mat";
transm= "coin_cylinder_90d_transmission_mu_4transmission_cyl.mat";
fig_title="Flat cylinder r=1 l=0.5, \mu=4";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);

%slab mu=2 lx=2 ly=0.5 lz=2
twotheta_angs="slab_transmissiontwotheta_angles.mat";
theta_angs="slab_transmissiontheta_angles.mat";
transm= "slab_transmissiontransmission.mat";
fig_title="slab 2x0.5x2, \mu=2";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);
%xlim([0 180])

%slab mu=4 lx=2 ly=0.5 lz=2
twotheta_angs="slab_transmission_mu_4twotheta_angles.mat";
theta_angs="slab_transmission_mu_4theta_angles.mat";
transm= "slab_transmission_mu_4transmission.mat";
fig_title="slab 2x0.5x2, \mu=4";
%trm_plot2d(theta_angs,twotheta_angs,transm,fig_title);
%xlim([0 180])











