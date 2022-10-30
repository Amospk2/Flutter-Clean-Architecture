import 'package:flutter/material.dart';
import 'package:resultadoeleicao/features/home/presentation/ui/widgets/list_view_candidatos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultados Eleição"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Nome",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Votos",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Percentual%",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),  
              ListViewCandidatos()
            ],
          ),
        ),
      ),
    );
  }
}
