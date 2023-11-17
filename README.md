# Seminario-S206
Repositório para o seminário da matéria Qualidade de Software - S206, onde vamos apresentar o framework Flutter.

## Instalar VScode

1. Para abrir a página de download do VScode, acesse a seguinte URL:
   https://code.visualstudio.com/

2. Escolher o seu sistema operacional e clique em download.

3. Execute o arquivo do instalador do Visual Studio Code.

4. Selecione Aceito o contrato de licença e continue seguindo as instruções para concluir a instalação.

## Instalar o Flutterr

1. Para abrir a página de download do Flutter, acesse a seguinte URL:
   https://docs.flutter.dev/get-started/install

2. Selecione o seu sistema operacional.

3. Clique em flutter_windows_3.16-stable.zip para fazer o download, nesse caso está 3.16 por conta dessa ser a versão no momento em que estou fazendo a instalação.

4. Extraia o arquivo zip e coloque-o flutter no local de instalação desejado para o Flutter SDK (por exemplo, %USERPROFILE%\flutter, D:\dev\flutter).

Obeservações:

    Não instale o Flutter em um caminho que contenha caracteres especiais ou espaços.
    Não instale o Flutter em um diretório C:\Program Files\ que exija privilégios elevados.

5. Em Variáveis ​​de ambiente, anexe o caminho completo para flutter\bin usar ; como separador dos valores existentes.

6. O comando a seguir informa se os comandos flutter e dart se originam do mesmo diretório bin e, portanto, são compatíveis. ```where flutter dart```

7. Em uma janela do console que tem o diretório Flutter no caminho (veja acima), execute o seguinte comando para ver se há alguma dependência de plataforma necessária para concluir a configuração: 
```C:\src\flutter>flutter doctor```

## Instalar Extensão C# no VScode

1. Verifique se o Visual Studio Code está aberto.

2. Na barra Atividade, selecione Extensões.

3. Na caixa de texto Procurar extensões no Marketplace, insira flutter

4. Na lista filtrada de extensões disponíveis, selecione a extensão rotulada "Flutter" publicada pela dartcode.org.

5. Para instalar a extensão, selecione Instalar.

## Crie o aplicativo

1. Abra a paleta de comandos no VSCode.

2. Digite “flutter” e selecione Flutter: New Project.

3. Selecione Aplicativo.

4. Crie ou selecione o diretório pai para a nova pasta do projeto.

5. Insira um nome de projeto, como my_app, e pressione Enter.

6. Aguarde a conclusão da criação do projeto e o main.dart arquivo aparecer.