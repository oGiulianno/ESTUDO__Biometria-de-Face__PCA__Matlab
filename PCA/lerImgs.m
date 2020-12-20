function z = x
z = [];
for j = 1:40
    %1º parâmetro: endereço da pasta de imagens
    file = strcat('C:\PCA\orl_faces','\s');  % COLOQUE O ENDEREÇO !!!!
    filename = strcat(file,int2str(j));
    cd(filename)
    for k = 1:4
        x = imread(strcat(int2str(k),'.pgm'));
        y = reshape(x,[size(x,1)*size(x,2),1]);
        z = [z , y];
    end
end
end