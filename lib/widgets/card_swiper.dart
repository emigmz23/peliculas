import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {
   
  const CardSwiper({super.key});
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: ( _ , index){

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/foto.jpg'),
                image: NetworkImage('https://placehold.jp/300x400.png'),
                fit: BoxFit.cover,
                ),
            ),
          );
        }
        ),
    );
  }
}