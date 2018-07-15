# Compartilhando vídeos na rede interna
Este pequeno projeto utiliza o [WinNFSd](https://github.com/winnfsd/winnfsd) para compartilhar a biblioteca de vídeos do Windows. Com ele é possível acessar facilmente seus vídeos numa rede interna, como por exemplo, no Xbox One, usando o [KODI](https://www.microsoft.com/pt-br/p/kodi/9nblggh4t892). O funcionamento é semelhante ao explicado neste [vídeo](https://www.youtube.com/watch?v=LAr8mdvDp2A), porém, evitando a necessidade de execução de comandos no console, bastando apenas executar o script em si (pode ser necessário apontar sua pasta de vídeos).

1. Faça o download (descompacte o arquivo) ou clone o repositório.

2. Configure sua pasta de vídeos, editando o arquivo executar.ps1 com um editor de textos.

3. Execute o script conforme imagem abaixo:

![](https://github.com/PRElias/images-gifs-readme/raw/master/executando_script.png?raw=true)

(Isto baixará todas as dependências e iniciará o servidor)

4. No KODI, adicione a fonte de vídeo, procurando pelo protocolo NFS o IP do seu servidor.