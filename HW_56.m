fs = 44100;

num = fir1(5, 8000/(fs/2), "low", rectwin(6));
[H, f] = freqz(num, 1, 1024, fs);

% Create & plot another hamming filter with 10 taps
num = fir1(8, 8000/(fs/2), "low", rectwin(9));
[H2, f2] = freqz(num, 1, 1024, fs);

num = fir1(11, 8000/(fs/2), "low", rectwin(12));
[H3, f3] = freqz(num, 1, 1024, fs);

num = fir1(14, 8000/(fs/2), "low", rectwin(15));
[H4, f4] = freqz(num, 1, 1024, fs);

% Plot the magnitude response for different filter lengths
figure (1); clf;
hold on;
a1 = plot(f,abs(H)); M1 = "N = 6";
a2 = plot(f2,abs(H2)); M2 = "N= 9";
a3 = plot(f3,abs(H3)); M3 = "N= 12";
a4 = plot(f4,abs(H4)); M4 = "N= 15";
legend([a1,a2,a3,a4], [M1, M2,M3,M4]);
xlabel("Magnitude response"); 