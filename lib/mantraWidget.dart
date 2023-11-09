import 'package:flutter/material.dart';
import 'package:mantraruhu/renkler.dart';

class HomeCard extends StatelessWidget {
  String ustBaslik;
  String altBaslik;
  String resimYolu;
  Color filtre1renk;
  double  filtre1opaklik;
  Color filtre2renk;
  double  filtre2opaklik;
  double ustAralik;

  HomeCard({
        required this.ustBaslik,
        required this.altBaslik,
        required this.resimYolu,
        required this.filtre1renk,
        required this.filtre1opaklik,
        required this.filtre2renk,
        required this.filtre2opaklik,
        required this.ustAralik
      });

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Padding(
      padding: EdgeInsets.only(top: ustAralik, left: ekranGenisligi/411.42, right: ekranGenisligi/411.42),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: InkWell(
          onTap: () {
            // Kart'a tıklandığında yapılacak işlem buraya gelecek
            print('Karta tıklandı!');
          },
          splashColor: Colors.white.withAlpha(25), // Burada sıçrama rengini beyaz yaptım
          child: Ink.image(
            image: AssetImage(resimYolu),
            fit: BoxFit.cover,
            height: ekranYuksekligi/3.72,
            child: Stack(
              children: [
                Positioned.fill( // DecoratedBox'ı Stack içinde tüm alana yaymak için Positioned.fill kullanılır.
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: filtre1renk.withOpacity(filtre1opaklik),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: filtre2renk.withOpacity(filtre2opaklik),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ekranYuksekligi/27.20, left: ekranGenisligi/17.14, right: ekranGenisligi/17.14, bottom: ekranYuksekligi/23.58),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ustBaslik,
                        style: TextStyle(
                          fontFamily: "ProductSans",
                          fontWeight: FontWeight.w500,
                          height: ekranYuksekligi/505.30,
                          color: renk2,
                          fontSize: ekranGenisligi/10.28,
                        ),
                      ),
                      Text(
                        altBaslik,
                        style: TextStyle(
                          fontFamily: "ProductSans",
                          fontWeight: FontWeight.w400,
                          height: ekranYuksekligi/565.93,
                          color: renk2,
                          fontSize: ekranGenisligi/25.71,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
