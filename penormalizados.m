clear all
%Primeiro nome sílaba 1 = 1,2 seg
%Primeiro nome sílaba 2 = 1,5 seg
%Segundo nome sílaba  1 = 1,7 seg
%Segundo nome sílaba  2 = 1,1 seg
[y,Fs] = audioread ('primeiro1.wav');
[x,Fsx] = audioread ('primeiro2.wav');
[z,Fsz] = audioread ('segundo1.wav');
[w,Fsw] = audioread ('segundo2.wav');
%Frequencia de amostragem dos sinais
Fs
Fsx
Fsz
Fsw

y=y(:,2);
x=x(:,2);
z=z(:,2);
w=w(:,2);

%Gráfico dos espectros de voz silábicos
figure('Name','Intervalos silábicos','NumberTitle','off')
subplot(2,2,1),plot(y)
title('Primeiro nome 1°silaba')
subplot(2,2,2),plot(x)
title('Primeiro nome 2°silaba')
subplot(2,2,3),plot(z)
title('Segundo nome 1°silaba')
subplot(2,2,4),plot(w)
title('Segundo nome 2°silaba')

%Duração (em segundos) dos áudios contendo as sílabas do meu nome
duracaoy=size(y,1)/Fs
duracaox=size(x,1)/Fsx
duracaoz=size(w,1)/Fsz
duracaow=size(z,1)/Fsw

%Quantidade de amostras em cada sinal
linhasy = size(y,1)
linhasx = size(x,1)
linhasz = size(z,1)
linhasw = size(w,1)

%Calcular a quantidade de multiplos de 20ms em cada intervalo
my=(duracaoy/0.20)
mx=(duracaox/0.20)
mz=(duracaoz/0.20)
mw=(duracaow/0.20)

% Se o áudio possui uma quantidadede multiplos então temos (X) intervalos de 20ms
intervaloy = floor(linhasy/my)
intervalox = floor(linhasx/mx)
intervaloz = floor(linhasz/mz)
intervalow = floor(linhasw/mw)

%cada intervalo de 30ms corresponde ao valor da variável intervalo
yseg1 = y(1:intervaloy);
yseg2 = y(intervaloy:2*intervaloy);
yseg3 = y(2*intervaloy:3*intervaloy);
yseg4 = y(3*intervaloy:4*intervaloy);
yseg5 = y(4*intervaloy:5*intervaloy);
yseg6 = y(5*intervaloy:6*intervaloy);

yseg1 = yseg1/max(yseg1);
yseg2 = yseg2/max(yseg2);
yseg3 = yseg3/max(yseg3);
yseg4 = yseg4/max(yseg4);
yseg5 = yseg5/max(yseg5);
yseg6 = yseg6/max(yseg6);


xseg1 = x(1:intervalox);
xseg2 = x(intervalox:2*intervalox);
xseg3 = x(2*intervalox:3*intervalox);
xseg4 = x(3*intervalox:4*intervalox);
xseg5 = x(4*intervalox:5*intervalox);
xseg6 = x(5*intervalox:6*intervalox);
xseg7 = x(6*intervalox:7*intervalox);

xseg1 = xseg1/max(xseg1);
xseg2 = xseg2/max(xseg2);
xseg3 = xseg3/max(xseg3);
xseg4 = xseg4/max(xseg4);
xseg5 = xseg5/max(xseg5);
xseg6 = xseg4/max(xseg6);
xseg7 = xseg5/max(xseg7);


zseg1 = z(1:intervaloz);
zseg2 = z(intervaloz:2*intervaloz);
zseg3 = z(2*intervaloz:3*intervaloz);
zseg4 = z(3*intervaloz:4*intervaloz);
zseg5 = z(4*intervaloz:5*intervaloz);

zseg1 = zseg1/max(zseg1);
zseg2 = zseg2/max(zseg2);
zseg3 = zseg3/max(zseg3);
zseg4 = zseg2/max(zseg4);
zseg5 = zseg3/max(zseg5);


wseg1 = w(1:intervalow);
wseg2 = w(intervalow:2*intervalow);
wseg3 = w(2*intervalow:3*intervalow);
wseg4 = w(3*intervalow:4*intervalow);
wseg5 = w(4*intervalow:5*intervalow);
wseg6 = w(5*intervalow:6*intervalow);
wseg7 = w(6*intervalow:7*intervalow);
wseg8 = w(7*intervalow:8*intervalow);

wseg1 = wseg1/max(wseg1);
wseg2 = wseg2/max(wseg2);
wseg3 = wseg3/max(wseg3);
wseg4 = wseg4/max(wseg4);
wseg5 = wseg5/max(wseg5);
wseg6 = wseg6/max(wseg6);
wseg7 = wseg7/max(wseg7);
wseg8 = wseg8/max(wseg8);

