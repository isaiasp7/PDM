import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget{
  final String placeholder;
  final TextEditingController valor;//nao pode ser double pq todo input retornar um string
  final double? width;
    const Input({//construtor da classe
      super.key,// identificador
      required this.placeholder,
      required this.valor,
      this.width,
  });

   @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: width, 
      child: 
        TextField(
              controller: valor,//quem vai receber o valor
               inputFormatters: [//isso é para aceitar so numero com '.'
                FilteringTextInputFormatter.allow( RegExp(r'^\d*[.,]?\d{0,2}'),),
              ],
              decoration: InputDecoration(//tipo usado em decoration
              hintText: placeholder, //hintext = placeholder do html/css
            ),
        ),
    );
  }
}