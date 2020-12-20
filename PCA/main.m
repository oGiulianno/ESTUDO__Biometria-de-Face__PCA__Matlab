clear all, close all

data = lerImgs;

 cd('C:\PCA') % COLOQUE O ENDEREÇO !!!!

[P PC mn] = GerarPCs(data);

i = 1;

while(i)
   im = input('Informe a imagem (entre aspas simples): '); %nome da pasta\imagem. Ex: 's8\5.pgm'
   if(im == 0)
       break;
   end
   %1º parâmetro: endereço da pasta de imagens
   x = imread(strcat('C:\PCA\orl_faces',strcat('\',im)));   % COLOQUE O ENDEREÇO !!!!
   d = Classificar(PC, ProjetarAmostra(x,mn,P));
   
   figure;
   imshowpair(reshape(data(:,d),112,92),x,'montage')
   
   clear im, clear x, clear d
    
end