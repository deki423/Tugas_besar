import 'package:flutter/material.dart';
import 'package:projek_besar/transaksi.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class Transaksi2 extends StatefulWidget {
  const Transaksi2({Key? key}) : super(key: key);

  @override
  State<Transaksi2> createState() => _Transaksi2State();
}

class _Transaksi2State extends State<Transaksi2> {
  Future<List<dynamic>> getData() async {
    final response =
    await http.get(Uri.parse("http://10.0.2.2/my_store/getdata.php"));
    return json.decode(response.body);


  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,

          title: Text('Transaksi'),centerTitle: true,
          leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => Transaksi()
                  )
              )
          )
      ),


      body: Container(
    child: Column(
    children: [

      const SizedBox(
      height: 50,
    ),
        GestureDetector(
          onTap: () {
            Transaksi();
          },
          child: Container(
            height: 53,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4,
                      color: Colors.black12.withOpacity(.2),
                      offset: const Offset(2, 2))
                ],
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(colors: [
                  Colors.blueAccent,
                  Colors.blue.shade900
                ]
                )
            ),

            child: Text('Bayar',
                style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ),
                ]
      )
    )
                );
              }
            }

class ItemList extends StatelessWidget {
  //const ItemList ({super.key});
  final List<dynamic> list;
  const ItemList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    if (list != null) {
      return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/detail',
                  arguments: list[index]),
              child: Card(
                  child: ListTile(
                    title: Text(
                      list[index]['item_name'],
                    ),
                    subtitle: Text("harga\t:" + list[index]['price']),
                    trailing: Text("stok\t:" + list[index]['stock']),
                  )));
        },
      );
    } else {
      return Text(" No Data");
    }
  }
}

    
    