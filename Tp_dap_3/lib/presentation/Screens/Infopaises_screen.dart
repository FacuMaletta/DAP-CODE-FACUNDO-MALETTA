
import 'package:clase18_4/core/data/paises_datasource.dart';
import 'package:clase18_4/entities/pais.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfopaisesScreen extends StatelessWidget {
static const String name = 'infopais';

 final String paisId;

  const InfopaisesScreen({super.key,  required this.paisId});
  

  @override
  Widget build(BuildContext context) {
    final pais = paislist.firstWhere((pais) => pais.id == paisId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del pais'),
      ),
      body: _PaisDetailView(pais: pais),
    );
  }
}

class _PaisDetailView extends StatelessWidget {
  const _PaisDetailView({
    super.key,
    required this.pais,
  });

  final Pais pais;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (pais.poster != null) Image.network(pais.poster!, height: 400),
          const SizedBox(height: 16),
          Text(
            "${pais.nombre} ${pais.continente}",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            'Idioma: ${pais.idioma}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          
        ],
      ),
    );
  }
}
