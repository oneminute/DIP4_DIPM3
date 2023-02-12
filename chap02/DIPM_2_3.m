%DIPUM 2.3

close all;
clear;

f = imread("chest-xray.tif");
% imtool(f);  % show in Image Viewer app
h = imshow(f, []);
imageinfo;
% imcontrast;
imdisplayrange;
% imdistline;
% impixelinfo;

% hText = impixelinfoval(gcf,h);
% set(hText,'FontWeight','bold')
% set(hText,'FontSize',10)

% impixelregion;
hFig = figure('Toolbar','none','Menubar','none');
hIm = imshow(f, []);
hSP = imscrollpanel(hFig, hIm);
set(hSP,'Units','normalized','Position',[0 .1 1 .9]);
hMagBox = immagbox(hFig, hIm);
pos = get(hMagBox,'Position');
set(hMagBox,'Position',[0 0 pos(3) pos(4)])
imoverview(hIm);