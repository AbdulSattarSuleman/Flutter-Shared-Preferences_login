import 'package:flutter/material.dart';

class TokenCardScreen extends StatelessWidget {
  TokenCardScreen({Key? key}) : super(key: key);
  List tokenList = [
    '0xfdfg..123',
    '0xfdfg..12',
    '0xfdfg..23',
  ];

  List tokenImage = [
    'https://png.pngtree.com/png-clipart/20211212/original/pngtree-3d-rendering-cryptocurrency-ethereum-silver-coin-cartoon-style-png-image_6962425.png',
    'https://png.pngtree.com/png-clipart/20220131/original/pngtree-d-front-view-rendering-cryptocurrency-cardano-silver-coin-with-cartoon-style-png-image_7260520.png',
    'https://png.pngtree.com/png-clipart/20211212/original/pngtree-d-rendering-cryptocurrency-avalanche-or-avax-red-coin-with-cartoon-style-png-image_6962585.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            physics: const BouncingScrollPhysics(),
            // shrinkWrap: true,
            itemCount: tokenList.length,
            itemBuilder: ((context, index) {
              return Card(
                  elevation: 5.0,
                  margin: const EdgeInsets.fromLTRB(20, 3, 20, 0),
                  child: ListTile(
                    leading: Image(image: NetworkImage(tokenImage[index])),
                    title: Text(tokenList[index]),
                    subtitle: const Text("Received"),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text("12.567 ETH"),
                        Text("3509"),
                      ],
                    ),
                  ));
            })));
  }
}
