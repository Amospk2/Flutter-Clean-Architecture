import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resultadoeleicao/features/home/presentation/controllers/home_controller.dart';

class ListViewCandidatos extends StatelessWidget {
  ListViewCandidatos({super.key});

  final HomeController _controller = GetIt.I.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<dynamic>?>(
        valueListenable: _controller.candidatos!,
        builder: ((context, valores, child) {
          return valores != null
              ? ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: valores.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 43,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              valores[index].name,
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  valores[index].votes,
                                  style: const TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "${valores[index].percentage}%",
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })
              : const CircularProgressIndicator();
        }));
  }
}
