import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) { 

      Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
      children: [Expanded(         
/*Colocar uma coluna dentro de um widget expandido estica a coluna para usar todo o espaço livre restante na linha. 
Definir a propriedade crossAxisAlignment como CrossAxisAlignment.start posiciona a coluna no início da linha.*/
          
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
                    color: Colors.red[800],
                ),
            ),
         ],
       ),
    ),    

/* Os dois últimos itens na linha do título são um ícone de estrela, pintado de vermelho, e o texto “41”. 
 A linha inteira está em um contêiner e preenchida ao longo de cada borda em 32 pixels*/
        
		Icon (
       Icons.star,
       color: Colors.red[700],
             ),
       Text("40"),   
    ],
  ),
);  



Color color = Theme.of(context).primaryColor;

Widget buttonSection = Container (
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: 
     [
      _builButtonColumn(color, Icons.call, "Call" ),
      _builButtonColumn(color, Icons.near_me, "Route"),
      _builButtonColumn(color, Icons.share, "Share"),
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

return MaterialApp(
      title: 'Flutter Jujutsu Page',
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
	
  



Column _builButtonColumn(Color color, IconData icon, String label) {
return Column(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(icon,color:color),
    Container(
      margin: const EdgeInsets.only(top: 6),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: color,
          ),
         ),
        ),
      ],
    );
  }
} 





 