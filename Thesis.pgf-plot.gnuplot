set table "Thesis.pgf-plot.table"; set format "%.5f"
set format "%.7e";; set samples 50, 50; set dummy x,y; set isosamples 50, 50; splot [x=-2*pi:2*pi] [y=-2*pi:2*pi] sin(sqrt(x**2 + y**2));
