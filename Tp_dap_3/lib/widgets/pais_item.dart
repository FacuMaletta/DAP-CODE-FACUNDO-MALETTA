import 'package:clase18_4/entities/pais.dart';
import 'package:flutter/material.dart';


class PaisItem extends StatelessWidget {
  const PaisItem({
    super.key,
    required this.pais,
    this.onTap,
  });

  final Pais pais;
  final Function? onTap;


 @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: pais.poster != null
            ? _getPoster(pais.poster!)
            : const Icon(Icons.emoji_people),
        title: Text("${pais.nombre} ${pais.continente}"),
        subtitle: Text('Idioma: ${pais.idioma}'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => onTap?.call(),
      ),
    );
  }

  Widget _getPoster(String posterUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(posterUrl),
    );
  }
}