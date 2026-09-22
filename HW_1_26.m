clearvars
%establish our n and x values 
n=linspace(-5,5,11);
x=zeros(11, 1);
u=zeros(11, 1);
d=zeros(11, 1);

x(n==0)=2;
x(n==-1)=2;
x(n==1)=-4;
x(n==2)=-4;
% at this point x should be x[n] from the problem
d(n==0)=1;
u(n>=0)=1;

% problem 2.6a
figure
% going to get x[-n]
x_a = flip(x);
stem(n, x_a.*u);
title("problem 2.6a")
ylim([-5 5]);

%problem 2.6b
figure
x_b = x;
u_b = flip(u);
stem(n, x_b.*u_b)
ylim([-5 5]);
title("problem 2.6b")

%problem 2.6c
figure
x_c = x;
u_c=zeros(11, 1);
u_c(n>=2) = 1;
stem(n, x_c.*u_c)
ylim([-5 5]);
title("problem 2.6c")

%problem 2.6d
figure
x_d=x;
u_d=zeros(11, 1);
u_d(n>=-2) =1;
stem(n, x_d.*u_d)
ylim([-5 5]);
title("problem 2.6d")


%problem 2.6e
figure
x_e= x;
d_e = zeros(11, 1);
d_e(n==1) =1;
stem(n, x_d.*d_e)
ylim([-5 5]);
title("problem 2.6e")


% problem 2.6f
figure
x_f = x;
d_f_1 = d;
d_f_2= zeros(11, 1);
d_f_2(n==2) =1;
d_f = d_f_1 + d_f_2;
stem(n, x_f.*d_f)
title("problem 2.6f")
ylim([-5 5]);

figList = findall(0, 'Type', 'figure'); % Get handles of all open figures
savefig(figList, 'allFigures_26.fig'); 
