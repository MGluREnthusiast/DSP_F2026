clearvars
seconds_to_use = 10;
f0=10;
fs=f0*2;
t = linspace(-seconds_to_use/2, seconds_to_use/2, seconds_to_use*fs);

%sq_wave = fouriersq(fs, length(t), f0, 33);


fig = figure;
sqwave_1 = fouriersq(11025, 6000, 10, 3);
sqwave_2 = fouriersq(11025, 6000, 10, 9);
sqwave_3 = fouriersq(11025, 6000, 10, 33);
plot(3*sqwave_1, 'DisplayName', 'N=3', 'LineWidth', 3)
hold on 
plot(3*sqwave_2, 'DisplayName', 'N=9', 'LineWidth', 2)
plot(3*sqwave_3, 'DisplayName', 'N=33', 'LineWidth', 1)
title("Problem 3.7")
legend();
hold off

save(fig, "HW_37_figure.fig")

function sq = fouriersq(fs, pts, f0, terms)
    T = 1/fs;
    n = 1:pts ;
    nT = n*T;
    w = 2*f0*pi;
    sq = zeros (1, length (nT) );
    for k = 1:2:2*terms
        sq = sq + (4/ (k*pi))*sin(k*w*nT) ;
    end
end