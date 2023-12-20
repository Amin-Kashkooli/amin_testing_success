import 'package:amin_testing_success/screens/sabad_kharid.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});
  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نانوایی اینترنتی امین کشکولی'),
        backgroundColor: Colors.indigo[600],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 23,
              ),
              getCards(
                'نان لواش',
                'images/l.jpg',
                'نان ساده',
                'images/s.jpg',
              ),
              SizedBox(
                height: 23,
              ),
              getCards(
                'نان سنگک کنجدی',
                'images/sk.jpg',
                'نان سنگک',
                'images/sa.jpg',
              ),
              SizedBox(
                height: 23,
              ),
              getCards(
                'نان تفتون',
                'images/t.jpg',
                'نان بربری',
                'images/b.jpg',
              ),
              SizedBox(
                height: 23,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(
                      200.0,
                      43.0,
                    ),
                    backgroundColor: Colors.green[700]),
                onPressed: () {
                  navigateToBlogPage(
                    context,
                    SabadKharid(),
                  );
                },
                child: Text(
                  'اضافه به سبد خرید',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCards(
    String title1,
    String imageName1,
    String title2,
    String imageName2,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Card(
              elevation: 7,
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(
                      image: AssetImage(imageName1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      title1,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Card(
              elevation: 7,
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(
                      image: AssetImage(imageName2),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      title2,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
