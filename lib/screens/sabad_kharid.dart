import 'package:flutter/material.dart';

class SabadKharid extends StatelessWidget {
  const SabadKharid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('لیست سبد خرید من'),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                ),
                getSabadKharid(
                    'نان بربری', 'images/b.jpg', 'نان ساده', 'images/s.jpg')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getSabadKharid(
    String title1,
    String imageName1,
    String title2,
    String imageName2,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Card(
              elevation: 7,
              child: Row(
                children: [
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
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(
                      image: AssetImage(imageName1),
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
              child: Center(
                child: Row(
                  children: [
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
                    Container(
                      width: 150,
                      height: 150,
                      child: Image(
                        image: AssetImage(imageName2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
