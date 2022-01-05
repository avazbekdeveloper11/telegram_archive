import 'dart:math';
import 'package:flutter/material.dart';
import 'package:telegram/model/data.dart';
import 'package:telegram/screens/home_page/home_page.dart';

class ArchivePage extends StatefulWidget {
  const ArchivePage({Key? key}) : super(key: key);

  @override
  State<ArchivePage> createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios_new_rounded),
        //   onPressed: () {
        //     Navigator.pop(context);
        //     setState(() {});
        //   },
        // ),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.02),
            child: Icon(
              Icons.search,
              size: size.width * 0.07,
            ),
          )
        ],
        title: Text(
          "Telegram",
          style: TextStyle(fontSize: size.width * 0.06),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_, __) {
            return Card(
              child: Dismissible(
                child: Container(
                  color: Colors.transparent,
                  height: size.height * 0.1,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://source.unsplash.com/random/$__"),
                          radius: 33,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.02),
                          child: SizedBox(
                            width: 130,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  archive[__].name,
                                  style: TextStyle(fontSize: size.width * 0.05),
                                ),
                                Text(
                                  archive[__].subtitle,
                                  style: TextStyle(fontSize: size.width * 0.03),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child:
                                  Icon(__.isEven ? Icons.done : Icons.done_all),
                            ),
                            Text(times[Random().nextInt(times.length)]),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                key: UniqueKey(),
                onDismissed: (DismissDirection v) {
                  users.add(archive[__]);
                  archive.removeAt(__);
                },
              ),
            );
          },
          itemCount: archive.length,
        ),
      ),
    );
  }
}
