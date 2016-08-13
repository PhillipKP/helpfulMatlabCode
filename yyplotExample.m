% This is a script which shows how to use the 
% groupColorsOnyyplot

y1 = exp(-(xaxis - 50).^2 );

y2 = exp(-(xaxis - 55).^2 );

y3 = exp(-(xaxis - 70).^2 );


y4 = 4*exp(-(xaxis - 70).^2 );

% All the arrays in datagroup1 are plotted using the left y axis
datagroup1{1} = y1;
datagroup1{2} = y2;
datagroup1{3} = y3;


% All the arrays in datagroup2 are plotting using the right y axis
datagroup2{1} = y4

% This indepdent variable to plot over
xaxisarray = 1:100;

close all

colorCellArray{1} = [1 0 0]
colorCellArray{2} = [0 .8 0]

figure;
[ax,h] = ...
    groupColorsOnyyplot(xaxisarray, datagroup1, datagroup2, colorCellArray)

lh = legend([h{1} h{2} h{5}],'Gauss 1','Gauss 2','Tango')
set(lh, 'Position',[0.76 0.83 0.0 0.00])
legend boxoff   
set(ax(1),'FontSize',10)
set(ax(2),'FontSize',10)