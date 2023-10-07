import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class listdata extends StatefulWidget {
  const listdata({super.key});

  @override
  State<listdata> createState() => _listdataState();
}

class _listdataState extends State<listdata> {
  var data;
  Future<void> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API List Data'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
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
                                  ReusbaleRow(
                                    title: 'name',
                                    value: data[index]['name'].toString(),
                                  ),
                                  ReusbaleRow(
                                    title: 'username',
                                    value: data[index]['username'].toString(),
                                  ),
                                  ReusbaleRow(
                                    title: 'phone',
                                    value: data[index]['phone'].toString(),
                                  ),
                                ],
                              ),
                            );
                          });
                    }
                  }))
        ],
      ),
    );
  }
}

class ReusbaleRow extends StatelessWidget {
  String title, value;
  ReusbaleRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
