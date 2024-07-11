
import 'package:clase18_4/core/data/paises_datasource.dart';
import 'package:clase18_4/entities/pais.dart';
import 'package:clase18_4/presentation/Screens/Infopaises_screen.dart';
import 'package:clase18_4/widgets/pais_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
static const String name = 'home';
final List<Pais> pais = paislist;

String userName;
 HomeScreen({super.key , this.userName = ""});
  

  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        title: const Text('Pais'),
      ),
      body: const _PaisView(),
    );
    
  }
}

class _PaisView extends StatelessWidget {
  const _PaisView({super.key});

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
       itemCount: paislist.length, 
       itemBuilder: (context, index) {
        final pais = paislist[index];
        return PaisItem(
          pais: pais,
          onTap:  () => _goToPaisDetails(context, pais), 
        );
      },
    );


  }
}

void _goToPaisDetails(BuildContext context, Pais pais) {
    context.pushNamed(
      InfopaisesScreen.name,
      pathParameters: {
        'paisId': pais.id,
      },
    );
}