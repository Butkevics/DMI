figure(1), B = imread('image3.png');
image(B);
image([400 700],[1.0 0],B)
set(gca, 'Ydir','normal')
%[x,y] = ginput (7);
x= [540.6324 558.6737 567.6943 576.0210 581.5721 587.8172 608.6339];
y= [0.0042 0.1631 0.5633 0.9928 0.6633 0.0866 0.0042];
figure(2)
plot(x,y,'o')
%polyfit
%polyval