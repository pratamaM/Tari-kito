import 'package:flutter/material.dart';
import 'package:tari/screens/screen_files.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/gg.png'),
              opacity: 0.3,
            )),
        child: Stack(
          children: <Widget>[
            PageView(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: controller,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32,vertical: 10 ),
                      child: Text(

                        '\n\n\n\n'
                            'TARI PERSEMBAHAN BENGKULU',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10),
                      child: Text(
                        'Tari Persembahan Bengkulu biasanya di kenal juga dengan sebutan Tarian Sekapur Siri.\n',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10),
                      child: Text(
                        'Pada masyarakat Bengkulu, gerak tari Persembahan berasal dari gerak-gerak tari yang mewakili 4 wilayah di Provinsi Bengkulu, yaitu'
                        'Kotamadya, Bengkulu Utara, Bengkulu Selatan, dan Rejang Lebong.\n',

                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.black, fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10),
                      child: Text(
                        'Wilayah itu adalah wilayah sebelum terjadi pemekaran, yaitu Kaur, Seluma, Kotamadya,'
                        'Bengkulu Tengah, Bengkulu Selatan, Bengkulu Utara, Muko-muko, Rejang Lebong, Kepahyang dan Lebong.',

                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32),
                      child: Text(
                        '\n\n\n\n\n\nTujuan',
                        style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.black, fontSize: 24.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32,vertical: 10),
                      child: Text(
                        'Di masyarakat Bengkulu, Tari Persembahan digunakan untuk menyambut tamu, sebagai tanda kehormatan kepada tamu.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        '\nJumlah Penari',
                        style: TextStyle(fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32,vertical: 10),
                      child: Text(
                        'Tari Persembahan ditarikan oleh penari perempuan yang berjumlah ganjil, '
                        'tanpa dibatasi jumlah penarinya. Biasanya,'
                        'masyarakat menggunakan 5-7 penari saja.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(

                          horizontal: 32),
                      child: Text(
                        '\n\n\n\n\nInstrumen Musik',
                        style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.black, fontSize: 24.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32,vertical: 10),
                      child: Text(
                        'Instrumen musik yang digunakan untuk mengiringi tari Persembahan ini adalah '
                        'serunai dan dua gendang panjang, serta kelintang. Lagu yang dimainkan oleh serunai '
                        'adalah lagu belarak.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32),
                      child: Text(
                        'Properti',
                        style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.black, fontSize: 24.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32,vertical: 10),
                      child: Text(
                        'Properti yang wajib ada pada saat tari Persembahan adalah Cerano yaitu wadah untuk tempat kapur dan sirih',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/hh.png',
                        height: 150,

                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 16.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 0 ? Color(0xffFDC054) : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 1 ? Color(0xffFDC054)  : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 2 ? Color(0xffFDC054)  : Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Opacity(
                          opacity: pageIndex != 3 ? 1.0 : 0.0,
                          child: FlatButton(
                            splashColor: Colors.transparent,
                            child: Text(
                              'KEMBALI',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                          ),
                        ),
                        pageIndex != 2
                            ? FlatButton(
                                splashColor: Colors.transparent,
                                child: Text(
                                  'LANJUT',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: () {
                                  if (!(controller.page == 2.0))
                                    controller.nextPage(
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.linear);
                                },
                              )
                            : FlatButton(
                                splashColor: Colors.transparent,
                                child: Text(
                                  'LIHAT GERAKAN',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => Categories()));
                                },
                              )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
