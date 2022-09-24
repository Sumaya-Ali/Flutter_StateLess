import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
        Scaffold(
          appBar: AppBar(
            title: Text('Hi Sumaya'),
            centerTitle: true,
            backgroundColor: Colors.red[200],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Herzlich Willkommen!',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Colors.grey[600],
                          fontFamily: 'IndieFlower',

                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red[200],
                        size:50.0,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: ElevatedButton(
                          onPressed: (){
                            print('Elevated Button has been clicked');
                          },
                          child: Text(
                            'Click Me Bitte',
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[200],
                          ),
                        ),
                      ),
                      Center(
                          child: TextButton(
                            onPressed: (){
                              print('Text button has been clicked');
                            },
                            child: Text(
                              'Click hier Bitte',
                              style: TextStyle(
                                fontFamily: 'IndieFlower',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.red[200],
                              ),
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.grey[600],
                            ),
                          )
                      ),

                    ],
                  ),
                  Row(
                    children: [
                     Padding(
                         padding: EdgeInsets.all(9.0),
                          child: Text('')),
                      Expanded(
                          flex:3,
                          child: ElevatedButton.icon(
                              onPressed: () {
                                print('Elevated Button Icon has been clicked');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red[200],
                              ),
                              icon: Icon(
                                  Icons.local_florist
                              ),
                              label: Text(
                                'Blumen',
                                style: TextStyle(
                                  fontFamily: 'IndieFlower',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.0,
                                  color: Colors.grey[600],
                                ),
                              ))
                      ),
                      Expanded(
                        flex:1,
                        child: IconButton(
                          icon: Icon(
                            Icons.sentiment_very_satisfied
                          ),
                          onPressed: (){
                            print('Icon Button has been clicked');
                          },
                          color: Colors.grey[600],
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child: Container(
                          child: Text(
                            'Samsoom',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IndieFlower',
                              fontSize: 15.0,
                            ),
                          ),
                          color: Colors.red[200],
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                          child: Text(
                            'Hamooze',
                            style: TextStyle(
                              color: Colors.red[200],
                              fontSize: 15.0,
                              fontFamily: 'IndieFlower',
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  MyImages(),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('Guten Tag Sumaya!');
            },
            child: Text(
                'click',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.grey[600],
                ),
            ),
            backgroundColor: Colors.red[200],
          ),
        )
    );
  }
}
class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return (
    Column(
      children: [
        Center(
          child: Image(
              image: NetworkImage('https://th.bing.com/th/id/R.4489289f648fcbfd61f09e0f3cf02e2e?rik=3kzpywy15eIvUw&pid=ImgRaw&r=0')
          ),
        ),
        Center(
          child: Image(
            image: AssetImage('assets/image2.jpg'),
          ),
        ),
        Center(
          child: Image.asset('assets/image1.jpg'),
        ),
        Center(
          child: Image.network('https://th.bing.com/th/id/R.92b605937e0fae8c73f94431de6d3ac5?rik=reS8lW9G2A%2b0RA&pid=ImgRaw&r=0'),
        ),
      ],
    )
    );
  }
}

