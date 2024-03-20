// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Commerce'),
      ),
      body: Center(child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Expanded(
                child: IntrinsicHeight(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: viewportConstraints.maxWidth,
                        child: const Image(
                            image: NetworkImage('https://i.pinimg.com/736x/10/b4/7e/10b47eb39ff83108c27d10ad735e6538.jpg')),
                      ),
                    ),
                    const ListProducts(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: viewportConstraints.maxWidth,
                        child: const Image(
                            image: NetworkImage('https://i.pinimg.com/736x/7f/3c/91/7f3c91694adcce5d6f75892724a2d2a8.jpg')),
                      ),
                    ),
                  ]),
                ),
              ),
            );
          })),
    );
  }
}

class ListProducts extends StatelessWidget {
  const ListProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          ProductImage(),
          ProductImage(
            rndSeed: 2,
            nama: "Sepatu Nike",
            harga: 400.000,
          ),
          ProductImage(
            rndSeed: 3,
          )
        ]),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  final int rndSeed;
  final String nama;
  final double harga;
  const ProductImage(
      {super.key,
        this.rndSeed = 1,
        this.nama = "Sepatu Adidas",
        this.harga = 600.000});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image(
              image:
              NetworkImage('https://picsum.photos/200/?random=$rndSeed')),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(nama), Text("Rp. $harga")])
        ],
      ),
    );
  }
}