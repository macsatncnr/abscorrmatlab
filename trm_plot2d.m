function  trm_plot2d(theta_angls_f,twotheta_angls_f,transm_f,fig_title)


theta_ang=matfile(theta_angls_f);
theta_angles=theta_ang.theta_angles;
twotheta_ang=matfile(twotheta_angls_f);
twotheta_angles=twotheta_ang.twotheta_angles;
trans=matfile(transm_f);
transmission=trans.transmission;

contourf(theta_angles,twotheta_angles,transmission,150,'linecolor','none');
title(fig_title);
fontsize(30,"points");
xlabel("\theta");
ylabel("2\theta");
fontsize(25,"points");
colormap(jet);
aa=colorbar;
aa.Label.String="Transmissiom"
set(gcf,'Position',[10 10 900 400]);
