#!/bin/bash
clear
echo "###############################################################"
echo "# IBMEC                                                       #"
echo "# Sistemas Operacionais                    Semestre 2 de 2024 #"
echo "# Código: IBM8940                          Turma 8001         #"
echo "# Professor: Luiz Fernando T. de Farias                       #"
echo "#-------------------------------------------------------------#"
echo "# Equipe Desenvolvedora:                                      #"
echo "#   Aluno: Vanessa Santos Martins de Lima Nascimento          #"
echo "#   Aluno: Douglas da Silva Ferreira                          #"
echo "#   Aluno: Caio Domingues Azevedo                             #"
echo "#-------------------------------------------------------------#"
echo "# Rio de Janeiro, $(date +"%d") de $(date +"%B") de $(date +"%Y")                      #"
echo "# Hora do Sistema: $(date +"%H") Horas e $(date +"%M") Minutos                      #"
echo "###############################################################"
echo ""
while true;do	
echo "Menu de Escolhas:"
echo "1)Qual é o conteúdo do arquivo? Digite o caminho pra ver!"
echo "2)Qual é o tipo de arquivo? Digite o caminho pra saber!"
echo "3)Quem é o usuário?"
echo "4)Quais são as informações do usuário?"
echo "5)Finalizar o programa."
echo -n "Selecione uma opção:"

read opcao
case $opcao in
1)
clear
echo ""
 echo -n "Digite o caminho do arquivo a ser exibido:"
 read arquivo
 if [ -e "$arquivo" ]; then
 	cat "$arquivo"
echo ""
 else echo "Arquivo não encontrado ou caminho inválido."
 fi
echo ""
 ;;
2)
clear
echo ""
 echo -n "Digite o caminho do arquivo para verificar o tipo:"
 read arquivotipo
 if [ -e "$arquivotipo" ];then
 	file "$arquivotipo"
echo ""
 else 
 echo "Arquivo não encontrado ou caminho inválido."
 fi
 echo""
 ;;
3)
clear
echo ""
 echo "Usuário atual do sistema é o: $(whoami)"
 echo ""
 ;;
4)
clear
echo ""
 echo "Informações detalhadas do usuário:"
 id
echo ""
 ;;
5)
clear
echo ""
 echo "Finalizando o programa. Até logo!"
 break
 ;;
*)
 echo "Opção inválida. Porfavor, tente novamente."
 ;;
esac
done
