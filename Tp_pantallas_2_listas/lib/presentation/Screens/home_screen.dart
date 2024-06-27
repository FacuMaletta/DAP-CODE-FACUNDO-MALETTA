// ignore_for_file: unused_import
import 'package:clase18_4/presentation/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  String userName;
  HomeScreen({super.key, this.userName = ""});

  @override
  Widget build(BuildContext context) {
    List<String> titulos = [
      "Cultura Judia",
      "Desarrollo de aplicaciones informaticas ",
      "Educación Fisica",
      "Educación Judia",
      "Estructura y Funcionamiento de los Sistemas",
      "Filosofia",
      "Historia",
      "Inglés",
      "Lengua y Literatura",
      "Matematica",
      "Metodología de Proyectos",
      "Proyectos de Producción",
      "Quimica",
      "Seminario de Informatica y Telecomunicaciones"
    ];
    List<String> descripcion = [
      "Ivon Lorena Steiner",
      "Alejandro Breitman",
      "Mariano Gonzalez Slaibe",
      "Demian Jmelnizky",
      "Marcos Alegre",
      "Daniela Alejandra Bustamante",
      "Mirko Veckiardo",
      "Profesor correspondiente a cada nivel",
      "Maria del Pilar Lopez Vera",
      "Sofía Romano",
      "Alejandro Breitman",
      "Eduardo Brandes",
      "Pablo Stark",
      "Mirko Veckiardo"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Materias 5to año"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(86, 0, 230, 54),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: double.infinity,
          color: const Color.fromARGB(37, 60, 57, 46),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          child: ListView.separated(
            itemCount: titulos.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(
                    titulos[index],
                  ),
                  subtitle: Text(descripcion[index]),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
    );
  }
}
