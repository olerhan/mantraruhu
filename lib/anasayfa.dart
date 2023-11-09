import 'package:flutter/material.dart';
import 'package:mantraruhu/mantraWidget.dart';
import 'package:mantraruhu/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği : $ekranYuksekligi");
    print("Ekran Genişliği : $ekranGenisligi");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: renk2,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "resimler/mantraRuhuSaydamLogo.png",
              fit: BoxFit.cover,
              height: ekranYuksekligi/11.79,
            ),
          ],
        ),
        // Menü vb yapıları sonra eklemek için row kullanıldım
      ),
      body: Container(
        color: renk2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeCard(ustBaslik: d!.kahveCekirdekleriBaslik, altBaslik: d.kahveCekirdekleriAltBaslik, resimYolu: "resimler/kahveCekirdekleriAnaSayfaCard.jpg", filtre1renk: Colors.brown, filtre1opaklik: 0.5, filtre2renk: Colors.black, filtre2opaklik: 0.1, ustAralik: ekranYuksekligi/88.42),
            HomeCard(ustBaslik: d.ayurvedikCaylarBaslik, altBaslik: d.ayurvedikCaylarAltBaslik, resimYolu: "resimler/ayurvedikCaylarAnaSayfaCard.jpg", filtre1renk: Colors.greenAccent, filtre1opaklik: 0.18, filtre2renk: Colors.black, filtre2opaklik: 0.1, ustAralik: ekranYuksekligi/101.06),
            HomeCard(ustBaslik: "Menu", altBaslik: d.menuAltBaslik, resimYolu: "resimler/restoranMenuAnaSayfaCard.jpg", filtre1renk: renk2, filtre1opaklik: 0.1, filtre2renk: Colors.black, filtre2opaklik: 0.1, ustAralik: ekranYuksekligi/101.06),

          ],
        ),
      ),
    );
  }
}