%Plotagem do histograma das Figuras correspondentes a cada sílaba. 
figure('Name','Histogramas Primeiro nome 1°silaba','NumberTitle','off')
subplot(2,3,1),hist(yseg1)
title('0-30ms')
subplot(2,3,2),hist(yseg2)
title('30ms-60ms')
subplot(2,3,3),hist(yseg3)
title('60ms-90ms')
subplot(2,3,4),hist(yseg4)
title('90-120ms')
subplot(2,3,5),hist(yseg5)
title('80-100ms')
subplot(2,3,6),hist(yseg6)
title('100ms-120ms')

figure('Name','Histogramas Primeiro nome 2°silaba','NumberTitle','off')
subplot(3,3,1),hist(xseg1)
title('0-30ms')
subplot(3,3,2),hist(xseg2)
title('30ms-60ms')
subplot(3,3,3),hist(xseg3)
title('60ms-90ms')
subplot(3,3,4),hist(xseg4)
title('90-120ms')
subplot(3,3,5),hist(xseg5)
title('120-150ms')
subplot(3,3,6),hist(xseg6)
title('100ms-120ms')
subplot(3,3,7),hist(xseg7)
title('120ms-140ms')

figure('Name','Histogramas Segundo nome 1°silaba','NumberTitle','off')
subplot(2,3,1),hist(zseg1);
title('0-30ms')
subplot(2,3,2),hist(zseg2);
title('30ms-60ms')
subplot(2,3,3),hist(zseg3);
title('60ms-90ms')
subplot(2,3,4),hist(zseg4);
title('80-100ms')
subplot(2,3,5),hist(zseg5);
title('100ms-120ms')

figure('Name','Histogramas Segundo nome 2°silaba','NumberTitle','off')
subplot(3,3,1),hist(wseg1);
title('0-30ms')
subplot(3,3,2),hist(wseg2);
title('30ms-60ms')
subplot(3,3,3),hist(wseg3);
title('60ms-90ms')
subplot(3,3,4),hist(wseg4);
title('80-100ms');
subplot(3,3,5),hist(wseg5);
title('100ms-120ms')
subplot(3,3,6),hist(wseg6);
title('120ms-140ms')
subplot(3,3,7),hist(wseg7);
title('140ms-160ms')
subplot(3,3,8),hist(wseg8)
title('160ms-180ms')


% yseg vetor de dados a ser analisado
Ny1=length(yseg1)
Ny2=length(yseg2)
Ny3=length(yseg3)
Ny4=length(yseg4)
Ny5=length(yseg5)
Ny6=length(yseg6)

Nx1=length(xseg1)
Nx2=length(xseg2)
Nx3=length(xseg3)
Nx4=length(xseg4)
Nx5=length(xseg5)
Nx6=length(xseg6)
Nx7=length(xseg7)

Nz1=length(zseg1)
Nz2=length(zseg2)
Nz3=length(zseg3)
Nz4=length(zseg4)
Nz5=length(zseg5)


Nw1=length(wseg1)
Nw2=length(wseg2)
Nw3=length(wseg3)
Nw4=length(wseg4)
Nw5=length(wseg5)
Nw6=length(wseg6)
Nw7=length(wseg7)
Nw8=length(wseg8)

% estabelece o número de amostras da FFT
Nfft=1024;
p = 12
% yseg -> vetor de dados a ser analisado 
% p -> dimensÃ£o da matriz de autocorrelação

% pontos da PSD a serem plotados 
freq= transpose([0:Nfft-1])/(Nfft-0.5);

% calcula o periodograma
P_pery1=(1/Ny1)*abs(fftshift(fft(yseg1,Nfft))).^2;
P_pery2=(1/Ny2)*abs(fftshift(fft(yseg2,Nfft))).^2;
P_pery3=(1/Ny3)*abs(fftshift(fft(yseg3,Nfft))).^2;
P_pery4=(1/Ny4)*abs(fftshift(fft(yseg4,Nfft))).^2;
P_pery5=(1/Ny5)*abs(fftshift(fft(yseg5,Nfft))).^2;
P_pery6=(1/Ny6)*abs(fftshift(fft(yseg6,Nfft))).^2;

P_perx1=(1/Nx1)*abs(fftshift(fft(xseg1,Nfft))).^2;
P_perx2=(1/Nx2)*abs(fftshift(fft(xseg2,Nfft))).^2;
P_perx3=(1/Nx3)*abs(fftshift(fft(xseg3,Nfft))).^2;
P_perx4=(1/Nx4)*abs(fftshift(fft(xseg4,Nfft))).^2;
P_perx5=(1/Nx5)*abs(fftshift(fft(xseg5,Nfft))).^2;
P_perx6=(1/Nx6)*abs(fftshift(fft(xseg6,Nfft))).^2;
P_perx7=(1/Nx7)*abs(fftshift(fft(xseg7,Nfft))).^2;

P_perz1=(1/Nx1)*abs(fftshift(fft(zseg1,Nfft))).^2;
P_perz2=(1/Nx2)*abs(fftshift(fft(zseg2,Nfft))).^2;
P_perz3=(1/Nx3)*abs(fftshift(fft(zseg3,Nfft))).^2;
P_perz4=(1/Nx4)*abs(fftshift(fft(zseg4,Nfft))).^2;
P_perz5=(1/Nx5)*abs(fftshift(fft(zseg5,Nfft))).^2;

