# Aprendendo Layout no Flutter


### Introdução

Este projeto foi baseado no tutorial sobre layout disponível na documentação do flutter, porém com algumas modificações para o aprendizado. 
Criei um layout ficticio para uma página de um anime, chamado Jujutsu Kaisen.


Widget build(BuildContext context) { 

A primeira linha, chamada de titleSection, tem 3 filhos: uma coluna de texto, um ícone de estrela e um número. 
Seu primeiro child, column, contém 2 linhas de texto.

      Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
      children: [Expanded(         

Colocar uma coluna dentro de um widget expandido estica a coluna para usar todo o espaço livre restante na linha. Definir a propriedade crossAxisAlignment 
Como CrossAxisAlignment.start posiciona a coluna no início da linha.         
		  
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                          "Jujutsu Kaisen",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                      ),
                  ),
               ),
            Text(
                'Jujutsu Kaisen, anime 2020',
                style: TextStyle(
                    color: Colors.red[600],
                ),
            ),
         ],
       ),
    ),    
    
    
 Os dois últimos itens na linha do título são um ícone de estrela, pintado de vermelho, e o texto “41”. 
 A linha inteira está em um contêiner e preenchida ao longo de cada borda em 32 pixels
        
	Icon (
       Icons.favorite,
       color: Colors.red[700],
             ),
       Text("40"),   
         ],
      ),
    );  

       Color color = Theme.of(context).primaryColor;

       Widget buttonSection = Container (
       child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Organiza o espaço da coluna
    children: 
     [
      _builButtonColumn(color, Icons.call, "Personagens" ),
      _builButtonColumn(color, Icons.near_me, "Feiticeiros"),
      _builButtonColumn(color, Icons.share, "Maldições"),
         ],
       ),
    );

     Widget textSection = Container(
     padding: const EdgeInsets.all(32),
    child: Text(  
     'Jujutsu Kaisen é um mangá japonês escrito e ilustrado por Gege Akutami, serializado na Weekly Shōnen Jump desde 5 de março de 2018.' 
     'Os capítulos individuais são compilados em volume tankōbon, e publicados pela Shueisha desde julho de 2018.' 
     'A série é licenciada e publicada no Brasil pela editora Panini.',    
    softWrap: true,
      ),    
    );

Nesta etapa final, organize todos os elementos em um ListView, em vez de em uma coluna, porque um ListView oferece suporte à rolagem  do corpo do aplicativo quando o aplicativo é executado em um dispositivo pequeno

      return MaterialApp(
      title: 'Flutter Jujutsu Page',
      theme: ThemeData (
          primaryColor: Colors.red[800],
      ),
     
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Jujutsu Page'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/imagem/Jujutsu.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
                  ],
              ),
          ),
       );
    }
    
Ao final temos o seguinte resultado: 
