%read text file as table
cassini=readtable('Cassinidata.txt');
%Change table's variable names the way yu want
cassini.Properties.VariableNames{1} = 'yr';
cassini.Properties.VariableNames{2} = 'mth';
cassini.Properties.VariableNames{3} = 'dy';
cassini.Properties.VariableNames{4} = 'x';
cassini.Properties.VariableNames{5} = 'y';
cassini.Properties.VariableNames{6} = 'z';
%read text file as table
planets= readtable('Planetsdata.txt');
%Change table's variable names the way yu want
planets.Properties.VariableNames{1} = 'Planet';
planets.Properties.VariableNames{2} = 'Radius';
planets.Planet{1} = 'Mercury';
planets.Planet{2} = 'Venus';
planets.Planet{3} = 'Earth';
planets.Planet{4} = 'Mars';
planets.Planet{5} = 'Jupiter';
planets.Planet{6} = 'Saturn';
planets.Planet{7} = 'Uranus';
planets.Planet{8} = 'Neptune';
theta= linspace(0,2*pi);
%Just to buy some time for recording the video :p
p=10
%loop to point out the current year for the plot 
for k = min(cassini.yr):1:max(cassini.yr)
    title([k])
    pause(p);
    %plot for planet's orbits
for i=1:6
    hold on
    plot(planets.Radius(i)*cos(theta),planets.Radius(i)*sin(theta),":k",'MarkerSize',2);
end
%possition of our shuttle
     plot(cassini.x(cassini.yr==k),cassini.y(cassini.yr==k),'go','MarkerSize',1);
     hold on
     xlabel('x')
     ylabel('y')
     p=2
end
