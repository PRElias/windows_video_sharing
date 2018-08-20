# Compartilhando vídeos na rede interna
Este pequeno projeto utiliza o [WinNFSd](https://github.com/winnfsd/winnfsd) para compartilhar a biblioteca de vídeos do Windows. Com ele é possível acessar facilmente seus vídeos numa rede interna, como por exemplo, no Xbox One, usando o [KODI](https://www.microsoft.com/pt-br/p/kodi/9nblggh4t892). O funcionamento é semelhante ao explicado neste [vídeo](https://www.youtube.com/watch?v=LAr8mdvDp2A), porém, evitando a necessidade de execução de comandos no console, bastando apenas executar o script em si.

1. Faça o download ou clone o repositório (descompacte os arquivos, mantendo na pasta raíz).

2. Coloque o conteúdo, mantendo a pasta original, na pasta que deseja compartilhar.

3. Execute o script conforme imagem abaixo:

![](https://github.com/PRElias/images-gifs-readme/raw/master/executando_script.png?raw=true)

(Isto baixará todas as dependências e iniciará o servidor, só fazendo o download uma única vez)

4. No KODI, adicione a fonte de vídeo, procurando pelo protocolo NFS o IP do seu servidor (estará na janela do Powershell).