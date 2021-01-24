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
