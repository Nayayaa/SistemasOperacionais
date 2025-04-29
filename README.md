# Sistemas Operacionais
Trabalho de AC para a disciplina em Sistemas Operacionais e anotações.

# Taxonomia de Sistemas

Taxonomia de Sistemas Operacionais é a forma de classificar os diferentes tipos de Sistemas Operacionais com base em diversos critérios.

|  | Tipos de Sistemas Operacionais |  |
| --- | --- | --- |
| **Sitemas MonoTarefas** | **Sistemas MultiTarefas** | **Sistemas MultiProcessador** |
| São aqueles que podem gerenciar apenas uma tarefade cada vez. Exemplo: MSDOS | BIOS de computador. | São sistemas capazes de gerenciar várias tarefas. | Sistemas que gerenciam vários CPU simultaneamente. |
| Simples  | **Tempo Compartilhado**: O tempo de processador é dividido em fatias distribuidas para cada programa carregado. Exemplo: Windows, Linux, IOS, Android etc... | **Fortemente Acoplado**: A comunicação entre CPUs é feita através do barramento interno.
**SMP** → MultiProcessadores simétricos. 
**NUMA** → Acesso a memória não uniforme. |
| Antigos | **Tempo Real**: Em prioridades dos programas (mais prioritários usam os recursos da CPU até aparecer outra mais impotantes) Exemplo: Free RTOS, QNX. | **Fracamente Acoplado**: A comunicação é feita através da rede.
**SOR** → Sistema Operacionais de Rede. 
**Sistema Distribuído →** Tarefa é dividida computadores. |
|  | **BATCH:** Processamento em lote. É um software que não interage com outro usuário. |  |

## **Usuários**

|  | MonoTarefas | MultiTarefas |
| --- | --- | --- |
| MonoUsuário | Sim (MSDOS) | Sim (Windows 10) |
| MultiUsuário  | Não  | Sim (Windows Serve) |

| **/**  | Raiz |
| --- | --- |
| **/home**  | Usado pelos usuários do sistema. |
| **/root** | Usado pelo administrador do sistema para guardar arquivos. |
| **/boot** | Arquivo usados no boot (Kernel). |
| **/bin** | Usuário comum. (Armazenam arquivos executáveis.) |
| **/sbin** | Super usuário. (Armazenam arquivos executáveis.) |
| **/dev** | Arquivos especiais.  |
| **/usr** | Os softwares e sistemas instalados pelos usuários. |

**CTRL + ALT**  → Mudar de Terminal.

**CRTL + ALT + F2** → Terminal 2.

**CTRL + ALT + F3** → Terminal 3.

(No caso de Notebook será necessário precionar **CTRL + ALT + FN** e apertar duas vezes os Fs)

### Comando Parâmetro

- Primeiro comando é o “$man”
- Segunda paramentro é o “date”

<aside>
💡

$man date (Para sair do manual utilizar a o comando “q”)

</aside>

### Comandos no terminal

**$date** → Comando de data e hora. | $date +%h

**$who** → Mostra todos os usuários.

**$whoami** → Comando para ver o usuário.

**$exit** → Comando de sair do programa(bash).

**$logout** → Comando de deslogar do usuário.

**$man** → Comando para ver o manual do programa.

**$reboot** → Comando de reiniciar.

**$halt** → Comando para desligar o sistema (só pode ser executado pelo root)

**$clear** → Comando para limpar o bash.

**$cd** → Comando para mudar de diretório. ($cd /home → Indo para o diretório home)

**$cd -** → Comando para o retorna o diretório anterior.

**$cd ~** → Comando para diretório de trabalho do usuário.

**$cd .**  → Comando para diretório atual.

**$cd ..** → Comando para o diretório pai. (Caminho relativo)

**$cd /** → Comando para ir ao diretório pai. (Caminho absoluto) 

**$mkdir** → Comando para criação de um diretório.

<aside>
💡

**Criação de diretórios com MKDIR :**

$mkdir dir1/dir1 dir2→ Criando 2 diretórios diferentes no diretório atual.

</aside>

**$ls** → Comando para listar os arquivos dentro do diretório. 

<aside>
💡

**Parametros do LS:**

**$ls -R** → Recursivo (Lista todos os arquivo de cima pra baixo do diretório atual )

**$ls -l** → Longo 

**$ls -h** → Humano

**$ls -a** → Mostra os arquivos ignorados.

**$ls -i** → I-NODE

**$ls -d** → demilitador

**$ls -f** →field (campo)

</aside>

$tree → Mostra os diretórios em formato tabela. 

<aside>
⚠️ Diretório e Arquivos em tabela.

![Captura de tela 2024-08-21 102459.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f0adbcae-3f6f-4e34-b318-3eca1375a92c/0fcc6e08-5ef0-4ec4-aed2-b8634d28464c/Captura_de_tela_2024-08-21_102459.png)

</aside>

$rmdir → Remove diretórios (apenas diretórios vazios)

$rm → Remove arquivos e diretórios.

<aside>
💡

**Parametros do RM:**

$rm * → Apaga todos os arquivos.

$rm -R → Apaga diretórios com arquivos.

$rm arq[1-4] → Criou o ‘arq[1-4]’

$rm arq[1..4] → Criou o ‘arq[1..4]’

$rm arq{1..9} → Criou conjuntos de arquivos de 1 a 99.

</aside>

$touch → Altera a hora do arquivo.

<aside>
💡

**Parametros do TOUCH:**

$touch -a → Altera hora: último acesso.

$touch -m → Altera hora: última modificação.

</aside>

$file → Identificar o tipo de arquivo.

$cp → Copia arquivo e diretório. 

$stat → Verifica o conteudo do I-NODE. 

$ln → Cria atalhos.

$mv → Move/Renomea o arquivo.

<aside>
⚠️ Exemplo: $mv arquivo diretorio (Movendo o arquivo para o diretório)

</aside>

<aside>
⚠️ Exemplo: $mv arquivo arquivo3 (Renomea o arquivo)

</aside>

### Pai e filho:

. → Diretório atual.

. . → Diretório pai.

<aside>
⚠️ **Caminho Relativo: É utilizado com o “. .” → Diretório pai. “**

**Caminho Absoluto: É utilizado com a “ / ” → Raiz.** “/home/virtual/aula/dir1/dir1”

</aside>

### Tipos de arquivos

 - → Arquivo Regular.

D → Arquivo do tipo diretório.

L → Arquivo do tipo atalho.

B/C → Arquivo de dispositivo.

### Metacaracteres

* → É usado para representar qualquer quantidade de qualquer **caracter,** inclusive nenhum.

/ → Metacaracter que informa ao sistema que á um espaço “ “.

? → Representa 1 elemento único no grupo. 

[  ] → Representa 1 elemento único no grupo.

[ - ] → Usando como demilitador “até”.

{ . . } → Representa um conjunto de número.
