function tidyprint(x,y,filename)
% print out file into home directory, using nice renderer

start = getenv('HOME');
set(gcf,'units','centimeters');
set(gcf, 'PaperPositionMode', 'manual');
set(gcf,'papersize',[x,y])
set(gcf,'paperposition',[0,0,x,y])
set(gcf, 'renderer', 'painters');

print(gcf,strcat(start,filename,'.png'),'-dpng');
print(gcf,strcat(start,filename,'.eps'),'-depsc');