P_perw1=(1/Nw1)*abs(fftshift(fft(wseg1,Nfft))).^2;
P_perw2=(1/Nw2)*abs(fftshift(fft(wseg2,Nfft))).^2;
P_perw3=(1/Nw3)*abs(fftshift(fft(wseg3,Nfft))).^2;
P_perw4=(1/Nw4)*abs(fftshift(fft(wseg4,Nfft))).^2;
P_perw5=(1/Nw5)*abs(fftshift(fft(wseg5,Nfft))).^2;
P_perw6=(1/Nw6)*abs(fftshift(fft(wseg6,Nfft))).^2;
P_perw7=(1/Nw7)*abs(fftshift(fft(wseg7,Nfft))).^2;
P_perw8=(1/Nw8)*abs(fftshift(fft(wseg8,Nfft))).^2;

% estima os coeficientes de correlação para k=0,1,...,p 
for k=1:(p+1) 
	rXy1(k,1)=(1/Ny1)*sum(y(1:Ny1-k+1).*y(k:Ny1));
  rXy2(k,1)=(1/Ny2)*sum(y(1:Ny2-k+1).*y(k:Ny2));
  rXy3(k,1)=(1/Ny3)*sum(y(1:Ny3-k+1).*y(k:Ny3));
  rXy4(k,1)=(1/Ny4)*sum(y(1:Ny4-k+1).*y(k:Ny4));
  rXy5(k,1)=(1/Ny5)*sum(y(1:Ny5-k+1).*y(k:Ny5));
  rXy6(k,1)=(1/Ny6)*sum(y(1:Ny6-k+1).*y(k:Ny6));
  
	rXx1(k,1)=(1/Nx1)*sum(x(1:Nx1-k+1).*x(k:Nx1));
  rXx2(k,1)=(1/Nx2)*sum(x(1:Nx2-k+1).*x(k:Nx2));
  rXx3(k,1)=(1/Nx3)*sum(x(1:Nx3-k+1).*x(k:Nx3));
  rXx4(k,1)=(1/Nx4)*sum(x(1:Nx4-k+1).*x(k:Nx4));
  rXx5(k,1)=(1/Nx5)*sum(x(1:Nx5-k+1).*x(k:Nx5));
  rXx6(k,1)=(1/Nx6)*sum(x(1:Nx6-k+1).*x(k:Nx6));
  rXx7(k,1)=(1/Nx7)*sum(x(1:Nx7-k+1).*x(k:Nx7));
  
  rXz1(k,1)=(1/Nz1)*sum(z(1:Nz1-k+1).*z(k:Nz1));
  rXz2(k,1)=(1/Nz2)*sum(z(1:Nz2-k+1).*z(k:Nz2));
  rXz3(k,1)=(1/Nz3)*sum(z(1:Nz3-k+1).*z(k:Nz3));
  rXz4(k,1)=(1/Nz4)*sum(z(1:Nz4-k+1).*z(k:Nz4));
  rXz5(k,1)=(1/Nz5)*sum(z(1:Nz5-k+1).*z(k:Nz5));
  
  rXw1(k,1)=(1/Nw1)*sum(w(1:Nw1-k+1).*w(k:Nw1));
  rXw2(k,1)=(1/Nw2)*sum(w(1:Nw2-k+1).*w(k:Nw2));
  rXw3(k,1)=(1/Nw3)*sum(w(1:Nw3-k+1).*w(k:Nw3));
  rXw4(k,1)=(1/Nw4)*sum(w(1:Nw4-k+1).*w(k:Nw4));
  rXw5(k,1)=(1/Nw5)*sum(w(1:Nw5-k+1).*w(k:Nw5));
  rXw6(k,1)=(1/Nw6)*sum(w(1:Nw6-k+1).*w(k:Nw6));
  rXw7(k,1)=(1/Nw7)*sum(w(1:Nw7-k+1).*w(k:Nw7));
  rXw8(k,1)=(1/Nw8)*sum(w(1:Nw8-k+1).*w(k:Nw8));
end 
ry1=rXy1(2:p+1)
ry2=rXy2(2:p+1)
ry3=rXy3(2:p+1)
ry4=rXy4(2:p+1)
ry5=rXy5(2:p+1)
ry6=rXy6(2:p+1)

rx1=rXx1(2:p+1)
rx2=rXx2(2:p+1)
rx3=rXx3(2:p+1)
rx4=rXx4(2:p+1)
rx5=rXx5(2:p+1)
rx6=rXx6(2:p+1)
rx7=rXx7(2:p+1)

rz1=rXz1(2:p+1)
rz2=rXz2(2:p+1)
rz3=rXz3(2:p+1)
rz4=rXz4(2:p+1)
rz5=rXz5(2:p+1)

