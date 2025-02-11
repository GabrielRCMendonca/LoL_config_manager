Automação de Configuração de Teclas no League of Legends

Este script automatiza a reconfiguração da tecla de movimento no League of Legends, garantindo que o botão EvtPlayerMoveClick seja ajustado corretamente nos arquivos de configuração do jogo.

⚠️ Aviso Importante

Antes de rodar o script, siga estas etapas:

1 - Abra o League of Legends no modo treino para evitar problemas em partidas reais.

2 - Já dentro do jogo, vá até as configurações de controles e defina manualmente o botão de movimento (EvtPlayerMoveClick) para [Button 1].

3 - Salve as configurações e feche o jogo.

Para rodar o Script, use, no Power Shell:
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
powershell -File "C:\caminho\para\seu_script.ps1" (ou ./seu_script.ps1 caso já esteja na pasta do script)

Feito para quem tem problemas para clicar com o botão direito do mouse, já que dentro de jogo não existe configuração exata para o botão esquerdo do mouse.



