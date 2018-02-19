mkdir matlab
Warning: Directory already exists. 
cd matlab
%% Merijumu datu apstrade
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7];
plot(Um,Im.'o-')
??? plot(Um,Im.'o-')
                |
Error: Unexpected MATLAB expression.
 
plot(Um,Im,'o-'
??? plot(Um,Im,'o-'
                   |
Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
 
plot(Um,Im,'o-')
% Meginasim atminet sakaribu
% kas sasaista x(Um) un y(Im).
% Sakaribu mes meklesim
% ka 2.kartas polinomu
% koeficientus 2.kartas polinomam
% atradisim ar POLYFIT funkciju
% Poly - polynomial 
% Fit - fitting
% C = polyfit(x,y,N)
% N - polinoma karta
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

format compact

% noformesu "x" ar sikaku soli
U = -1:0.001:3.2;
% aprekinasim "y"
I = C(1)*U.^2+C(2)*U+C(3);
% zimesim to kas iznaca
plot(Um,Im,'o-',U,I)
plot(Um,Im,'o',U,I)
% atkartosim to pašu ar 3.kartas polinomu
C = polyfit(Um,Im,3)
C =
    0.1838   -0.4328    0.3391    2.0688
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
% Nakamais atkartosim 4.kartas polinomam
% bet pasas izteiksmem sastadisana
% ir laikietilpiga, tapec to automatizesim
% izmantojot POLYVAL funkciju
% POLY - polinomial , Val - value
% y = polyval(C,x);
% buutiba tas pats kaa
% y = C(1)*x.^2+C(2)*x+C(3)
% ja ir 2.karta,...
% Piemers 3.kartai
C = polyfit(UM,Im,3);
??? Undefined function or variable 'UM'.
 
C = polyfit(Um,Im,3);
I = polyval(C,U);
plot(Um,Im,'o',U,I)
% atkartojiet 4. kartai
C = polyfit(Um,Im,4);
I = polyval(C,U);
plot(Um,Im,'o',U,I)

%% pie lielas polinoma pakapes
% gan aproksimacijai, gan interpolacijai
% radisies nevelamas oscilacijas
C = polyfit(Um,Im,10);
Warning: Polynomial is not unique; degree >= number of data points. 
> In polyfit at 72
I = polyval(C,U);
plot(Um,Im,'o',U,I)


% Lineara sakariba
C = polyfit(Um,Im,1);
I = polyval(C,U);
plot(Um,Im,'o',U,I)


%% vairakas merijumu serijas 
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
         0.8 1.9 2.5 3.5 4.4;
         1.0 2.1 2.2 3.3 4.6];
%% Jautajums kā matlabs zīmēs matricas?
figure,plot(Um,Im,'o-')
figure,plot(Um,Im','o-')


% pielaikosim polinomu 
% meklesim videjo vertibu 
Ivid = mean(Im)
Ivid =
    0.9600    2.0000    2.3600    3.3400    4.5000
C = polyfit(Um,Ivid,3);
U = -1:0.01:3.2;
I = polyval(C,U);
% jusu uzdevums ;

%uzzimet grafiku
% lai merijumu punkti butu ar 'o'
% lai videjais starp merijumiem butu ar '*k'
% lai pielaikotais polinoms butu ar liniju '-'
plot(Um,Im,'o',Um,Ivid,'*',U,I,'-')
plot(Um,Im','o',Um,Ivid,'*',U,I,'-')


% kad ir vairakas merijumu serijas
% rēķina videjo kvadratisko novirzi
Ivkn =std(Im);
Ivkn =std(Im)
Ivkn =
    0.1140    0.1581    0.2074    0.1140    0.1581
errorbar(Um,Im,Ivkn)
??? Error using ==> errorbar at 76
X, Y and error bars must all be the same length
 
errorbar(Um,Ivid,Ivkn)


%% Ka ielasit skenoto grafiku 
% un iegut merijumu punktus
cd

/home/user/matlab

ls
171Reb175  FS  image1.JPG  image2.JPG  mans grafiks.m

format compact
ls
171Reb175  FS  image1.JPG  image2.JPG  mans grafiks.m

%% ielasisim bildes matlaba
A = imread('image1.JPG');
B = imread('image2.JPG');
whos A
  Name        Size                 Bytes  Class    Attributes

  A         686x768x3            1580544  uint8              

whos B
  Name        Size                Bytes  Class    Attributes

  B         518x521x3            809634  uint8              

figure(1),image(A),shg
figure(2),image(B),shg
% 2.grafikam uzstadisim
% istus x y
figure(2),image([0 14],[0 80],B),
figure(2),image([0 14],[80 0],B),
set(gca,'YDir','normal')
% atliek vien nolasit grafiku 
[x,y] = ginput(5)
x =
    3.5579
    4.9477
    7.9858
    9.9573
   11.9611
y =
    8.4772
   22.0707
   34.9610
   39.4141
   42.4609