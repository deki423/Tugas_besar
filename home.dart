import 'package:flutter/material.dart';
import 'package:projek_besar/transaksi.dart';
import 'login.dart';
import 'produk.dart';



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              height: 50,
              color: Colors.blue,
              alignment: Alignment.bottomLeft,
              child: Text('Menu',
              style: TextStyle(
                fontSize: 24,
                ) ,
             ),
           ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => Home()
                    )
                );
              },
              leading: Icon(Icons.home,
                size: 35,),
              title: Text('Home',
                style: TextStyle(
                  fontSize: 20,
                ),

              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => Transaksi()
                    )
                );
              },
              leading: Icon(Icons.calculate,
                size: 35,),
              title: Text('Transaksi',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => Produk()
                    )
                );
              },
              leading: Icon(Icons.inventory_2_outlined,
                size: 35,),
              title: Text('Produk',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => Login()
                    )
                );
              },
              leading: Icon(Icons.output_rounded,
                size: 35,),
              title: Text('Logout',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(

          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                      children:[ new MaterialButton(
                        height: 100.0,
                        minWidth: 150.0,
                        color: Theme.of(context).bottomAppBarColor,
                        textColor: Colors.black87,
                        child: const Icon(Icons.calculate,color: Colors.blue,size: 150,),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                              builder: (context) => Transaksi()));
                        },
                        splashColor: Colors.transparent,
                      ),

                        Text('Transaksi', style: TextStyle(fontSize: 16),), ]),

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        new MaterialButton(
                        height: 100.0,
                        minWidth: 150.0,
                        color: Theme.of(context).bottomAppBarColor,
                        textColor: Colors.black87,
                        child: const Icon(Icons.inventory_2_outlined,color: Colors.blue,size: 150,),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => Produk()));
                        },
                        splashColor: Colors.transparent,
                      ),  Text('Produk', style: TextStyle(fontSize: 16),),

                       ]),
                ],

              ),

            ],
          )),


    );


  }
}
