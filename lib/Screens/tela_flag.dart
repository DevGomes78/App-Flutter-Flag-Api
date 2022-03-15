import 'package:flutter/material.dart';
import 'package:flutter_flag/api/api_flag.dart';
import 'package:flutter_flag/model/model.dart';
import 'package:flutter_svg/svg.dart';

import 'details.dart';

class TelaFlag extends StatelessWidget {
  const TelaFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bandeiras',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Bandeiras>>(
          future: GetBandeiras(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details(
                                      bandeiras: snapshot.data![index])));
                        },
                        child: Card(
                          color: Color(0xffC9DCF6FF),
                          elevation: 5,
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 100,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: SvgPicture.network(
                                    snapshot.data![index].flag.toString()),
                              ),
                              SizedBox(width: 20),
                              Text(
                                snapshot.data![index].name.toString(),
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              );
            }
          }),
    );
  }
}