rw1=rXw1(2:p+1)
rw2=rXw2(2:p+1)
rw3=rXw3(2:p+1)
rw4=rXw4(2:p+1)
rw5=rXw5(2:p+1)
rw6=rXw6(2:p+1)
rw7=rXw7(2:p+1)
rw8=rXw8(2:p+1)

% preenche a matriz de autocorrelação 
for i=1:p 
	for j=1:p
		Ry1(i,j)=rXy1(abs(i-j)+1);
    Ry2(i,j)=rXy2(abs(i-j)+1);
    Ry3(i,j)=rXy3(abs(i-j)+1);
    Ry4(i,j)=rXy4(abs(i-j)+1);
    Ry5(i,j)=rXy5(abs(i-j)+1);
    Ry6(i,j)=rXy6(abs(i-j)+1);
    
    Rx1(i,j)=rXx1(abs(i-j)+1);
    Rx2(i,j)=rXx2(abs(i-j)+1);
    Rx3(i,j)=rXx3(abs(i-j)+1);
    Rx4(i,j)=rXx4(abs(i-j)+1);
    Rx5(i,j)=rXx5(abs(i-j)+1);
    Rx6(i,j)=rXx6(abs(i-j)+1);
    Rx7(i,j)=rXx7(abs(i-j)+1);
    
    Rz1(i,j)=rXz1(abs(i-j)+1);
    Rz2(i,j)=rXz2(abs(i-j)+1);
    Rz3(i,j)=rXz3(abs(i-j)+1);
    Rz4(i,j)=rXz4(abs(i-j)+1);
    Rz5(i,j)=rXz5(abs(i-j)+1);
    
    Rw1(i,j)=rXw1(abs(i-j)+1);
    Rw2(i,j)=rXw2(abs(i-j)+1);
    Rw3(i,j)=rXw3(abs(i-j)+1);
    Rw4(i,j)=rXw4(abs(i-j)+1);
    Rw5(i,j)=rXw5(abs(i-j)+1);
    Rw6(i,j)=rXw6(abs(i-j)+1);
    Rw7(i,j)=rXw7(abs(i-j)+1);
    Rw8(i,j)=rXw8(abs(i-j)+1);
	end
end
% Resolve as equações lineares para obter os coeficientes AR 
ay1=inv(Ry1)*ry1
ay2=inv(Ry2)*ry2
ay3=inv(Ry3)*ry3
ay4=inv(Ry4)*ry4
ay5=inv(Ry5)*ry5
ay6=inv(Ry6)*ry6

ax1=inv(Rx1)*rx1
ax2=inv(Rx2)*rx2
ax3=inv(Rx3)*rx3
ax4=inv(Rx4)*rx4
ax5=inv(Rx5)*rx5
ax6=inv(Rx6)*rx6
ax7=inv(Rx7)*rx7

az1=inv(Rz1)*rz1
az2=inv(Rz2)*rz2
az3=inv(Rz3)*rz3
az4=inv(Rz4)*rz4
az5=inv(Rz5)*rz5

aw1=inv(Rw1)*rw1
aw2=inv(Rw2)*rw2
aw3=inv(Rw3)*rw3
aw4=inv(Rw4)*rw4
aw5=inv(Rw5)*rw5
aw6=inv(Rw6)*rw6
aw7=inv(Rw7)*rw7
aw8=inv(Rw8)*rw8

% Encontra a variância do ruí­do 
varuy1=rXy1(1)-transpose(ay1)*ry1
varuy2=rXy2(1)-transpose(ay2)*ry2
varuy3=rXy3(1)-transpose(ay3)*ry3
varuy4=rXy4(1)-transpose(ay4)*ry4
varuy5=rXy5(1)-transpose(ay5)*ry5
varuy6=rXy6(1)-transpose(ay6)*ry6

varux1=rXx1(1)-transpose(ax1)*rx1
varux2=rXx2(1)-transpose(ax2)*rx2
varux3=rXx3(1)-transpose(ax3)*rx3
varux4=rXx4(1)-transpose(ax4)*rx4
varux5=rXx5(1)-transpose(ax5)*rx5
varux6=rXx6(1)-transpose(ax6)*rx6
varux7=rXx7(1)-transpose(ax7)*rx7

varuz1=rXz1(1)-transpose(az1)*rz1
varuz2=rXz2(1)-transpose(az2)*rz2
varuz3=rXz3(1)-transpose(az3)*rz3
varuz4=rXz4(1)-transpose(az4)*rz4
varuz5=rXz5(1)-transpose(az5)*rz5
 
varuw1=rXw1(1)-transpose(aw1)*rw1
varuw2=rXw2(1)-transpose(aw2)*rw2
varuw3=rXw3(1)-transpose(aw3)*rw3
varuw4=rXw4(1)-transpose(aw4)*rw4
varuw5=rXw5(1)-transpose(aw5)*rw5
varuw6=rXw6(1)-transpose(aw6)*rw6
varuw7=rXw7(1)-transpose(aw7)*rw7
varuw8=rXw8(1)-transpose(aw8)*rw8

