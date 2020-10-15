import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imagesUrls = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602756965188&di=0d0b4791810f749af9611911d502e2c5&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F56%2F12%2F01300000164151121576126282411.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602756965188&di=bc85e319587d2789328a54065b04b905&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602756965188&di=76e0c8452ebce7f98baabb366eb88151&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F64%2F52%2F01300000407527124482522224765.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                height: 160,
                child: Swiper(
                  itemCount: _imagesUrls.length,
                  autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      _imagesUrls[index],
                      fit: BoxFit.fill,
                    );
                  },
                  pagination: SwiperPagination(),
                ))
          ],
        ),
      ),
    );
  }
}
