import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvshows/provider/tvshowprovider.dart';

class Tvshow extends StatelessWidget {
  const Tvshow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Tvprovider>(
          builder: (BuildContext context, value, Widget? child) {
        return GridView.builder(
          itemCount: value.tvdata.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://image.tmdb.org/t/p' +
                          value.tvdata![index].posterPath!))),
            );
          },
        );
      }),
    );
  }
}