% Calcula o denominador da DSP do processo AR 
deny1=abs(fftshift(fft([1;-ay1],Nfft))).^2;
deny2=abs(fftshift(fft([1;-ay2],Nfft))).^2;
deny3=abs(fftshift(fft([1;-ay3],Nfft))).^2;
deny4=abs(fftshift(fft([1;-ay4],Nfft))).^2;
deny5=abs(fftshift(fft([1;-ay5],Nfft))).^2;
deny6=abs(fftshift(fft([1;-ay6],Nfft))).^2;

denx1=abs(fftshift(fft([1;-ax1],Nfft))).^2;
denx2=abs(fftshift(fft([1;-ax2],Nfft))).^2;
denx3=abs(fftshift(fft([1;-ax3],Nfft))).^2;
denx4=abs(fftshift(fft([1;-ax4],Nfft))).^2;
denx5=abs(fftshift(fft([1;-ax5],Nfft))).^2;
denx6=abs(fftshift(fft([1;-ax6],Nfft))).^2;
denx7=abs(fftshift(fft([1;-ax7],Nfft))).^2;

denz1=abs(fftshift(fft([1;-az1],Nfft))).^2;
denz2=abs(fftshift(fft([1;-az2],Nfft))).^2;
denz3=abs(fftshift(fft([1;-az3],Nfft))).^2;
denz4=abs(fftshift(fft([1;-az4],Nfft))).^2;
denz5=abs(fftshift(fft([1;-az5],Nfft))).^2;

denw1=abs(fftshift(fft([1;-aw1],Nfft))).^2;
denw2=abs(fftshift(fft([1;-aw2],Nfft))).^2;
denw3=abs(fftshift(fft([1;-aw3],Nfft))).^2;
denw4=abs(fftshift(fft([1;-aw4],Nfft))).^2;
denw5=abs(fftshift(fft([1;-aw5],Nfft))).^2;
denw6=abs(fftshift(fft([1;-aw6],Nfft))).^2;
denw7=abs(fftshift(fft([1;-aw7],Nfft))).^2;
denw8=abs(fftshift(fft([1;-aw8],Nfft))).^2;

% Calcula da DSP do processo AR 
P_ARy1=varuy1./deny1;
P_ARy2=varuy2./deny2;
P_ARy3=varuy3./deny3;
P_ARy4=varuy4./deny4;
P_ARy5=varuy5./deny5;
P_ARy6=varuy6./deny6;

P_ARx1=varux1./denx1;
P_ARx2=varux2./denx2;
P_ARx3=varux3./denx3;
P_ARx4=varux4./denx4;
P_ARx5=varux5./denx5;
P_ARx6=varux6./denx6;
P_ARx7=varux7./denx7;

P_ARz1=varuz1./denz1;
P_ARz2=varuz2./denz2;
P_ARz3=varuz3./denz3;
P_ARz4=varuz4./denz4;
P_ARz5=varuz5./denz5;

P_ARw1=varuw1./denw1;
P_ARw2=varuw2./denw2;
P_ARw3=varuw3./denw3;
P_ARw4=varuw4./denw4;
P_ARw5=varuw5./denw5;
P_ARw6=varuw6./denw6;
P_ARw7=varuw7./denw7;
P_ARw8=varuw8./denw8;

%Plota as DSPs. Informe-se sobre formatação dos gráficos 
%formate cada gráfico de acordo com seu gosto.
%Lembre de calcular 10*log10 tanto par P_per quanto para 
%P_AR. 

