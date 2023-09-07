import 'package:crypto_exchange/crypto/model/crypto_coin_info.dart';
import 'package:crypto_exchange/crypto/service/market_api_service.dart';
import 'package:crypto_exchange/crypto/ui/crypto_market_detail_screen.dart';
import 'package:flutter/material.dart';

class CryptoCoinListScreen extends StatefulWidget {
  const CryptoCoinListScreen({super.key});

  @override
  State<CryptoCoinListScreen> createState() => _CryptoCoinListScreenState();
}

class _CryptoCoinListScreenState extends State<CryptoCoinListScreen> {
  late MarketApiService marketApiService;
  List<CryptoCoinInfo> cryptoList = [];

  getData() async {
    cryptoList = await MarketApiService.getMaretApiService();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crypto',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black12,
      ),
      body: ListView.builder(
        itemCount: cryptoList.length,
        itemBuilder: (context, index) {
          CryptoCoinInfo cryptoCoinInfo = cryptoList[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CryptoMaretDetailScreen(cryptoCoinInfo: cryptoCoinInfo);
              }));
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.network(
                      cryptoCoinInfo.image.toString(),
                      height: 24,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cryptoCoinInfo.name.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '\$ ${cryptoCoinInfo.currentPrice.toString()}',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white30,
                          ),
                          child: Text(
                            cryptoCoinInfo.marketCapRank.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          cryptoCoinInfo.symbol.toString(),
                          style: const TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    trailing: Text(
                      cryptoCoinInfo.atl.toString(),
                      style: const TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      backgroundColor: Colors.white10,
    );
  }
}
