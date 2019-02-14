TUG 2018 - Workshop - Class 05
===

[![Video](http://img.youtube.com/vi/TQvQJFTekMw/maxresdefault.jpg)](https://www.youtube.com/watch?v=TQvQJFTekMw)

### Expositor

Paulo Cereda

### Tabla de contenidos

1. Lo básico: nodos y aristas
2. Diagramas coloridos y diagramas
3. Árboles
4. Matemáticas: geometría clásica
5. Matemáticas: Trazado de funciones y superficies
6. Química
7. Solo algunos ejemplos que demuestran capacidades y variedad

> Yo soy ... Mi formación en Ciencia de la Computación. Trabajo últimamente con teoría de la computación, la parte formal. Paulo me dice que tenga audiencia en varias áreas. Espero que los invitados puedan conversar sobre bastantes cosas. Yo vine de una ciudad que se llama Analândia. Es una ciudad que tiene cuatro mil habitantes. Es muy pequeñita, bien pequeñita. Ustedes conocen por ejemplo una ciudad conocida del estado de San Pablo, San Carlos, es una ciudad cercana. Entonces, yo vine de casualidad, he caído por un accidente. He venido por la reunión del TeX User Group que tenemos a partir de mañana. Y Paulo me invitó de pronto basicamente, lo cual es muy chévere, estar con ustedes aquí para poder hablar un poquito.
> No solamente de lo que se propuso hablar aquí, sino también contar un poquito de mi experiencia con $\TeX$, de mi experiencia con $\LaTeX$, contar para ustedes todos los errores que he cometido hasta entonces y también lo que realmente voy cometer de aquí en adelante, entonces más o menos eso. Antes de ese tópico en particular, Paulo me dijo que habló, les contó a ustedes un poquito de lo que es $\TeX$, pero así revisar algunas cositas. La verdad, $\LaTeX$, sería un programa, en este caso es un programa, un sistema de tipografía como las personas gustan de hablar, pero no es verdad, es una cosa, un poquito más abstracta, las personas de ciencias exactas, es una cosa que la gente llama un sistema de escritura, en el que usted typewritting system, en el que usted, tiene practicamente una relación binaria, un sistema que asigna una cosa para otra, entonces donde la gente vio por ejemplo, define una macro llamada nombre, usted puede tener un nombre y en algun momento usted hace uns transformación.

> Básicamente es eso, es un concepto muy simple. Sólo que es una cosa que dejó de ser utilizado en los tiempos de hoy. Hoy nadie habla mucho más de macros inscritas, hablar de macro hoy en día, parece que usted está hablando de una
cosa prohibida, de una cosa que cayó en desuso, que se ha superado, pero en realidad no, las macros son muy utilizadas hoy en día. Inclusive, no sé si aquí alguien programa en [Clojure](https://clojure.org/) es un dialecto de [Lisp](http://lisp-lang.org/) escrito en Java. [Rust](https://www.rust-lang.org/) es un lenguaje que se parece a C, es un lenguaje más reciente y son lenguajes que tienen macros con otro nombre. En el caso de Clojure, ellos llaman extensibilidad sintáctica que es mucho más bonito hablar, entonces quieren chocar las personas, pero en el fondo usted está tratando el mismo fenómeno.

> Yo estoy hablando todo eso sólo para explicar para ustedes porque hay mi tesis doctoral fue exactamente sobre macros, entonces creo que soy yo la persona que tiene que estar a favor de hablar en pro de las macros, entonces la macro tiene una característica muy chévere, Paulo dijo eso, tiene un concepto que la gente llama abstracción textual, que usted consigue pegar pedazos de texto y extraer la estructura común. ¿Sí? Imagine que esto de aquí se está repitiendo o eso de aquí y yo puedo encapsular de otra forma; por ejemplo, se comentó aquí de los estilos, entonces usted tiene, por ejemplo, una palabra que quiera destacar, para algunas personas puede ser un texto en cursiva, algunas personas puede ser un texto en negrita, otras personas puede ser subrayado. En fin, quiero decir que percibe que hay gente que acaba adecuándose a nuestras propias realidades, entonces la macro, el sistema de macro ofrecen este tipo de facilidades porque la gente consigue representar bastantes cosas. Bueno, Donald Knuth cuando él propuso $\LaTeX$, la verdad lo que pasó, no sé si Paulo les contó un poco de la historia. Donald Knuth, tal vez una de las mayores autoridades de la computación del siglo 20. Él estaba muy irritado de la forma como los libros de él estaba siendo editados. Muy bravo y lo que él decidió, no, así que voy a crear mi propio sistema de tipografía que puedo editar los libros. En su caso, él estaba editando [The Art of Computer Programming](https://www-cs-faculty.stanford.edu/~knuth/taocp.html), si ustedes ya tuvieron oportunidad de ver ese libro es un libro, creo que son tres o cuatro volúmenes. Es un libro maravilloso de ver, entonces él dijo que la computación es un arte, es muy bueno, él mismo decía que un algoritmo. Yo sólo acredito que es un algoritmo cuando lo veo funcionando, él oscila, Donald Knuth, él oscila bien entre la teoría y el pragmatismo creo que eso es una cosa muy genial de él. Él es extremadamente teórico, pero él trae esas cosas,
su aplicación, entonces eso es muy bacán.

> Bueno, él creó el sistema de tipografía $\TeX$ y en un determinado momento dijo "bueno yo no quiero pasar eso a nadie, lo hice para mi uso personal", tanto que en $\TeX$ puro como la gente habla, el planteó a usted muchas cosas, usted no tiene "cross reference", usted no tiene "labels", usted no tienen ese tipo de recurso. Si usted ve por ejemplo el código fuente de uno de sus libros, él lo hace a mano. el "label" de la página lo digita, porque para él en aquella época era suficiente, quería simplemente aspectos visuales. Él hizo una fuente *Computer Modern*, es de él.

> En fin, él tuvo todo un trabajo, me gusta hablar artesanal y artístico para comparar. Muy bien, luego vino Lamport y dijo: "Es muy complicado crear algunas abstracciones que sean más comprensibles, más redactables". La gente llegó a $\LaTeX$" que es básicamente un sistema de tipografía, entonces ¿qué ocurrió? Cuando la gente escribe por ejemplo un texto en nuestro editor. Cuando se convierte, existe un proceso de conversión, una transformación, digamos así. Para los teóricos, usted transforma la parte textual en objetos, en este caso en el formato que está saliendo, el resultado en archivos PDF, usted utiliza los comandos literales, que las personas llaman, los comandos
primitivos del formato pdf, entonces todo lo que haces en $\TeX$ acaba
volviéndose un comando PDF que usted puede, que es exhibido en la forma de un archivo.

> En el comienzo, eran cosas bien simples. Usted tenía la parte textual, la parte matemática, y existe mucha cosa detrás de esto, por ejemplo, el balanceamiento de, la gente habla del balanceamiento de líneas, entonces por ejemplo a veces usted ve que ha escrito un texto que está así, usted incluye dos o tres palabras y cambia para tratar de acondicionar una cantidad suficiente de palabras por línea para modificar su aspecto, proporcionar un aspecto visual mejor, entonces tiene $\LaTeX$ por ejemplo, el concepto de cola, yo creo que es fácil, entonces se habla así: ¿cuál es la distancia que tengo que mantener, por ejemplo, cuál es la distancia que tengo que quedarme de usted al hablar, usted tiene que quedarse a un metro y medio. Esa es una forma rígida de fijar. Otra forma que usted, yo quiero una cola, o sea que puedo fijar el mínimo aquí, el máximo aquí y el término medio tiene que ser así, entonces son formas inteligentes que Donald Knuth como Lamport, Frank Mittelbach, más personas que trabajan con $\TeX$ encuentran para proporcionar una experiencia tipográfica mucho más interesante, entonces al principio usted no tenía una gran cantidad de parte matemática y la parte de diseño era muy preliminar, entonces usted necesitaba hacer unos y necesitaba hacer un dibujo, digamos así usted va a hacer una caja, un rectángulo, usted tenía que que hacer punto por punto, usted hablaba así, mira, la coordenada tal y la coordenada tal, vamos a trazar una línea, entonces usted hacía definitivamente, en lugar de utilizar la regla y un lápiz, usaba algunos comandos del tipo `put`, allí una coordenada (x,y), `put` otra coordenada (x,y) y pedía el comando para trazar. Entonces era una cosa bien justa porque en realidad no era el propósito, no.

> En el pasado, $\TeX$ solo era cosa de matemáticos y de algún otro aventurero. Hoy en día es mucho más amplio, ofrece muchas más cosas. Bien, históricamente la gente ha tenido algunos paquetes gráficos que comenzaron a ser incluidos y desde esa parte creo que el primero que hubo fue el [`pict2e`](https://ctan.org/pkg/pict2e?lang=en) ofrecía algunas conveniencias, digamos así, no sé si ustedes escucharon a Paulo en el cafecito. $\TeX$ tiene una propiedad, es una máquina de Turing completo. Personas que no son de computación o de complejidad, Turing completo es una propiedad que dice más o menos lo siguiente: "Usted consigue cualquier función que sea computable computacionalmente, no que sea realizable computacionalmente puede ser hecho por ese sistema. Obviamente no, eso no significa que es eficiente, eso no significa que es preciso, pero es una propiedad muy grande. Los lenguajes de programación tienen esta propiedad, entonces $\TeX$ no es simplemente un editor, es un lenguaje, es un sistema de tipografía, es un lenguaje de programación, entonces cuando las personas se dieron cuenta de eso, hablaban "vamos a poner comandos que permitan a las personas que hagan cosas más osadas, ¿correcto?

> Y ahí la gente tuvo el molde que quedó mejorado para que usted haga algunos diseños y muy recientemente tuvo [PSTricks](http://www.tug.org/PSTricks/main.cgi/), fue una serie de macros, es un conjunto de macros que le permitía a usted hacer diseños, solo que usted no conseguía generar un PDF directamente, usted tenía que pasar por un formato intermedio que era un [PostScript](https://www-cdf.fnal.gov/offline/PostScript/BLUEBOOK.PDF), ¿sí? PostScript también es un lenguaje, sí, la gente conoce como una visualizaciónde un documento, pero en verdad, PostScript es también un lenguaje de programación por más increíble que parezca. PostScript es un lenguaje de programación y es un lenguaje de programación que se basa en la pila. Disculpe, a mí realmente me gusta los lenguajes de programación, me gusta realmente de lo que hablo, entonces ... Bien, tenemos a PostScript, personalmente lo amo porque nosotros podíamos hacer cosas absurdas, solo que tiene un problema: Usted no puede generar PDF, usted tenía que generarlo en un segundo paso, entonces usted se imagina que un señor está haciendo su tesis con un tiempo limitado de 18 horas. Usted va, exactamente claro y obviamente decidí hacer esto en el último momento porque su orientado pensó que quedaba lindo, ¿si? Y yo no voy a entrar en la discusión de las páginas allí, me quedé allí rechinando los dientes allí atrás, ya vi que no puedo hablar más cosas que pienso.

Bueno, imagine solamente si usted tiene que generar un `.ps` que es el formato de PostScript, correr un `ps2pdf` para que usted lo convierta a PDF y usted abra, usted verifica. Era complicado eso, y hoy en día `dvi`, `ps` y otros formatos cayeron en desuso. Creo que hoy ustedes estarán de acuerdo conmigo que PDF se convirtió en el documento estándar, básicamente eso. Era un [formato propietario](https://www.iso.org/standard/63534.html) de Adobe. No diría que continua siendo PDF el estándar, ya que Adobe continua añadiendo cosas, ella da derecho en mejorar los PDF's de ella, entonces tiene cosas que solo funcionan en [Reader](https://get.adobe.com/es/reader/), en [Acrobat](https://en.wikipedia.org/wiki/Adobe_Acrobat), mas PDF se volvió si yo no me equivoco se convirtió en un estándar, entonces eso es cosa buena, es una forma en la que usted mantiene, una forma de usted lleva y que tiene características muy interesantes.

Bueno, había un ciudadano, un matemático llamado [Till Tantau](https://fr.wikipedia.org/wiki/Till_Tantau) que él junto con dos locos y Christian Feuersaenger, y ¿quién fue el tercero? No recuerdo, que Dios lo tenga. Ellos hablaron lo siguiente, ¿no?: "Vamos a hacer una cosa que sea posible trabajar con un documento PDF directamente". Y ellos crearon un paquete, fue bien así, sin la gran pretensión, ha sido despretensiosa, una propuesta de buscar alguna cosa que sea más simple llamada Tikz.

La k de aquí es cursiva y la t en mayúscula? No lo recuerdo, en fin. Alguien me preguntará qué es eso?

Es una buena pregunta, es un acrónimo recursivo, solamente que es un acrónimo recursivo en alemán, entonces mis disculpas para ustedes, ustedes pueden buscar en internet su acrónimo. Acrónimos recursivos que ustedes pueden imaginar es por ejemplo, que me viene a cabeza es del proyecto GNU, por ejemplo. GNU is not Unix.

lo que es lo que me lleva a la cabeza es el del proyecto del proyecto gnu por ejemplo es que es de nuevo slot mil next ese es una cruel o sea usted define el acrónimo en términos de él mismo no tenía 15 es exactamente la misma cosa sólo que peor porque en alemán está y disponer a quedarse en la noche no está muy bien ahí esa los tres aventureros hicieron ese dicho cuyo paquete oi aparentemente parece no tiene exactamente el problema problema técnico la inconveniencia si se da lo siguiente estamos hablando de hardware de hace 25 años entonces la es sólo para usted conoce la leche y la compañía es un libro del frank mentiu barro ustedes conocen la ley completa compañía es un libro de libro es el señor libro sobre el sobre el ataque yo tengo amistad personal con el autor del libro y él me , dijo que cuando él ponía compilar el dicho cuyo libro él apretaba el botón de compilación rodaba el comando la línea de comando y tomar un café y ver a otras personas en fin los buenos tiempos de la computación de otrora que usted y yo ni marco escribía el contenido de obi y usted iba allí a interactuar con la gente no ayudar a una viejita atravesar la calle porque eso realmente es importante no entonces hoy tan usted habla de sí de velocidad de computación el proceso es es en cierto modo hasta ridículo no porque de hecho las cosas mejoraron mejoraron demasiado en órdenes de gran magnitud pero tenía ese problema es un problema latente no tanto que hoy si usted mira el código fuente del tec y del hasta que usted consiga por que los chicos lo hicieron porque los chicos están guardando el registro porque los chicos están haciendo esto si usted mira la historia de la computación usted ahorrar algunos caballetes que ahorrar algunas instrucciones era significativo entonces así que hay que echar un vistazo a las cosas de cierta manera con una mirada histórica entonces la respuesta eso para hoy no haría diferencia ninguna no tanto que existe un paquete para el protector que se llama que creo que se llama peste el pdf si no me falla la memoria que hace andar de rudnei es debajo del paño pero no se que es lo que mas me gusta de la musica y de la musica de mi vida. yo en particular tengo un conjunto de diapositivas que el fondo de las diapositivas así que imagine que usted tiene una secuencia de diez ligh que es lo que mi diapositiva hace que digamos que tengo 10 diapositivas es como la diapositivas de diapositivas de diapositivas de diapositivas si yo tenía diez cuadros a mary poppins desciende de la vuelta y sale en 10 luces para dar la impresión de movimiento cada año cada cuadro es ser una cosa de esa animación lo hice así simplemente por la prueba para jugar algo tarda bastante tarda por lo menos medio segundo casi un segundo para compilar cada página



então assim veja que mesmo mesmas coisas
de hoje levam dependendo do que você
coloca do que você faz né você você você
tem um custo computacional né enfim
voltando aqui que eu acho que não vou
conseguir falar nada sobre o celular
enfim nós temos então esse pessoal que
fez o tal do cheese e eles e isso causou
uma revolução no que diz respeito à tec
a tecla até que enfim
ah ah ah isso porque as pessoas pararam
fora a gente puxa eu consigo usar pra
muito mais coisas do que originalmente
eu pensava eu consigo usar para muito
mais coisa
e foi aí que que as pessoas começaram a
se aventurar tanto que o manual o manual
do tics e gigantesco tem acho que mais
de 1500 páginas e assim é mais assim tem
uma série de de comandos uma série de
estruturas e uma das propostas desse
pessoal foi o seguinte tentar oferecer
um ponto importante
é tudo completo você está no limite do
que você está no limite da computação se
consegue adicionar poder computacional
um adiante esquece você já está nu no
máximo que no máximo que pode ser
oferecido entretanto o poder
computacional não é que não é e não é a
mesma coisa do que expressivo idade
então por exemplo você pode se falar com
a senhora se consegue desenhar uma
casinha em látex e falta bom mas é
difícil para caramba
agora é diferente se eu falar pra você
olha se usa essa má craque que já
desenhou um quadradinho que você entenda
é a mesma tarefa
só que com coisas muito mais expressivas
nesta consegue fazer a mesma tarefa de
maneira muito mais simples foi o que
esses caras fizeram eles te deram um
monte de coisas um monte de coisa pra
pra poder pra você poder seria um bom
onde né
hum seja bem loucão evanescence seja
feliz pra fazer a algumas coisas no seu
documento bom
ah eu não pretendo programar em 2015 com
vocês tá na verdade paulo me pegou e me
pegou assim de surpresa pra falar isso
aqui é um em um coque que seria seria
dodô stefan stefan uhmann e stefan
quatro vezes ele é um usuário tech
alemão um amigo da gente e ele mantenha
ele mantém alguns sites em língua alemã
e também inglesa no caso o técnico eu
sei que é dn o piep lotes também é dele
eu acho q td é também a de bonfim mas é
ele viria a manhã para a conferência mas
infelizmente alguns o melhor
infelizmente ele virou papai né então
ele
ele não pôde vir então eu vou falar um
pouquinho do pra vocês do que é possível
fazer hoje com tec com a tech tá então
aqui ele elenca os slides não são meus
nós vamos nós vamos desfrutar juntos eu
sei eu sei o suficiente de tic que eu
usei na minha tese e também para outras
coisas vocês quiseram também encontra um
pouquinho mais onde o uso lattek eu não
uso só para coisas acadêmicos também uso
pra outras coisas caso vocês queiram
ouvir bom então aqui tem a agenda então
a xix e buzz se baseia em um conceito de
nos e é this not seria seria a
coordenada ou isso ou é o pontinho e o
ad seria por exemplo um eventual ligação
com algum outro com um outro notam é
basicamente é isso aí ele falou assim
puxa vida o cara escreveu um manual de
1500 páginas para falar dessas duas
coisas
enfim exatamente
aliás a hifenização em alemão já np
completo né mas enfim não há aqui
ele mostra um diagrama simples com um
com quatro nós como que normalmente a
gente faria isso eu faria
você lembra lá no seu plano cartesiano
aí ele falou assim olha esse daqui é na
posição é na posição 01
e se daqui é na en10 é é na 3114 serena
2002
enfim assim por diante você faria um por
um puxa é legal isso bacana né
mas e se a gente usa é puder expressar
de uma forma posicional você fala por
exemplo bilou hefty off white light of
war é muito mais intuitivo é muito mais
fácil então no caso node sem problema
nenhum é o conceito é do de um objeto
gráfico
aqui entre parentes é uma coisa que a
gente chama de lei bom não é o leigo que
o paulo está falando é um leigo ou na
figura então aquele elemento um elemento
qualquer tem um nome tem um nome o um
nome é um identificador o nível e o que
está entre chávez é o valor é aquilo que
será exibido naquele lugar tão sem acho
que sem muitas dificuldades
isso daqui porque está entre o colchetes
é o que chamamos de atributos ou
propriedades estão neste caso aqui eu
estou falando o seguinte eu quero que no
caso o meu nono 2 ele seja colocado
abaixo e à esquerda do que do meu nome
ou nó que foi cujo nome é um e assim por
diante
obviamente aqui é o ambiente que se que
se faz coisas de ti 15 e agora aqui em
cima acho que é importante comentar aqui
de novo são alguns atributos que foram
colocados nesse caso alto significa pra
pra ele mesmo gerenciar a área ocupada a
área para o quê o que esse desenho que
vai ocupá nou distância acho que o nome
já já indica pra gente o que significa
qual é a distância de 19 o outro
há nesse caso o que eu quero que seja
três centímetros bem simples e aqui
aqui já é um construto um pouquinho mais
e mais trabalhado xix e também é uma
coisa que na computação a gente chama de
dsl que é a do homem específico
linguagem linguagem específica de
domínio existe uma uma espécie de
linguagem vizinha de uma linguagem de
programação que permite a gente e é
específica alguns alguns comandos nesse
caso que ele fala para cada nó eu quero
que aplique o seguinte estilo então eu
quero que seja uma bolinha
eu quero que efetivamente que não
adianta eu falar que eu quero uma
bolinha
ele vai falar isso aqui é uma bola mas
você tem que explicitamente pedir para
que ela seja desenhada e eu falei olha a
fonte
no caso aquilo que será aplicado para
cada um para cada bloco que estiver
entre as chaves
eu falo eu quero que ele seja da ele
seja numa fonte que seja são sérios né
acho que todo mundo sabe o que é fonte
são série a
deixa eu ver se eu sou péssimo pra
desenhar mas acho que
tocam tarde todo mal né
é mais ou menos isso daqui é chamada é o
que eles chamam de serifa é que é a fé é
a é o pezinho a cabecinha então por
exemplo uma fonte que ela tem serifa
times times acho que é o exemplo mais
clássico
uma fonte que não tem isso aí ao
prefeito ari ao então sf significa nessa
série vem do francês sem alguma coisa
não sei o que é ser francês
alguém sabe se foi mesmo sem serifa
então a palestra está indo
maravilhosamente bem o palestrante não
sabe metade do que ele está falando
maravilha então eu digo eu quero que a
fonte seja desse estilo
eu quero que o tamanho dela seja largo
do tamanho é fantástico e eu quero que
ela seja em negrito tá então se a gente
voltar a ver
definitivamente foi isso que vai
acontecer daqui é o número em inserir
também é meio estranho maylson e sem
serifa isso isso é verdade tá oi não eu
que disse eu disse aqui eu disse a eles
ou não esse é o estilo da fonte e seu
estilo a fonte
é o seguinte quando você faz um
documento vamos falar em lattek ele
determina por de pouco o padrão que você
vai ter que você vai usar com o
computador modo como fonte ele determina
expor padrão você tem como escolher
outras fontes existe o o leite fonte
catalog que você pode escolher outras
fontes preço em geral
você sempre tem um pai você tem a fonte
que a gente chama eu eu não gosto de
nomes fontes ele falou eu gosto de
chamar fonte romana
eu tenho essa predileção então você tem
a fonte romana e você tem uma fonte sem
serifa então em geral quando você
carrega o faz um arquivo em látex em
mudar alguma coisa no cabeçalho no
preâmbulo você está usando a computer
moda como como fonte como fonte romana
como fonte com serifa ea com peter
morgan sanz que seria a o equivalente
sem serifa então é essa é uma pergunta
importante porque é fácil mas como é que
o mundo a fonte
como é que o col talvez até vale a pena
comentá existem algumas fontes no
catálogo no catálogo do atec elza fonte
do sistema para usar fontes do seu
computador a os andinos no caso você
tenha um pdf o técnico eu posso comentar
isso depois ele não oferece opção para
você fazer isso diretamente você tem que
usar algum outro em algum outro sistema
que ofereça baseado em técnicas que que
ofereça isso que no caso o zytek o xeque
o zytek ou uma lua lattek são as duas
opções que temos no no momento eo ponto
o ponto é o seguinte existem algumas
vantagens em usar um existem algumas
outras vantagens
eu por exemplo eu sou um usuário
clássico pdf ou até aqui mas há algumas
coisas eu também uso outro que permite
que eu defina a fonte antes do do
sistema que existem algumas outras
características que o atec já trata pra
gente por exemplo ligaduras ligaduras o
até que já faz automaticamente por
exemplo digamos que você você vai
escrever a seguinte palavra por exemplo
você vai que eu me lembro por exemplo se
alguém quiser testar isso nuno lattek
escrever essa palavra fiel à o ponto é o
seguinte vocês vão ver o seguinte quando
ele ele
a criar é o formato ele vai ele vai
fazer mais ou menos o seguinte vou ver
se eu consigo mostrar aqui pra vocês eu
não sei se eu vou conseguir
ele vai fazer alguma coisa mais ou menos
assim né ele vai juntar o e se f com
esse por causa de espaço por causa de
algumas outras características é isso
que a gente chama de ligadura né
você torna o texto o texto mais mas
fluente mahé aquele aspecto aquele
aspecto que ele é subjetivo é a beleza
ea busca do do belo então nesse caso
aqui
obviamente existe uma teoria por trás
disso não é pura nosso objetivo no
sentido de que cada um faz o que quer
não existe uma existe uma teoria por
trás disso então a a fonte é que você
carrega ela também tem que ter esse tipo
de esse tipo de propriedade né mas a
minha times ela não permite que eu faço
isso às vezes ela não oferece esse tipo
de de funcionalidade sei se alguém aqui
por exemplo usa ilustre illustrator
illustrator
você tem a opção de escolher lifes
particulares da fonte por exemplo aquele
g que tem aquelas duas voltas lá embaixo
acho que é sushi que chama não me lembro
só isso é um por exemplo isso daí é uma
propriedade adicional que a fonte
oferece
e aí muitas vezes o técnico capaz de
detectar alguma algumas propriedades
dessa fonte então a respeito da fonte em
geral você tem a fonte de fundo do do
sistema mas é possível que você que você
use algumas outras fontes tá aqui ó ele
deu outro exemplo deste código aqui tem
no momento que a gente tinha os nós
nesse momento a gente passou a ter o as
ligações propriamente ditos são os edis
então se a gente for aqui dá uma
olhadinha no no código que ele fala pé
no sentido de caminho
para cada para cada nota disso daqui eu
quero aplicar o seguinte se eu quero que
o tamanho que seja sem serifa que seja
pequeno
enfim a ele fala essa parte eu acho
famosa de 11 edge vão esquecer um
pouquinho esses três elementos
eu falo de um com ad pra 4 que ele vai
fazer ele vai colocar pra gente pra lá
eu só uma coisinha 500 que eu esqueço
eu não sei se isso aqui está exatamente
certo porque se eu não me engano ata
certo
o pf ele coloca uma seta o droga ele foi
uma linha
então se eu quisesse se eu quisesse
explicitamente falar que era uma setinha
eu tinha que pôr um símbolo de uma forma
uma eu tinha que pôr uma coisa mais ou
menos assim mais ou menos não exatamente
isso a limpo e falar olha isso é uma
certa nesse sentido nesse sentido
bom então eu falei olha de um eu quero
colocar uma linha de quatro e assim por
diante
nesse caso aqui como eu quero colocar um
label quero quero colocar um rótulo na
minha
nas minhas nos meus arquivos nos meus
meu sedes
eu coloco aqui então eu falei olha nesse
caso left right
eu tô falando o seguinte se eu quero que
fica pra cá o placar
no caso aqui
ele também determinou no caso você
sempre usa left right você não usa a
bomba ou o bilou nesse sentido porque
você se você assim por exemplo se você
vai daqui pra cá digamos aqui é fitch
rating
se você vem daqui pra lá exatamente o
contrário então é relativo à direção ao
sentido que você tá induta
vamos continuar aqui já é ou a usando
usando um ambiente de the matrix né de
the matrix que é o posicionamento vamos
ver se temos o código aqui é um
pouquinho mais complicado tá peço peço
desculpas
pela pela all o aumento de complexidade
nessa daqui é mais um show case do que
do que se pode ser feito mas a idéia é
mostrar para vocês o que é possível
então no caso aqui eu defino uma matriz
de nós
matemáticos eu falo que eu quero uma um
separador seria a distância entre entre
linhas e entrelinhas a aqui no caso eu
tenho valor eo ea unidade eu tenho o
separador de colunas e eu tenho o a
largura padrão isso é interessante
porque o time que se vai sempre colocar
como como deixou a largura do objeto que
você está digitando que você tá
especificando então se você escreve uma
palavrinha pequena pô ele vai ficar de
embarcar o objeto desse tamanho se você
escrever pindamonhangaba ele vai ficar
um objeto desse tamanho então se você
especificar por exemplo a largura
independente da palavra do objeto que
que está lá dentro ele vai ser ele vai
tentar colocar naquela naquela rua então
isso é bem é bem importante
foi aqui e me é exato e neste caso aqui
é tamanho horizontal o ex ex xx é é isso
aqui é uma prova é uma prova é uma
unidade mas ela é proporcional à ao
tamanho da fonte e essa em particular
diz respeito à proporção horizontal o
ex-ceo e x é referente à altura altura
altura vertical
eu não me lembro muito da ibm é o nome
lembra que eu falei pra vocês que está
aqui é o holley bom aqui eu defino eu
defino os elementos da minha matriz de
boné
agora eu falo m posição um barato
posição um placar
aí o resto acho que a gente já viu antes
o edge daquela coisa é que a matrix o
ambiente metorex aqui nesse caso permite
que eu faço essas especificações mas
veja isso daqui é computado em tempo de
em tempo de construção do da página
então é por isso que eu comentei que
acho que o xix e ele trata muito mais de
expressividade do que poder
computacional né ps3 você faz isso sem
dúvida nenhuma
o ponto é se você tem estruturas muito
mais convenientes para você fazer uma
coisa é óbvio que você vai você vai
preferir isso estamos aqui falando de
seres humanos nós não somos nós não
somos máquinas que que programam né que
simplesmente escrevem código baixo nível
se você tem uma opção de escrever coisas
muito mais simples muito mais
conveniente é óbvio que você vai optar
por isso bom
aqui não tem exatamente muito segredo e
se daqui é um floral chardy que também
foi feito em em fixe uma olhadinha
existe um pacote chamado morte da irmã
que é construído em cima em cima do xix
e às vezes você tem um pacote que usa
pacote de outras pessoas então nesse
caso de matar eu falo eu quero um smart
guardian lembra sempre lê documentação
tecnopop espaço nome do curso o tek
dot.net nome do pacote lei documentação
é chato é complicado enche a paciência
mas é a única forma que a gente tende a
gente tem de aprender e escrever manual
é horrível horrível falo falo porque o
senhor vai escrever os meus
então aqui uma opção eu falo que é um
diagrama de fluxo na horizontal muito
bem o que eu tenho edite lei que obrigue
tec mac index ponto é isso é isso eu
tenho isso
que maravilha porque esse daqui teve que
lê as 1500 páginas e não precisa leis e
lê a documentação desse pacote
o ponto é o seguinte você não precisa
saber por exemplo como é que uma função
computacional é implementada desde que
você saiba a sua a sua equipe as suas a
sua assinatura
eu acho que esse é o ponto você não
precisa saber como é que o ataque e
implementa uma função do baixo nível
desde que você saiba como você tem que
utilizar o grande problema é o seguinte
vou falar como desenvolvedor lattek às
vezes às vezes não vou falar assim acho
que é acaba virando regra documentação
não é não é manual do usuário
é a mesma coisa por exemplo eu também
programa em java java doc não é uma
documentação do seu programa java doc a
especificação de rap a visibilidade
escopo método público-privado variável
global vai enfim ponto é eu acho que
isso é uma deficiência da comunidade
técnica em geral porque você faz com o a
pessoa de tec faz coisas para outras
pessoas de tec e nem sempre fazem para o
usuário
assim existe um gap muito grande existe
uma má lacuna muito grande nesse sentido
então às vezes você tem coisas por
exemplo assim que se fala num só mês
é simples de fato se você fosse imposto
isso daí é ridículo
foi o que você diz mas se ficarmos
escrever um manual de 1500 páginas você
chegar nisso mas aqui está alguém teve a
bondade de a gratuidade né de falar o
seguinte deixou pegar aquelas 1500
páginas em condensar ap pelo menos um
sub 7 uma particular funcionalidade para
fazer um diagrama simples a pessoa
fazendo um programa simples dessa forma
de novo o ponto não é computado a
computar bilidade o ponto é
expressividade é que vai fazer o que
você quiser inclusive que você não
quiser principalmente mas mas o ponto
aqui é como eu consigo escrever as
coisas de uma forma mais mais simples
mas poxa
digamos que você não conhece esse pacote
você obviamente obviamente vai ler
documentação depois né
vamos ser vamos ser bem sincero você
olha aqui fica um pouco mais claro por
mais que você não saiba o que esteja
acontecendo existe uma existe uma uma
ligação mental
assim existe uma conexão mental que que
permite criar uma imagem disso né eu eu
me aventuro para o lado da semiótica né
você se crie uma representação muito
mais aderente aquilo que a gente a gente
está acostumado fala bom eu tenho um
diagrama ele é esperto né detalhe o
diagrama é esperto não é tão bom
eu tenho um fluxo esse fluxo é
horizontal então eu tenho elementos que
são separados por vírgula então suponho
que seja cada caixinha bom então é isso
aí eu tenho que rodar eu chego naquela
maravilha
netão optimus mais um aqui diagrama
circular op a mesma coisa que a gente
viu o actuais ou seja de novo de novo
representação expressividade desculpa se
eu estou falando isso demais mas no meu
caso só são quase 15 anos usando tech
pra gente chegar num ponto fala assim o
problema não é não é a contabilidade por
uma expressividade como você consegue
fazer as pessoas usarem dando coisas que
as pessoas vão passar exatamente o meu
pai meu pai computador meu pai não tem
informação nenhuma com computação
ele passou um dia me viu escrevendo isso
fosse nossa que coisa legal assim é
fácil e fato por mais por mais maluco
que seja por mais maluco que
seja se você oferece coisas que são
muito mais conveniente que as pessoas
porque veja o foco não é no seu
documento foco é seu
as pessoas me perguntam e aí eu falo
isso sem me desculpa eu tomo eu sei que
estamos no shopping della tec mas eu
falo isso com com ele me perdoem talvez
a talvez a prepotência eu acho que eu
falo com propriedade as pessoas me
perguntam eu tenho tanta dificuldade
para escrever maio eu faço tanta coisa
no na minha tese para escrever lá até
que tal eu sou muito claro o seguinte
olha eu prefiro um usuário de word que
saiba o que está fazendo que um usuário
até aqui eu falo isso abertamente porque
eu acho que se você se propõe a fazer
alguma coisa você propõe a usar por
exemplo até para escrever sua tese
tente usar a gente vê a documentação nem
tente ver como as coisas são feitas
porque às vezes você acaba se metendo em
um buraco e que é difícil sair
é difícil sair aí você começa a fazer o
código franken está em você pega perna
de um você pega o braço de outro você
vai colocando tudo tudo lá e de repente
você vê de repente você grita e salah
eventos a live né
mas é exatamente isso que é exatamente
isso que acontece
ah e eu não censuro isso porque o
workshop de si como a gente está tendo
que não acontece
esse é o primeiro workshop que eu sou
convidado a falar o primeiro workshop as
pessoas
as pessoas fazem eu sou usuário até que
bacana você vê o código do cara que fala
você não usa até aqui você é um ótimo
alquimista né a pessoa está prestes a
descobrir ou ela descobre a pedra
filosofal ou ela ou ela cria a tese dela
é basicamente é isso né
mas eu estou falando isso com bastante
sinceridade para vocês ou aqueles links
que o paulo paulo nem mostrou por que
vocês em particular aquele aquele link
do jack ma books que é uma uma editora
do reino unido
a autora na a autora do daqueles livros
em particular o leitor que for noviças e
é que aniquila talbot
ela é uma estrela é muito didática eu
recomendo veementemente que vocês olhem
o material dela tem dois
o hotel tem três livros ela tem o até
que focam tweetie noves muito bom ela
tem um livro chamado ao a alte os
altinhos leite então também é muito bom
e excelente e ela tem um último salto eo
leite leite que for administrativo órgão
como você usa a tec para trabalhos
administrativos mala direta
algumas outras presente que todas coisas
que vão além do uso acadêmico então eu
acho que vale a pena pegar materiais
assim de pessoas que escrevem pessoas
que explicam bem as coisas e ela é minha
com a autora em alguns em alguns
projetos e quando eu mando coisa por ela
revisá la de volta com 1 1 milhão de de
alterações mas é aquele olhar da pessoa
que trabalha não somente do ponto de
vista tecnológico mas também está com a
pessoa de saber aquilo que quais são as
necessidades de novo expressividade
a yoki ou agora temos um diagrama de
bolha
enfim vamos esquecer esse meta logo aqui
é só uma forma de de digital d7 de
fotografar tipo grafar vamos aceitar
mesmo que seja um neologismo vamos dar
agora
gente essa idéia realmente smart decisão
de concordar comigo eu simplesmente
mudei o os atributos e eu tenho aqui ô ô
ô meu meu programa de bolha
agora o diagrama de consulta
hassan gente tá ficando chato isso já né
ninguém está fazendo nada ninguém está
trabalhando opa diagrama descritivo
existem mais coisas pelo menos bom
argumenta coisa provavelmente para o
ordenado concordam
então tão style a abrir aqui fecha aqui
porque isso veja que a vírgula é usada
como o como separador
então se um seu mantivera a vírgula a o
termo que a gente usa em tese seria
ativa seu manter a vírgula ativa aqui
ele vai ele vai achar que é um outro
bloco então eu colocando entre chávez e
eu falo esse escopo não conserva esse
escopo então e tem um né parzinho
ordenado outro vizinho de nada e assim
por diante
de novo sem muito sem muitos segredos
opa agora é um diagrama de desde de
prioridade descritivo enfim bom nada
nada demais e tá ficando chato gente tá
ficando chato bom resumo é fácil de você
digitar mais você tem uma resposta muito
muito surpreendente lá é uma um se f 1 é
uma coima 180 vezes e é veja que o nesse
pacote ele já já tenta já tenta a ele
calcula por exemplo qual é o objeto
maior determina a a largura do maior
como como sendo de fogo e os outros
enfim outras e outras coisas lembra
então se vocês quiserem descobrir o que
é esse
você digita onu 6 digital no prompt seus
por exemplo tex doc morte
ou vocês acessam www.xbox.com
ponto net aí vai ter um vai ter uma uma
coisinha mais ou menos assim você vai
ter lá você vai digitar o smart da grama
aqui e mandar buscar você vai ter a
listinha dos documentos bom legal agora
nós temos os flow charles bouchard
também uma coisa bacana é o seriam os
fluxogramas é os gráficos de de fluxo
há aqui um pouquinho mais complicado
porque eu estou definindo os vários
estilos que eu tenho então deixa eu ver
por onde eu começo bom
ele fala o seguinte a um nó de árvore em
árvore ele tem ele tem a forma de um de
um retângulo
ele tem os cantos arredondados
eu mando ele desenha esse encontro
significa lembra que eu falei do ponto
então a partir de onde a partir de onde
que eu da minha coordenada onde eu vou
colocar o meu objeto eu posso por
exemplo colocar como se fosse um dock
pra cá né fazer ele ele apoiar esse
pontinho ou pra cá ou pra cá alguma
posição qualquer nesse caso eu estou
colocando no centro de forma que ele vai
ficar centralizado com os outros
a largura do texto o alinhamento é
centro caso eu tenha quebra de linha no
caso como eu especifiquei a a largura do
meu objeto se o texto passar ele vai
para a linha de baixo e aí eu alinho no
centro ele fala a cor de cima que é
legal pra gente fazer um gradiente eu me
recuso a falar de degradê
a gente tem um gradiente a parte de cima
top cau o bóton com a parte de baixo
aqui no caso isso daqui que eu tenho
blue um ponto de exclamação 20 significa
que eu tô pegando 20% da cor definida
como como o azul
agora não me lembro se o complemento eu
não sei se na verdade eu tô pegando 80%
da corus eu estou pegando 20 enfim mas
essa é a essa ideia bom
sep aqui eles significa um espacinho que
eu tenho em que o meu texto que está
dentro do meu objeto e as bordas tá
ambon definir um estilo o estilo global
agora como estou fazendo um fluxograma
eu tenho alguns alguns decisores por
exemplo o que é uma decisão
é um negócio desse olha ele herda um tem
semus naquele conceito de de herança né
de de linguagem programação então eu
estou dando todas as propriedades de no
caso deste nó então o meu desejo é um
treinou só que a outra vez de ele ser um
rectângulo ele vai ser um da mondo e o
resto se mantém as propriedades em
winners ep eu eu coloco no caso que lhe
colocou 10 porque como é uma forma que é
mais difícil de você colocar o texto
dentro para não ocupar muito espaço aqui
no caso ele definir o que vai ser um nó
principal em vermelho e ele define a
propriedade do ambiente e como termina
tá bom vamos dar uma olhadinha aqui
continuando ele fala que a a primeira
coluna é a decisão ea segunda é o os
nossos do do ambiente então ele falou
olha fórmula single a eni question acho
que é melhor mostrar que fica mais fácil
eu tenho a tabela que ele faz é o
seguinte aqui eu coloco ele usa uma
matriz ele fala aqui desse lado são as
perguntas e pra lá são as há há há há
é exatamente isso aqui é isso aqui são
as decisões e aqui são os nossos
convencionais e ele definiu uma coisa
especial que é o começo e o e o fim
tá é mais ou menos isso aí ele falou
você também pode fazer você pode
desenhar as coisas através de de laços
nesse caso
olha que interessante ele usa ele usa um
comando que a gente está acostumado a
ver em linguagem de programação com um
foguete no caso
bacana ele pega o padre ordenado então 2
e 3 3 e 4 4 556 ele te olha de x e y né
ele falou olha o mapa na posição x 1 tal
nó a ele definir aqui ó e acionou lembro
aqui é uma coisa que a gente também
chama de choque hand é uma forma de você
falar com menos - palavras alguma coisa
é mais complexa
enfim ele vai esperando então esse aqui
é um exemplo eu não vou entrar muito em
detalhes e não dá tempo de mostrar tudo
gente aqui um outro exemplo né
gráficos de gráficos de chances aqui
torta pizza porque se alguém o seguinte
se por um acaso por alguma razão deste
ano foi chamado por alguma banca aqui
que tiver isso daí eu vou provar
tá bom eu tô falando já tá não me
coloquem gráfico de pizza na tese tá eu
bato 16 em brincadeira gente então isso
aqui é um gráfico de pizza que chama pai
então né bom olha que simples pacote
pedir é pai simplesmente favor o rei do
pop ter medo
a gente é muito simples e barato deu
certo
nesse caso 180 é porque eu não faço a
mínima idéia de onde eu começo ou o de
onde eu coloco o primeiro né
certamente ele está colocando agora
começa o primeiro aqui
é eu não sei exatamente como é que ele
coloca porque às vezes o time usa
coordenada negativo isso me deixou louco
já às vezes aqui a 10 ea que ao menos
alguma coisa tal é bem maluco negócio
mas eu vou ficar te devendo a resposta
que eu também não sei
bom um gráfico coordenadas polares
aqui é um cloud short bom aquele aqui
a desculpa é o outro é esse aqui é o
poeta jorge
a iacc veja que não mudou nada e só
mudou o tipo do do gráfico aqui é um
gráfico de domingo em jogo a gente muito
bem eu sou uma pessoa de computação não
estou acostumado a ver esses gráficos me
desculpa gente aí o gráfico de barra e
se eu acho que esse acho que pelo menos
eu conheci
veja aqui é um pouco mais trabalhoso no
caso aqui eu tenho o título eu tenho a
qual é a qual é a barra que eu vou usar
eu falo que eu quero os novos valores
perto das coordenadas
eu falo o estilo da linha do eixo do
eixo y eu falo que eu não quero linha
que divide o eixo x eu falo da da
largura do do contínuo nesse caso eu não
tenho eu falo que eu quero sim é
coordenada simbólica se eu não tivesse
ele vai colocar 01 né ea coordenadas
numérica nesse caso atribuindo
coordenada simbólicas e aqui eu falo
opto lote o valor né no caso aqui de
novo é como se fosse um para o ordenado
tá e assim por diante e eu a coloco a a
legenda ele daqui é um é uma pizza três
de pizza 3d
sou interessantíssimo roupa temos mais
mep também em meta é mais mais
interessante de novo mané com collor
tecso haiti node com 7 concursais quais
from 0
aí o chapéu do papá load fechou chaud
uma filha de se daqui a quem está
pensando em ter filhos pensa seriamente
em um molde de se a outro chapéu onde
daqui mesma coisa aqui não vai entrar
muito em detalhes mas é só pra gente nem
tem três filhos mesmo ali tem 12 não
está certo tem 1 2 3 4
então eu tenho 1 2 3 e 4
bacana aí tá pode ficar mais complicado
definitivamente pode ficar mais
complicado
definitivamente pode ficar mais
complicado tirar uma foto
ah bom vamos pra outra parte da sessão
aqui um diagrama de venda sem também
muita muita coisa que é feito no braço
veja que ele está ele está definindo os
objetos está colocando e está está certo
aqui no smart é da honda e agora mesmo
temos árvores
daqui eu uso bastante também aqui deixa
eu ver se ele usa o forte não ele não
uso forte
existe um pacote chamado forte que é
muito mais simples do que é mais uma vez
aquela história do maine na época a
gente viu de usar o chapéu diz
mas existe um pacote chamado forte que
você pode por exemplo fazer uma uma
árvore assim por exemplo a b e c você
faz ela assim a
esse pacote forte faria essa árvore
assim é é um caminhão como eu como eu
trabalho com a parte de linguagens
formais e às vezes faz árvores de
derivação aquelas coisas assim
eu uso bastante pacote porque me é
simples né não veja bem de novo é que a
gente não sabe fazer aquilo então você
tem que escrever por exemplo um punhado
de estudar quem escreveu isso obviamente
vai ficar com a solução mais simples é
conseguir conservar o que falar que a
gente é preguiçoso e conservação de
energia tá é mais é mais bonitinho aí
uma uma árvore na horizontal isso não é
muito bom
a mesma coisa aqui no caso eu dou
algumas propriedades no caso eu falo que
ela cresce pra pra direita agora
geometria
se quiser o cliente muito legal também o
tio tanto no manual do tic se começa um
tutorial no próprio manual construindo
alguma coisa bem parecida com ele no
caso o time seu cliente faz uma ele
oferece mais algumas conveniências para
as pessoas que que gostam de fazer esse
tipo de desenho aqui é como ele desenhou
aquilo nesse caso não tem muito segredo
porque você tem uma série de uma série
de coisas mais complicadas aqui ó
mais um exemplo da questão é muito legal
veja que é marca até aqui a a um
pontinho de ensino de secção de novo
como ele foi feito veja que também não é
um código tão tão complicado de novo
temos que ler o manual saber o que o
manual tempo nos oferece
aqui no caso é a plotagem de funções o
bacana é uma cena de novo aqui obra que
a função tá lembra bastante aqui no pote
e se alguém se alguém já se aventurou
por ele aqui uma uma coisa nova uma
função senoidal de novo nada tão tão
complicado cadela aqui ó
veja sim isso daqui é definido no no xix
e como uma é palavra reservada como foi
chamada de função mesmo tom
caso sim é sendo mesmo o caso em 2d 2d e
3d está errado título é essa daqui é
essa é ela mesmo aí no caso
o que mudou a aparentemente ele
rotacional aqui a parte de cima do e
rotacional os eixos aí um gráfico de
superfície uma função a lide daqui agora
sem os as linhas de deal se mais alguma
coisinha aí aqui também diz uma coisa
dessa demora pra você com pilar é aquilo
que eu falei pra vocês tem coisa que às
vezes dá um pouco mais de trabalho veja
que nesse caso aqui ele usa um pedaço de
um código em lua então provavelmente
requer o rei provavelmente não ele quer
o lula lá técnica é um outro em pra você
rodar mas você pode também otimizar
alguns cálculos no ano usando uma
linguagem de programação e você chama
ela aqui ó
ele está chamando um código em lua está
aí mais alguma alguma coisinha lá aí
muito bacana
parece aqueles macarrões né que aí
torcendo na superfície a uma forma um
gráfico paramétrico apresentei sua
namorada que é matemática no dia dos
namorados com algo assim também vai
achar um nerd mas não tem problema
a oi é exatamente o lógico não me faz
não me faça contar uma uma coisa nerd
que aconteceu comigo nesses nesse
sentido pois eu quanto lá fora
vamos lá mais uma foto e outra flor caso
as moças aí gostem de outras flores né
aí temos a parte de química e um anel de
benzeno
eu sempre odiei isso daqui continuou de
ano com todas as fibras morais no meu
corpo aqui o anel de benzeno
veja neste caso aqui quem é o autor é o
o meu deus é o clemer berger à veja que
ele simplesmente definir um objeto
químico a esse daqui é coisa de químicos
ainda é uma notação já convencional
aí é um é convencional do pessoal de de
de kimi não me perguntem o que significa
que eu sempre fui muito ruim em que caí
no caso a modelo de glucose ó vocês
poderão lembrar aqueles bons tempos né
de ensino se no médio
aí os atua nos mais coisas mais
trabalhadas aqui eu tenho um link em
baixo da tabela periódica que é muito
divertido e alguns exemplos gerais e
pode ter uma timeline
aí o código dela circuitos elétricos
pessoal e da engenharia novo aí você tem
até coisas de mecânica né coisas bem
você tem mais os pais em física setores
de um cilindro
não sei mais o que temos se tem coisas
tem como colocar algumas coisas e se do
marco e durou até que um ovo votaste o
saldo de novo uma mandala aí é muito
bonitinho fazendo uma camiseta ser
processado por usar uma coisa sem pagar
direitos autorais a e por fim este
exemplo aí nos quais acabaram
eu preparei eu tenho um toque no domingo
de uma amiga que fez mais um pacote em
2015
ela não vai poder ver que o evento ela é
alemã e ela me pediu para apresentar se
você não se importar eu gostaria de
mostrar pra vocês o pacotinho dela é é
bem diferente e mas eu acho que é
divertido pra mostrar algumas coisas um
pouco diferentes que eu até que pode
pode fazer chover se eu tenho onde que
eu coloquei


-----
Aquí tengo un preview de lo que quiero hablar. Es un paquete llamado [`Tikzduck`](http://ctan.uniminuto.edu/graphics/pgf/contrib/tikzducks/tikzducks-doc.pdf) y solo voy a contar un poquito, un poquito de historia para que ustedes entendiendan la relevancia de eso. Mi avatar, en mi imagen en el desarrollo de software, en fin, en el internet es un patito de dibujo que toma un palo de cricket, soy de las personas que es conocida en el internet como un pato de dibujo, al final de cuentas el internet funciona, ¿sí?

Y con la gente conversando las posibilidades, inclusivo si haciendo un paréntesis, si alguien usa [Inkscape](https://inkscape.org/en/), existen plugins para poder exportar como svg, para código tikz, es un código 
entonces si es es una posibilidad entonces hablar para ustedes en ese paquete aquí que particularmente me parece ese paquete una gracia que creo que tal vez va a hacer ustedes vamos a hacer un patito en casa aquí ella ella pide disculpas que ella no
no pudo venir entonces vamos a la entró de lo que está ella dice el siguiente buen pato de goma se pueden hacer de látex no a una pregunta pero se pueden hacer de
la leche sigue y la respuesta es obviamente claro que no quien va a pensar en un
absurdo de hacer un pato de goma con la tech no y es posible hacer eso
con ese paquete llamado tics y docs como surgió ese una cuestión nunes text anj
que es una amiga mía también de nuevo existe una eso una mafia que tenía de
más o menos la boca parece que el bacana carga el paquete había sido antes él ya
no se que hacer, no se que hacer.
el ambiente 15 de aquí me da un pato puro y simplemente la aa pero yo no me gusta usar el código directo que quería utilizar como biblioteca puedo llamar a la biblioteca de xix biblioteca y utilizarla a la biblioteca de patos y hablar quiero dibujar en la posición 00 pnea o. pero no se que es lo que mas me gusta de la musica de mi vida, que es lo que mas me gusta de mi.
atributos sin embargo en el caso se puede definir por ejemplo el bari color del cuerpo
en el caso azul color de la cabeza en el caso a verde el color del pico en el caso rojo y la
el color de los ojos siempre en el no en el chavinha es igual el valor separado por coma a tenemos algunas algunas características entonces por ejemplo usted puede hablar mira yo quiero
de, la, camiseta, de, la, camiseta, de, la, camiseta,
la cartulina la roja usted si usted tiene un valor de fuego la llave
si se especifica se aplica de lo contrario utiliza el valor del valor predeterminado
que se define muy bien aquí es uno es un ejemplo en este caso yo pedí que pedí yo
me pedí a mi amiga hacer la princesa peach de la super mera como un pato
pero no se que es lo mismo,
en el manual incluso en el manual del xix docs


ela fez o mario luigi di ea princesa
peach muito bacana não está aqui está
bom temos vários estilos de cabelo então
você pode definir vários tipos de cabelo
inclusive com
cor se você quiser você pode falar eu
quero eu quero a o cabelo o cabelo longo
né eu quero com a cor azul você vai lá e
definir e eu tenho roupas
obviamente né muito é muito importante
também
você tem camisas você tem jaqueta você
tem capas estão aqui é um exemplo de um
de um patinho executivo com uma linha
muito simples de código né
temos obviamente os chapéus
então nós temos vários tipos né
acho que o mais interessante é se daqui
eu espero que quem a itália terminar
curso que está a defender que consiga
finalmente fechar com o patinho de ciné
que mais que temos tem muito mais no
manual no caso tem até coroas
lá temos óculos porque é também muito
importante e você pode fazer a
combinação de tudo isso no caso
mensagens você pode fazer o o patinho
segurar uma uma plaquinha ele pode falar
com ele pode pensar no caso
esportes no caso requer roque futebol
aqui no caso seria o pato neymar é
obviamente ele não está rolando né que
acho que seria muito mais adequado para
o momento
veja que tirando a parte da definição
das cores isso daqui a gente já a gente
já sabe você simplesmente fala que o
corpo tem essa
essa cor a camisa tem aquela cor a
jaqueta é isso e aquele definir isso é
um comando do time que você define
algumas listas no caso ele definiu só a
parte de baixo pra fazer a bermuda aqui
no caso mostrou mais duas duas a
uniformes daqui é daí uv é o time
italiano e daqui é do monchengladbach é
um time da da da alemanha e aqui é um
outro exemplo do do patinho aí temos
comida também é óbvio então você pode
fazer o seu patinho comer pizza sorvete
tomar
milk shake como um pão bolo ou beber um
vinho e no caso você não for assim eu
quero eu quero gerar um pato
aleatoriamente existe um comando handa
que ele vai tirar um pato aleatoriamente
porque veja fala verdade se você não
tinha pretensão de usá lo até que a
partir desse momento você está tornando
se tentado a tentar rejeitar um papo
abra seu coração neste momento olha para
a câmera da verdade diga o que você tem
vontade
no caso aqui de novo executado eu peguei
um médico enfim alienígena e você pode
fazer muitas coisas lembra estamos
falando de tixi o que foi definido não
vejo aqui no caso ela definiu por
coordenadas eu coloquei um retângulo
tudo aquilo que ouvi lá atrás eu posso
por exemplo não chamar um dock e colocou
o patuá e ela definiu alguns alguns
nomes com algumas posições
então por exemplo vez de você especifíca
a coordenada você especifica os
pontinhos
vamos lá a temos alguns exemplos no caso
aí a páscoa a lowe inverno e natal
aí os animais da fazenda a quem é fã de
star wars a própria tem aqui um pato
escoteiro no caso que não dá pra ler é
escotismo para patinhos aí aquela mostra
o processo de ratificação é alguma coisa
assim
no caso aqui temos uma foto na do dono
do terreno na marcha para a ciência uma
arte for science que aconteceu não me
lembro em qual cidade nos estados unidos
que lá aquela comoção que teve com
algumas coisas algumas atitudes do trump
que o cientista saíram para a rua
nesse caso ele faz inclusive uma
piadinha com com o del tronto falado
ge.net no sentido de quilt é tão grande
ao irã a partir de então temos aí o dono
que não é o que ela falou olha
precisamos pegar alguns elementos da
a pessoa há de novo ver algumas
variações de cores e colocar no patinho
e pronto
temos aqui o processo convertemos o dono
do que 9 em um patinho e aqui nós temos
alguns exemplos aqui mostra um usuário
de de tec amplamente japonês eu acho
enfim japonês está a aqui mostrando por
exemplo como ficou a final da copa né
classe a e frança eu acho que isso que
deu azar
aqui tem um vídeo isso daqui é muito
legal se vocês quiserem acessar o
alexander graham ele fez isso daqui a
ouvir wo assim a animação ele fingir uma
seqüência de pdf's exportou gif
então você vê os patinhos nadando e o
barco passando no fundo
assim é as pessoas estão abusando do do
aquele ali é meu avatar viu gente
existe uma coluna no tablóide ele é um é
uma revista do grupo de usuários tech
que todo o assinante recebe não ela não
é muito freqüência têm poucas tiragens
se em torno de 34 exemplares por ano mas
existe uma coluna chamada daqui bolt que
é uma coluna em que assinasse um pacto
chamado professora wanda que ele é ele é
feito com um pacote xix e também o xix
a gente fez para a para o evento amanhã
em uma versão da aquarela de toquinho
se você depois quiserem acessar pena que
a gente não tem acho que não está com a
com a internet ligado aqui mas se não a
gente podia ver foi feito você se lembra
da música aquarela de toquinho foi feito
uma versão com os os patinhos aí
obviamente também fizemos algumas outras
versões têm coisas bacanas se vocês
quiserem da daruma uma olhadinha e aí
alguém fez uma com a mesma coisa para
marmotas
então se você não gosta de patos você
pode tentar as marmotas que também são
muito interessantes e aqui no caso no
final ela deu a lista de onde quer onde
que em conta o pacote o desenvolvimento
do kit rambi onde que você tenta entrar
em contato com ela algumas questões
algumas coisas assim então essa foi a
apresentação dela então a idéia é a
seguinte o giro até que ele passou é
passou daquela idéia de que ela somente
usado no meio acadêmico por aquela
pessoa que que fica no dande um lago
fica no nu dentro da sala trancada não é
que funciona somente a café que pega
pega sua xícara no logo de manhãzinha
não fala com ninguém hoje usa se lá
técnico é muita coisa muita coisa e ram
um parêntesis eu acho que é muito
importante falar isso há o próprio o
próprio word se beneficia muito dodô
lattek porque o action é editor do la
técnico graças a deus muito tempo eu não
preciso usar aquilo lá mas assim ele tem
se tornado cada melhor cada vez melhor
ou muito melhor tem um asterisco na
frente querendo dizer o seguinte eles
estão melhorando suporte matemático no
word por dois motivos o primeiro eles
sabem onde procurará as informações
porque afinal de contas hoje tekilla até
barra até aqui é de fato o sistema por
excelência para a tipografia
principalmente por grafia matemática e
aí essa é a parte interessante o lampard
é empregado da microsoft o apoio de um
funcionário da microsoft é um
funcionário de alto escalão eu tentei
trazer ele pra jogar porque o evento
amanhã mas ele me disse que ele não pode
sair
a microsoft não deixa o homem sair lá
nos estados unidos mas enfim
então assim a vale a pena explorar ao eu
acho que eu acho que vale muito a pena
tem tem bastante coisa e não precisa
começar de cima para baixo da desde já
se pode começar de baixo para cima
tem aquele site o tex
téc example que têm muitas coisas em
tics e coisas que você pode aproveitar o
seu próprio trabalho com as suas os seus
divertimentos você pode por exemplo
fazer coisas em látex importar porque o
pico escape importar porque o
illustrator
você pode por exemplo gerar código no
corel no photoshop alguma coisa salvar
como pdf trazer para dentro do até que
você pode usar conversores para assim a
sky é isolante é mais ou menos essa a
noção então que eu queria o quê eu me
propus aqui pô me disse que era mais ou
menos até esta hora era ter essa
conversa com vocês não acho que acho que
chega eu falar um pouquinho então um
obra pra vocês eu pergunto se vocês
quiserem me perguntar alguma coisa não
precisa ser necessariamente sobre isso
sobre o que vocês quiserem dentro do
assunto então e eu toda disponível vocês
podem me procurar pela internet por e
mail eu costumo responder bem rápido eo
que eu puder ajudar vocês não somente
nos seus trabalhos acadêmicos mas também
qualquer outra coisa relacionada com o
técnico até que vocês fiquem totalmente
à vontade pra cantar em contato comigo
eu europeias caso alguém queira saber eu
não usei a bnt abinee tec pra minha tese
caso alguém esteja usando assim que
perguntar não usei porque eu usei
memória memória uma classe uma classe
pela tech e eu costumo dizer algumas
coisas eu mudei algumas coisinhas assim
45 linhas no código é obviamente eu
tenho um pouquinho mais de experiência
no que eu posso fazer mais assim temos
temos uma crescente o crescente uso de
de técnico na comunidade brasileira
projeto a biblioteca está bem legal
assim eu tenho algumas ressalvas mas aí
já é aquela coisa de estilo né
quando você quando você adquire uma
certa bagagem se possa olhar você perde
um pouquinho com paixão
então eu tento eu tento me restringir um
pouquinho às vezes é o paulo olha muito
isso daqui tenta isso porque acho que a
gente tem que se ajudar
então assim procurem ajuda se precisarem
de ajuda
procurem os fóruns sabe não tenham medo
de perguntar procura lista de discussão
i lei manual eu acho que o ponto é eu
sei que é chato eu sei que dá trabalho
têm dificuldade em contato com o autor
em geral os autores os autores de
pacotes texas respondo respondem bem com
atualmente assim a pessoa bem é bem
legal porque afinal de contas o que
mantém um pacote vivo são seus usuários
né
um pacote de si só tem visibilidade se
as pessoas usam e brincam e se divertem
em um momento que e nem veja bem se no
momento que o citado programa e tec está
digitando uma coisa etecs e começa a
ficar irritados e começa a ficar
entediado na paradinha e pensa seu seu
código porque foi o que o paulo falou
você tem que pensar no conteúdo né a
exibição e ser outra coisa é bom também
você dá uma olhada está bonitinha está
aqui tá certo mas tentar focar um
pouquinho mais no conteúdo não é isso
gente pergunta se alguém me perguntar
alguma coisa pode perguntar
sou porque é
deixa eu ver a gente tem time estiver
versão 9 eu falo senão tivermos nossa
tem vamos ver qual que é fácil fazer
isso está sem internet rocha
não acho que não treinava baixando é que
eu já te falo que é a maravilha o é o
seguinte a desculpa gente eu sou usuário
linux então eu sempre me sempre me perco
a o paulo falou de de um software de
automação alguma coisa mais ou menos
assim ta a fazer aqui com vocês
anteontem aqui
hum se daqui seria um código um código
convencional em em látex né
simplesmente big em documento eu tenho
um hello from com sexo
o na verdade o que seria esse software é
simplesmente uma forma de você você
automatizar a compilação no sentido de
você você define no seu documento aquilo
que tem que acontecer então por exemplo
eu tenho que rodar
desculpa eu tenho que rodar por exemplo
tem que fazer isso tem que rodar um pdf
ou até que então se eu chamo seu xampu
que num dia que não dá pra enxergar mas
o que ele fez ele rodou o o dito cujo o
'dito-cujo' and talvez não pareça muita
coisa a ideia que assim por exemplo eu
vou tentar sair pra dar pra fazer isso
aqui gente acho que dá para excluírem
text do ecca então a ideia seria o
seguinte eu definir tudo que eu quero
rodar no no meu no meu só se eu só peço
para executar a ideia por exemplo se eu
tiver digamos que não tem aqui no caso
mas por exemplo se eu tivesse não sei se
ele vai dar algum problema porque ele
não tem mas se eu tiver por exemplo
alguma coisa bitec eu poder
desculpa eu poder é obviamente ele vai
dar erro porque não não tem nada que
possa descrever mas a ideia seria alguma
coisa assim é você tem a possibilidade
de definir passos de de automação do seu
documento então por exemplo
como que você faz o seu o seu artigo por
exemplo você tem que rodar uma vez com
ele pro o doente em coletar os leibholz
você tem que rodar ele mais uma vez para
ele acertar algumas coisas você tem que
rodar 11 bitec ou um bebê para você
acertar as referências você tem que
rodar mais uma vez para você acertar
algumas outras referências que que
ficaram faltando eu ainda roda mais uma
vez porque às vezes você coloca o label
ou ele muda alguma coisa de lugar
então assim você às vezes tem que tem
que definir uma seqüência às vezes por
exemplo você está no hotel orquídea é um
ótimo editor mas tem que lá vai lá e
seleciona um executa vai lá e executa de
novo vai outro a idéia é bem simples era
só pra para automatizar é que nessa
versão eu coloquei algumas algumas
frescuras né então por exemplo eu
poderia falar o seguinte eu rodo pdf ou
até que se o meu o meu tech o meu tecmo
do ou se se eu não tenho um arquivo pdf
por exemplo
então o que acontece nesse caso em
particular
obviamente ele vai rodar primeira quando
eu tenho rodado em novembro roda de novo
porque eu não mexi no norte meu arquivo
no arquivo continua o mesmo então ele
ele continua então eu não tenho por que
copila lo se eu se ele já está
atualizado a menos que por exemplo aqui
eu eu mude alguma coisa e aí obviamente
ele vai ele vai detectar que alguma
coisa foi mudada e aí eu tive que quer
alterar na verdade é isso
software bem simples a ideia a ideia é
simples há uma história o seguinte eu
disse para vocês que eu uso até que fora
do ambiente acadêmico também eu tinha um
projeto um projeto bem inusitado é é um
projeto para é um projeto de um de um
livro de cantos para a igreja católica
e esse projeto esse livro continha pelo
menos 1.200 cantos e era necessário ter
o índice alfabético e era necessário ter
uma série de de sub índices no seguinte
sentido no caso na na na igreja católica
você tem os tempos litúrgicos então você
tem por exemplo natal advento natal
natal advento tempo comum enfim você tem
é você como se eu tivesse uma matriz e
aí você tem por exemplo em que hora que
os cantos podem ser cantados dentro da
de uma missa por exemplo então você tem
entrada a tua glória do blá blá blá blá
uma série de coisas têm-nos 20 aqui
então era uma matriz que eu tinha que
praticamente preencher esse canto pode
ser usado nesse nessa situação nesse
tempo e nesse tempo então se você fazer
o produto cartesiano disso eu cheguei
mais do que 30 trinta e poucos índices
disse que eu tinha que a não é não é
exatamente a liturgia do dia mas eu
queria na verdade o objetivo era geral
um grupo de um livro contendo toda essa
informação com as referências cruzadas
só um parênteses o projeto da liturgia
diária eu fiz no ano retrasado aí eu fiz
isso aí eu eu fiz um crowther dos sites
por exemplo da cnbb o canção nova que
pegava a liturgia do dia estreia as
leituras e geravam um arquivo pdf pra cá
a minha paróquia isso eu fiz eu uso o
técnico é isso né
é é é a oi e se não tá mas a questão de
colocar é que em geral é coisas é coisa
em house é coisa que você tem pra você
usar em casa
aí o que aconteceu eu comecei a ter esse
problema e na época eu precisava
alternar entre alguns ao eu tinha eu
tinha meu linux mas eu precisava às
vezes rodar no mac precisa rodar numa
coisa aí como eu comecei a ter problema
de de portabilidade eu rodava kyoto
rodava que eu precisava
como você trabalha com vários índices e
conteúdo que em geral é bastante
atualizado
as referências se perdem muito rápido
então assim se faz importante mas esse
canto aqui não era esse número vai ver
não é porque você tem que executar
várias vezes de forma que você chega no
estado no estágio em que tudo está
linkado certo é que essa de uma coisa
vou escrever um software é a mania do da
mania do do engenheiro engenheiro
engenheiro não pergunta por que ele
pergunta como é né eu sempre pergunto
isso não porque eu preciso fazer senão
como eu faço isso e eu peguei e escrevi
eu comentei com um amigo você olha eu
fiz um negócio social disponibiliza o
pessoal tá bom
ai queria um nome né e imaginei foi bom
eu gostaria de alguma coisa que fosse
significativa para o país alguma coisa
tivesse referência referência direta com
a nossa cultura
a aí eu eu gosto de eu gostei do nome
era por dois motivos o primeiro é porque
é porque é um palíndromo começo de
assunto eu acho eu acho muito legal aí
vem aquela aquela aquela paranóia do
matemático é que sempre tem alguma coisa
que você se encanta sem razão aparente e
o participante gols de paulinho né
falei poxa bacana né e uma outra
característica é extremamente divertido
você vê estrangeiro falar essa palavra
você não tem noção não tem noção eu não
vejo a hora da minha palestra amanhã com
a pouca poder ouvir esses estrangeiros
falando se absorve crepúsculo pista é
bem isso então esse é o motivo do do
nome eu comecei a conversão foi bacana
tinha nada
basicamente como como eles dizem que a
coisa não funciona chama diversão e
disponibiliza né então foi o que eu fiz
a versão 2 já teve umas coisas mais
legais na versão 3par ou até algum tempo
até 23 anos atrás
bacana feliz começou a ser
disponibilizada no link tech nutec live
fiquei feliz da vida bacana né ou várias
pessoas começaram a usar há até pessoas
têm importantes do tec
de repente começou a vinhos assisti-los
começou a vêm dos bairros motors e assim
tinha coisa que eu falar puxa agora como
é que eu resolvo isso só que imagina só
eu estava no meio do meu estava no meio
do meu doutorado eu estava no meio de
escrever tese de publicar artigo 16
sabem que a via se fala assim a deixa
que eu tiro de eu tiro de letra não
começou a apertar e aí fazia quando dava
total terminei o software maravilha
acabou acabou nada tinha escreveu o
manual
essa é a pior parte porque tem muitas
coisas que eu disse vocês tem muitas
coisas que está intuitivo para você você
escreve um terço um artigo seu
orientador fala mas sim mas se não falou
que isso a pessoa mas eu sei o que é
isso
você sabe mas o leitor nos leitor não
sabe então então assim é um processo
muito muito interessante eu diria mas no
final das contas eu acho que ficou foi
divertido
foi divertido eu diria que isso daí não
que mudou a minha vida mas assim eu acho
que eu acho que deu algumas algumas
algumas conheci muitas pessoas nem me
abriu bastante assim uma oportunidade
porque na verdade eu faço isso porque eu
gosto mas assim se acaba conhecendo
bastante gente eu acho que isso é o
legal dessas comunidades você tem que
chegar você tem que pelo seu problema
mas você tem que ficar pelo que eu acho
que isso é foi o que aconteceu quando eu
comecei nos
o itec xande eu cheguei porque eu
precisava eu tinha problema precisava de
uma resposta me deram a resposta mas o
pessoal foi bacana o pessoal foi legal o
pessoal foi atencioso e você acaba
ficando por por algum motivo tem por
exemplo o leite é nikkei que é um outro
software de automação só que ele está no
outro lado do espectro
o problema é o seguinte eu pensei em
escrever um software que automatizasse
automaticamente ele pegava o seu código
eles pressionavam a tudo e falava eu
preciso rodar isso isso isso e isso
nessa sequência tantas vezes resolve o
problema
maravilha só que o fato de eu trabalhar
com linguagens formais me mostrou que
tech 16 tem um pessoal que é de teoria
tec é no mínimo dependente de contexto
uma linguagem que dependendo do contexto
você não consegue prever coisas a priori
tem coisas que só serão resolvidas em
tempo de o tempo de análise da cadeia ou
seja tem coisa sem tec que eu não vou
conseguir que eu não vou conseguir saber
a menos que o roger - que o execute né
então então foi assim poxa eu vou eu vou
eu vou é um sonho de ícaro né você
querer você querer adivinhar isso de
fato a teoria a teoria da computação me
disse que eu não consigo fazer isso
então falei não vou tentar falar e se eu
fizer o contrário eu sei o que eu tenho
que fazer então específico então eu
costumo dizer que a área está no outro
lado do espectro o leite quer que é uma
ferramenta de um americano chamado john
collins ferramenta excelente ela tenta
adivinhar pra você
mas de novo mas que ela não vai fazer
ela tem uma aproximação muito boa porque
afinal de contas agora pragmaticamente
difícil você tem um documento que não
ser que seja tão tão complicado
acontece você pode ter um documento que
nunca vai convergir por mais maluco que
seja que acontece imagina que você tem
um documento assim você tem duas páginas
você tem uma referência aqui você roda
primeira vez ele pega referência aí você
roda segunda ele atualiza referência que
você atualize joga pra cá
quer dizer já não é a mesma já não é a
mesma referência
você tem que rodar de novo
a roda de novo ele acha que está
inconsistente joga pra cá de novo aí vai
rodar de novo ele joga pra cá são poucas
as situações que isso vai acontecer
tá mas existe a possibilidade do seu
documento nunca convergir como o que
você faz
edita na mão tira por uma palavrinha
mais por uma linha enfim não tem jeito
não tem o que fazer porque você criou
uma situação que que o sistema não
consegue resolver por esse motivo então
eu eu falo que é isso eu é um conceito
simples é um conceito bobo mas que
parece que as pessoas compraram a idéia
a ideia porque em vez de você ter que
executar um monte de coisas você executa
um comando só
basicamente é isso então é isso eu sou
eu sou o autor então acho que é isso
[Aplausos]