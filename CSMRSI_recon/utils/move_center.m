function mask = move_center(kspace,mask)
h=figure;imagesc(abs(kspace(:,:,1)));
[y,x]=ginput(1);

x = round(x);y=round(y);
x = round(size(kspace,1)/2) - round(x);
y = round(size(kspace,2)/2) - round(y);
mask2 = circshift(mask,[-x -y]);
mask = mask2;
close(h);