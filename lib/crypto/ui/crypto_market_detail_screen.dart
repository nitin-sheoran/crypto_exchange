import 'package:crypto_exchange/crypto/model/crypto_coin_info.dart';
import 'package:flutter/material.dart';

class CryptoMaretDetailScreen extends StatefulWidget {
  CryptoMaretDetailScreen({required this.cryptoCoinInfo, super.key});

  CryptoCoinInfo cryptoCoinInfo;

  @override
  State<CryptoMaretDetailScreen> createState() =>
      _CryptoMaretDetailScreenState();
}

class _CryptoMaretDetailScreenState extends State<CryptoMaretDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.cryptoCoinInfo.name.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Bye',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.black12,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Rank',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.marketCapRank.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.name.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Current Price',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.currentPrice.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Market Cap',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.marketCap.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Symbol',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.symbol.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'LastUpdate',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.lastUpdated.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'High24h',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.high24h.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Low24h',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.low24h.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Ath',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.ath.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'marketCapChange24h',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.high24h.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'MaxSupply',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.atlChangePercentage.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'TotalSupply',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.totalSupply.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'ATL',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.atl.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'CirculatingSupply',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.priceChangePercentage24h.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(color: Colors.white12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Volume',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    widget.cryptoCoinInfo.totalVolume.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white12,
    );
  }
}
