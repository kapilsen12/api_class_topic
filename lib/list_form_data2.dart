import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class list2 extends StatefulWidget {
  const list2({super.key});

  @override
  State<list2> createState() => _list2State();
}

class _list2State extends State<list2> {
  var data;

  Future<void> getUserApi() async {
    final responce =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (responce.statusCode == 200) {
      data = jsonDecode(responce.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('API List Data'),
        ),
        body: FutureBuilder(
            future: getUserApi(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text('Loading');
              } else {
                return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Listdata(
                              title: 'name',
                              value: data[index]['name'].toString(),
                            ),
                            Listdata(
                              title: 'website',
                              value: data[index]['website'].toString(),
                            ),
                            Listdata(
                              title: 'email',
                              value: data[index]['email'].toString(),
                            ),
                            Listdata(
                              title: 'catchPhrase',
                              value: data[index]['company']['catchPhrase']
                                  .toString(),
                            ),
                          ],
                        ),
                      );
                    });
              }
            }));
  }
}

class Listdata extends StatelessWidget {
  String title;
  String value;
  Listdata({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(value)],
      ),
    );
  }
}