h = figure('Name','1°nome 1°sílaba-DEP-Periodograma = Vermelho,Pocesso AR = Azul  ','NumberTitle','off')
subplot(3,3,1),plot(freq, P_pery1, 'r', freq, P_ARy1, 'b')
title('1°nome 1°sílaba-20ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,2),plot(freq, P_pery2, 'r', freq, P_ARy2, 'b')
title('1°nome 1°sílaba-40ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,3),plot(freq, P_pery3, 'r', freq, P_ARy3, 'b')
title('1°nome 1°sílaba-60ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,4),plot(freq, P_pery4, 'r', freq, P_ARy4, 'b')
title('1°nome 1°sílaba-80ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,5),plot(freq, P_pery5, 'r', freq, P_ARy5, 'b')
title('1°nome 1°sílaba-100ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,6),plot(freq, P_pery6, 'r', freq, P_ARy6, 'b')
title('1°nome 1°sílaba-120ms ')
ylim([0 0.003])
xlim([0.4 0.6])

h = figure('Name','1°nome 2°sílaba-DEP = Vermelho,Pocesso AR = Azul  ','NumberTitle','off')
subplot(3,3,1),plot(freq, P_perx1, 'r', freq, P_ARx1, 'b')
title('1°nome 2°sílaba 0-20ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,2),plot(freq, P_perx2, 'r', freq, P_ARx2, 'b')
title('1°nome 2°sílaba 20-40ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,3),plot(freq, P_perx3, 'r', freq, P_ARx3, 'b')
title('1°nome 2°sílaba 40-60ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,4),plot(freq, P_perx4, 'r', freq, P_ARx4, 'b')
title('1°nome 2°sílaba 60-80ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,5),plot(freq, P_perx5, 'r', freq, P_ARx5, 'b')
title('1°nome 2°sílaba 80-100ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,6),plot(freq, P_perx6, 'r', freq, P_ARx6, 'b')
title('1°nome 2°sílaba 100-120ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,7),plot(freq, P_perx7, 'r', freq, P_ARx7, 'b')
title('1° nome 2°sílaba 120-140ms ')
ylim([0 0.003])
xlim([0.4 0.6])

h = figure('Name','2°nome 1°sílaba-DEP = Vermelho,Pocesso AR = Azul  ','NumberTitle','off')
subplot(3,3,1),plot(freq, P_perz1, 'r', freq, P_ARz1, 'b')
title('2°nome 1°sílaba 0-20ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,2),plot(freq, P_perz2, 'r', freq, P_ARz2, 'b')
title('2°nome 1°sílaba 20-40ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,3),plot(freq, P_perz3, 'r', freq, P_ARz3, 'b')
title('2°nome 1°sílaba 40-60ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,4),plot(freq, P_perz4, 'r', freq, P_ARz4, 'b')
title('2°nome 1°sílaba 60-80ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,5),plot(freq, P_perz5, 'r', freq, P_ARz5, 'b')
title('2°nome 1°sílaba 80-100ms ')
ylim([0 0.003])
xlim([0.4 0.6])

h = figure('Name','2°nome 2°sílaba-DEP = Vermelho,Pocesso AR = Azul  ','NumberTitle','off')
subplot(3,3,1),plot(freq, P_perw1, 'r', freq, P_ARw1, 'b')
title('2°nome 2°sílaba 0-20ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,2),plot(freq, P_perw2, 'r', freq, P_ARw2, 'b')
title('2°nome 2°sílaba 20-40ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,3),plot(freq, P_perw3, 'r', freq, P_ARw3, 'b')
title('2°nome 2°sílaba 40-60ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,4),plot(freq, P_perw4, 'r', freq, P_ARw4, 'b')
title('2°nome 2°sílaba 60-80ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,5),plot(freq, P_perw5, 'r', freq, P_ARw5, 'b')
title('2°nome 2°sílaba 80-100ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,6),plot(freq, P_perw6, 'r', freq, P_ARw6, 'b')
title('2°nome 2°sílaba 100-120ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,7),plot(freq, P_perw7, 'r', freq, P_ARw7, 'b')
title('2° nome 2°sílaba 120-140ms ')
ylim([0 0.003])
xlim([0.4 0.6])

subplot(3,3,8),plot(freq, P_perw8, 'r', freq, P_ARw8, 'b')
title('2° nome 2°sílaba 140-160ms ')
ylim([0 0.003])
xlim([0.4 0.6])

%Agora aplicando a função logarítmica em P_pery e P_ARy
P_pery1=10*log10(P_pery1);
P_ARy1=10*log10(P_ARy1);
P_pery2=10*log10(P_pery2);
P_ARy2=10*log10(P_ARy2);
P_pery3=10*log10(P_pery3);
P_ARy3=10*log10(P_ARy3);
P_pery4=10*log10(P_pery4);
P_ARy4=10*log10(P_ARy4);
P_pery5=10*log10(P_pery5);
P_ARy5=10*log10(P_ARy5);
P_pery6=10*log10(P_pery6);
P_ARy6=10*log10(P_ARy6);

P_perx1=10*log10(P_perx1);
P_ARx1=10*log10(P_ARx1);
P_perx2=10*log10(P_perx2);
P_ARx2=10*log10(P_ARx2);
P_perx3=10*log10(P_perx3);
P_ARx3=10*log10(P_ARx3);
P_perx4=10*log10(P_perx4);
P_ARx4=10*log10(P_ARx4);
P_perx5=10*log10(P_perx5);
P_ARx5=10*log10(P_ARx5);
P_perx6=10*log10(P_perx6);
P_ARx6=10*log10(P_ARx6);
P_perx7=10*log10(P_perx7);
P_ARx7=10*log10(P_ARx7);

P_perz1=10*log10(P_perz1);
P_ARz1=10*log10(P_ARz1);
P_perz2=10*log10(P_perz2);
P_ARz2=10*log10(P_ARz2);
P_perz3=10*log10(P_perz3);
P_ARz3=10*log10(P_ARz3);
P_perz4=10*log10(P_perz4);
P_ARz4=10*log10(P_ARz4);
P_perz5=10*log10(P_perz5);
P_ARz5=10*log10(P_ARz5);

P_perw1=10*log10(P_perw1);
P_ARw1=10*log10(P_ARw1);
P_perw2=10*log10(P_perw2);
P_ARw2=10*log10(P_ARw2);
P_perw3=10*log10(P_perw3);
P_ARw3=10*log10(P_ARw3);
P_perw4=10*log10(P_perw4);
P_ARw4=10*log10(P_ARw4);
P_perw5=10*log10(P_perw5);
P_ARw5=10*log10(P_ARw5);
P_perw6=10*log10(P_perw6);
P_ARw6=10*log10(P_ARw6);
P_perw7=10*log10(P_perw7);
P_ARw7=10*log10(P_ARw7);
P_perw8=10*log10(P_perw8);
P_ARw8=10*log10(P_ARw8);

%PLotando as DSP com a aplicação da função logaritmica 
h = figure('Name','1°nome 1°sílaba-DEP-Periodograma = Vermelho,Pocesso AR = Azul  ','NumberTitle','off')
subplot(3,3,1),plot(freq, P_pery1, 'r', freq, P_ARy1, 'b')
title('1°nome 1°sílaba 0-20ms ')
ylim([-120 -20])
xlim([0 1])

subplot(3,3,2),plot(freq, P_pery2, 'r', freq, P_ARy2, 'b')
title('1°nome 1°sílaba 20-40ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,3),plot(freq, P_pery3, 'r', freq, P_ARy3, 'b')
title('1°nome 1°sílaba 40-60ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,4),plot(freq, P_pery4, 'r', freq, P_ARy4, 'b')
title('1°nome 1°sílaba 60-80ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,5),plot(freq, P_pery5, 'r', freq, P_ARy5, 'b')
title('1°nome 1°sílaba 80-100ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,6),plot(freq, P_pery6, 'r', freq, P_ARy6, 'b')
title('1°nome 1°sílaba 100-120ms ')
ylim([-70 0])
xlim([0 1])

g = figure('Name','1°nome 2°sílaba-DEP-Periodograma = Vermelho,Pocesso AR = Azul  ','NumberTitle','off')
subplot(3,3,1),plot(freq, P_perx1, 'r', freq, P_ARx1, 'b')
title('1°nome 2°sílaba 0-20ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,2),plot(freq, P_perx2, 'r', freq, P_ARx2, 'b')
title('1°nome 2°sílaba 20-40ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,3),plot(freq, P_perx3, 'r', freq, P_ARx3, 'b')
title('1°nome 2°sílaba 40-60ms ')
ylim([-100 0])
xlim([0 1])

subplot(3,3,4),plot(freq, P_perx4, 'r', freq, P_ARx4, 'b')
title('1°nome 2°sílaba 60-80ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,5),plot(freq, P_perx5, 'r', freq, P_ARx5, 'b')
title('1°nome 2°sílaba 80-100ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,6),plot(freq, P_perx6, 'r', freq, P_ARx6, 'b')
title('1°nome 2°sílaba 100-120ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,7),plot(freq, P_perx7, 'r', freq, P_ARx7, 'b')
title('1° nome 2°sílaba 120-140ms ')
ylim([-100 0])
xlim([0 1])

i = figure('Name','2°nome 1° sílaba-DEP-Periodograma = Vermelho,Pocesso AR = Azul  ','NumberTitle','off')
subplot(3,3,1),plot(freq, P_perz1, 'r', freq, P_ARz1, 'b')
title('2°nome 1°sílaba 0-20ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,2),plot(freq, P_perz2, 'r', freq, P_ARz2, 'b')
title('2°nome 1°sílaba 20-40ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,3),plot(freq, P_perz3, 'r', freq, P_ARz3, 'b')
title('2°nome 1°sílaba 40-60ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,4),plot(freq, P_perz4, 'r', freq, P_ARz4, 'b')
title('2°nome 1°sílaba 60-80ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,5),plot(freq, P_perz5, 'r', freq, P_ARz5, 'b')
title('2°nome 1°sílaba 80-100ms ')
ylim([-120 0])
xlim([0 1])

j = figure('Name','2°nome 2° sílaba-DEP-Periodograma = Vermelho, Pocesso AR = Azul  ','NumberTitle','off')
subplot(3,3,1),plot(freq, P_perw1, 'r', freq, P_ARw1, 'b')
title('2°nome 2°sílaba 0-20ms ')
ylim([-120 0])
xlim([0 1])

subplot(3,3,2),plot(freq, P_perw2, 'r', freq, P_ARw2, 'b')
title('2°nome 2°sílaba 20-40ms ')
ylim([-120 0])
xlim([0 1])


subplot(3,3,3),plot(freq, P_perw3, 'r', freq, P_ARw3, 'b')
title('2°nome 2°sílaba 40-60ms ')
ylim([-120 0])
xlim([0 1])


subplot(3,3,4),plot(freq, P_perw4, 'r', freq, P_ARw4, 'b')
title('2°nome 2°sílaba 60-80ms ')
ylim([-120 0])
xlim([0 1])


subplot(3,3,5),plot(freq, P_perw5, 'r', freq, P_ARw5, 'b')
title('2°nome 2°sílaba 80-100ms ')
ylim([-120 0])
xlim([0 1])


subplot(3,3,6),plot(freq, P_perw6, 'r', freq, P_ARw6, 'b')
title('2°nome 2°sílaba 100-120ms ')
ylim([-100 0])
xlim([0 1])


subplot(3,3,7),plot(freq, P_perw7, 'r', freq, P_ARw7, 'b')
title('2° nome 2°sílaba 120-140ms ')
ylim([-140 0])
xlim([0 1])

subplot(3,3,8),plot(freq, P_perw8, 'r', freq, P_ARw8, 'b')
title('2° nome 2°sílaba 140-160ms ')
ylim([-120 0])
xlim([0 1])

% GRÀFICOS DE AUTOCORRELAÇÃO CRUZADA
l = figure('Name','CORRELAÇÃO CRUZADA 1°NOME 1°SÍLABA','NumberTitle','off')
r= xcorr(yseg1,"unbiased")
subplot(3,2,1),plot(r)
title('1° nome 1°sílaba 0-20ms ')

r= xcorr(yseg2,"unbiased")
subplot(3,2,2),plot(r)
title('1° nome 1°sílaba 20-40ms ')

r= xcorr(yseg3,"unbiased")
subplot(3,2,3),plot(r)
title('1° nome 1°sílaba 40-60ms ')

r= xcorr(yseg4,"unbiased")
subplot(3,2,4),plot(r)
title('1° nome 1°sílaba 60-80ms ')

r= xcorr(yseg5,"unbiased")
subplot(3,2,5),plot(r)
title('1° nome 1°sílaba 80-100ms ')

r= xcorr(yseg6,"unbiased")
subplot(3,2,6),plot(r)
title('1° nome 1°sílaba 100-120ms ')

k = figure('Name','CORRELAÇÃO CRUZADA 1°NOME 2°SÍLABA','NumberTitle','off')
r= xcorr(xseg1,"unbiased")
subplot(3,3,1),plot(r)
title('1° nome 2°sílaba 0-20ms ')

r= xcorr(xseg2,"unbiased")
subplot(3,3,2),plot(r)
title('1° nome 2°sílaba 20-40ms ')

r= xcorr(xseg3,"unbiased")
subplot(3,3,3),plot(r)
title('1° nome 2°sílaba 40-60ms ')

r= xcorr(xseg4,"unbiased")
subplot(3,3,4),plot(r)
title('1° nome 2°sílaba 60-80ms ')

r= xcorr(xseg5,"unbiased")
subplot(3,3,5),plot(r)
title('1° nome 2°sílaba 80-100ms ')

r= xcorr(xseg6,"unbiased")
subplot(3,3,6),plot(r)
title('1° nome 2°sílaba 100-120ms ')

r= xcorr(xseg7,"unbiased")
subplot(3,3,7),plot(r)
title('1° nome 2°sílaba 120-140ms ')


m = figure('Name','CORRELAÇÃO CRUZADA 2°NOME 1°SÍLABA','NumberTitle','off')
r= xcorr(zseg1,"unbiased")
subplot(3,2,1),plot(r)
title('2° nome 1°sílaba 0-20ms ')

r= xcorr(zseg2,"unbiased")
subplot(3,2,2),plot(r)
title('2° nome 1°sílaba 20-40ms ')

r= xcorr(zseg3,"unbiased")
subplot(3,2,3),plot(r)
title('2° nome 1°sílaba 40-60ms ')

r= xcorr(zseg4,"unbiased")
subplot(3,2,4),plot(r)
title('2° nome 1°sílaba 60-80ms ')

r= xcorr(zseg5,"unbiased")
subplot(3,2,5),plot(r)
title('2° nome 1°sílaba 80-100ms ')


n = figure('Name','CORRELAÇÃO CRUZADA 2°NOME 2°SÍLABA','NumberTitle','off')
r= xcorr(wseg1,'unbiased')
subplot(3,3,1),plot(r)
title('2° nome 2°sílaba 0-20ms ')

r= xcorr(wseg2,"unbiased")
subplot(3,3,2),plot(r)
title('2° nome 2°sílaba 20-40ms ')

r= xcorr(wseg3,"unbiased")
subplot(3,3,3),plot(r)
title('2° nome 2°sílaba 40-60ms ')

r= xcorr(wseg4,"unbiased")
subplot(3,3,4),plot(r)
title('2° nome 2°sílabaa 60-80ms ')

r= xcorr(wseg5,"unbiased")
subplot(3,3,5),plot(r)
title('2° nome 2°sílaba 80-100ms ')

r= xcorr(wseg6,"unbiased")
subplot(3,3,6),plot(r)
title('2° nome 2°sílaba 100-120ms ')

r= xcorr(wseg7,"unbiased")
subplot(3,3,7),plot(r)
title('2° nome 2°sílaba 120-140ms ')

r= xcorr(wseg8,"unbiased")
subplot(3,3,8),plot(r)
title('2° nome 2°sílaba 140-160ms ')