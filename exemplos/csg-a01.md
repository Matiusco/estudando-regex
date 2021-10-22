# Aula 1 - Shell GNU?

## 1.1 - Por que 'Shell GNU'

Neste curso, diferente dos nossos cursos especificamente focados em programação no shell padrão do sistema operacional GNU, o Bash, a proposta é dar uma visão mais ampla dos recursos que temos à disposição para a **solução de problemas** na linha de comando, o que inclui um conjunto de programas utilitários chamado de *coreutils* e várias outras ferramentas indispensáveis para quem:

* Quer ter o máximo de controle do seu sistema operacional;
* Pretende fazer carreira na administração de sistemas;
* Quer agregar o poder do sistema operacional aos seus scripts.

Evidentemente, nós poderíamos chamar o nosso curso de "Shell GNU/Linux", até porque esta será a plataforma de 100% dos nossos exemplos e experimentos, mas isso deixaria de fora um fato importante sobre boa parte das ferramentas que veremos: mesmo que não tenham sido implementadas pelo [Projeto GNU](https://www.gnu.org/gnu/initial-announcement.html), elas existem na maioria dos chamados *sistemas unix-like* -- os sistemas operacionais "parecidos com o Unix". Isso quer dizer que você também pode acompanhar o curso **Shell GNU** no seu FreeBSD, por exemplo -- você só teria que instalar o shell Bash, já que as demais ferramentas, herdadas do sistema operacional UNIX, possuem implementações no BSD.

Sobre isso, nós também poderíamos chamar este curso apenas de "Shell", mas sempre ficara no ar aquela dúvida: qual shell? Aqui, nós falaremos especificamente do shell padrão do sistema operacional GNU, o Bash, sem qualquer preocupação com outros shells ou as normas que visam estabelecer alguma compatibilidade com o shell popularizado na versão 7 do sistema UNIX -- o Bourne Shell (`sh`).

## 1.2 - Solução de problemas

No nosso contexto, um problema é qualquer **situação** que requeira uma **solução** na forma de uma **linha de comando**. 

> Repare bem nos grifos: "situação", "solução" e "linha de comando".

Isso é importante porque estabelece, no próprio conceito, o método que nós utilizaremos para resolver os problemas, o que se dará em três passos:

* Identificação
* Abstração
* Demonstração

### Identificação

No primeiro momento, nosso trabalho é analisar cuidadosamente cada **situação** com o propósito de **identificar** o que está acontecendo. O objetivo é descrever o problema de forma clara e objetiva, buscando sempre diferenciá-lo dos sintomas e/ou de possíveis soluções.

### Abstração

Assim que conseguirmos descrever o problema, nossa meta será utilizar os recursos da **linha de comandos**, não como programas e ferramentas, mas como uma linguagem comum entre nós e o sistema operacional -- ou seja, nós utilizaremos comandos e utilitários como uma segunda forma de descrever o problema identificado.

### Demonstração

Executada a linha de comando, nós observaremos os resultados com o propósito de compreender o **significado da solução**.

## 1.3 - Nosso método

O nosso método se baseia totalmente nesses três passos. Através deles, nós desenvolveremos juntos os meios necessários para **transformar problemas em conhecimento**.

Fazendo uma analogia, imagine que você está aprendendo um novo idioma, não comandos e opções de programas. Quando aprendemos uma outra língua, a meta e adquirir **fluência**, e isso é o resultado da construção de um **vocabulário** e de um **repertório** de situações em que nós temos que nos expressar falando ou escrevendo.

Aqui não é muito diferente:

### Repertório

Para criar um repertório, nós exploraremos várias situações diferentes, sempre tentando expor de forma clara e objetiva os resultados que queremos obter.

### Vocabulário

Sempre que formos apresentados a um novo recurso do sistema operacional, ele deverá ser visto como uma palavra (verbos, nomes, adjetivos, etc...).

### Fluência

Conhecendo as palavras, nós vamos aprender como elas se relacionam, como elas se ligam para formar sentenças que possuam algum significado.

Deste modo, não tente "decorar comandos" -- além de ser algo que se constrói com o tempo, o hábito e a experiência, é para isso que nós temos os manuais. Quando você entende o problema e sabe descrevê-lo com clareza, quando você sabe o que realmente quer que o sistema faça, encontrar uma sentença para escrever na linha de comandos é a parte mais fácil.

## 1.4 - O que é um sistema operacional

Um sistema operacional é um conjunto de programas cuja função é possibilitar o uso e o gerenciamento dos recursos de um sistema computacional (um computador).

Existem vários tipos de sistemas operacionais, mas, pensando especificamente nos sistemas parecidos com o UNIX, nós temos essencialmente:

### Kernel

Um programa que fornece o acesso aos recursos da máquina a outros programas através de um conjunto de instruções e funções.

### Utilitários e aplicativos

Vários outros programas que se utilizam dessas funções e instruções para executar algum tipo de tarefa com os recursos da máquina.

### Shell

Um programa que faz a ponte entre o usuário e os outros tipos de programa.

Quem exerce cada um desses papeis pode variar, e é isso que caracteriza diferentes sistemas operacionais, mas não há como pensar em um sistema *unix-like* sem qualquer um desses componentes.

## 1.5 - O sistema operacional GNU

Segundo o site oficial do Projeto GNU:

> O sistema operacional GNU é um sistema de software livre completo, compatível com o Unix. GNU significa *"GNU's Not Unix"* (GNU Não é Unix). Ele é pronunciado como uma sílaba com **g** forte. Richard Stallman fez o Anúncio Inicial do Projeto GNU em setembro de 1983 ([continua...](https://www.gnu.org/gnu/gnu-history.pt-br.html)).

Desse parágrafo, nós precisamos entender algumas coisas:

### Um computador é inútil sem programas

Até a década de 1980, quase todos os programas eram proprietários, ou seja, eram distribuídos com licenças que visavam restringir os direitos de uso desses programas com objetivos que variavam desde a preservação de supostas vantagens comerciais ao aprisionamento explícito do utilizador aos produtos de um fornecedor específico.

Um programa proprietário não pode ser estudado, auditado, copiado, modificado nem compartilhado. Logo, na época, todos eram obrigados a recorrer a programas proprietários se quisessem utilizar um computador. Foi neste cenário que o Projeto GNU surgiu com o propósito de criar um sistema operacional completo onde todos os programas seriam **livres**.

### Software Livre

Em oposição ao modelo de licenciamento dos programas proprietários, o Projeto GNU conceituou aquilo que viria a ser chamado de **Software Livre**. Para ser livre, o programa precisa garantir (legalmente) quatro liberdades ao utilizador:

* **0:** A liberdade de executar o programa para qualquer propósito.
* **1:** A liberdade de estudar como o programa funciona e alterá-lo se necessário.
* **2:** A liberdade de redistribuir cópias do programa.
* **3:** A liberdade de distribuir cópias das alterações feitas.

### Compatível com o UNIX

Como vimos, um sistema operacional *unix-like* inclui um *kernel*, um *shell*, e vários outros programas, como compiladores, editores, processadores de texto, ferramentas administrativas, e uma infinidade de outros aplicativos. 

Contudo, além do esquema geral dos seus componentes, um sistema compatível com o UNIX deve ter um comportamento que atenda, ao menos em boa parte, as especificações de um sistema operacional UNIX, principalmente no que diz respeito aos programas que gerenciam o *login*, as sessões de operação na linha de comandos, os utilitários e comandos disponíveis (geralmente "clonados" pelos sistemas *unix-like*) e outra característica importante que veremos no próximo tópico.

O fato é que isso tudo começou a ser desenvolvido em 1984, mas, até o início dos anos 1990, o sistema operacional GNU, embora quase completo, ainda não tinha um *kernel*.

Em 1992, quando o *kernel Linux* (lançado em 1991) adotou a licença livre **GNU GPL** (*GNU General Public License*), o Projeto GNU decidiu que seria uma boa ideia combiná-lo com o que já havia sido desenvolvido, resultando no sistema operacional GNU/Linux.

### GNU sem Linux

Hoje, quando "Linux" é uma palavra que tem um significado cada vez menos associado ao Software Livre, é fundamental destacar o fato de que o desenvolvimento do Projeto GNU depende de um *kernel* para ser um sistema operacional completo, mas isso não quer dizer que ele depende necessariamente do *kernel Linux* para isso.

Do surgimento do GNU/Linux para cá, os componentes desenvolvidos pelo Projeto GNU foram portados para o uso com vários outros núcleos, como é o caso, por exemplo, do GNU/Hurd (na verdade, o sistema operacional GNU foi originalmente idealizado tendo o Hurd como *kernel*), do GNU/KNetBSD e do GNU/KFreeBSD, todos portados pelo Projeto Debian.

## 1.6 - A Filosofia UNIX

Além de uma compatibilidade mínima com o UNIX, o que era importante em função da sua predominância principalmente nas instituições universitárias dos anos 1980, havia um aspecto muito mais atraente nos requisitos de projeto e nos princípios do desenvolvimento do sistema operacional: a chamada "Filosofia UNIX".

Como **requisitos de projeto**, a Filosofia UNIX estabelece que:

* O núcleo do sistema deve ser simples e deve oferecer apenas as funções básicas.
* Os utilitários devem ser modulares e encadeáveis a fim de realizarem funções complexas.
* As interfaces *usuário-sistema* e *programas-kernel* devem ser separadas e bem definidas.

O que reflete diretamente os **princípios de desenvolvimento**:

* Escreva programas que façam apenas uma coisa, mas que façam essa coisa bem feita.
* Escreva programas que trabalhem juntos.
* Escreva programas que manipulem fluxos de texto, pois esta é a interface universal.

Há quem diga que o Projeto GNU se afastou da Filosofia UNIX ao introduzir funcionalidades a mais nas suas implementações dos utilitários "clonados" do sistema UNIX, mas não existe um conceito definitivo do que é a Filosofia UNIX. O que existe são artigos e impressões de diversos programadores renomados sobre o tema, mas nem eles concordam integralmente entre si. Porém, uma palavra se destaca em todos esses discursos: **modularidade**.

### Modularidade

Tudo que se diz e já foi dito sobre a Filosofia UNIX é, em resumo, um desenvolvimento sobre o tema da modularidade. Embora seja comum na natureza e na maioria das atividades humanas, o conceito da modularidade havia sido pouco explorada antes do desenvolvimento do sistema operacional UNIX.

Hoje, com infelizes e desastrosas exceções, como é o caso do *Pulseaudio* e do *SystemD*, ou de aberrações como *OSTree*, *Flatpaks* e *Snaps*, cada projeto para sistemas *unix-like* tenta equilibrar o princípio da modularidade com a oferta de funcionalidades para atender necessidades que não existiam 40 anos atrás.

O princípio da modularidade, herdada dos sistemas UNIX e implementada no sistema operacional GNU, tem a sua expressão máxima, não nos comandos e utilitários em si, mas na ***canalização de fluxos de dados***, ou **pipes**.

### Pipes

Os *pipes* (do inglês, "canos") são um mecanismo do shell do sistema operacional que permite que os dados gerados por um programa, em vez de serem exibidos no terminal, sejam passados para a entrada de outro programa. Desta forma, pequenos programas e comandos especializados em um determinado tipo de processamento são encadeados numa linha de comando para a obtenção de um resultado que nenhum deles seria capaz de produzir sozinho.

> O conceito foi introduzido no shell do sistema UNIX por Douglas McIlroy, autor dos princípios de desenvolvimento da Filosofia UNIX que nós citamos acima e criador das versões originais de utilitários como `diff`, `sort`, `join`, `tr`, entre outros.

No terminal de sistemas *unix-like*, os pipes são representados pelo **operador de controle** `|`. Normalmente, apenas o fluxo da saída padrão (os dados que são exibidos no terminal) são canalizados, mas existem formas de passar a saída de erros (um fluxo de dados exclusivo para as mensagens de erro) para a entrada de outros programas. No Bash, isso é feito com o operador de controle `|&`, o que é uma abreviação do redirecionamento `&> |`.

> ***Redirecionamento*** é outro mecanismo importantíssimo para a implementação do conceito de modularidade em sistemas *'unix-like'*, mas isso será assunto de outras aulas.

## 1.7- O que é um Shell

Nós falamos bastante sobre sistemas operacionais, mas agora vamos dar um pouco de atenção ao astro principal deste curso: o shell. Como vimos, o shell é o programa do sistema operacional responsável por fazer a interface entre o usuário e as funções do *kernel*. Para cumprir com o seu papel, o shell é carregado em um terminal, ou em um console, onde fica aguardando os nossos comandos. O ponto no terminal onde aparece o cursor é o chamado **prompt de comandos**. Sua função é indicar que o shell está "pronto" (daí, *prompt*) para receber comandos.

### Modos de operação do shell

Mas isso diz respeito apenas a um dos modos de operação do shell, aquele em que nós digitamos os comandos e esperamos os resultados  serem exibidos no terminal -- o **modo interativo**. Além desta forma de uso, um shell *unix-like* deve ser capaz de receber e executar comandos escritos em arquivos de texto que nós chamamos de *scripts* -- nestes casos, o shell está sendo operado no **modo não-interativo**.

### Interpretador de comandos e linguagem de programação

A principal tarefa de um shell é interpretar os comandos digitados pelo usuário. No Bash, esses comandos podem conter nomes de programas e comandos internos do próprio shell, operadores, argumentos, e estruturas sintáticas à altura da maioria das linguagens de programação. Um detalhe, porém, deve começar a ser "fermentado" desde já no nosso curso: **cada linha de comando que nós digitamos no terminal ou nos nossos scripts é um parâmetro da sessão do shell em execução**.

Nas próximas aulas, nós entenderemos melhor o que é uma sessão do shell, o que são parâmetros e como o shell processa os nossos comandos. Por enquanto, apenas para você ir pensando a respeito, tente responder a seguinte pergunta: quando escrevemos um script, nós estamos programando **em shell** ou programando **o shell**?

