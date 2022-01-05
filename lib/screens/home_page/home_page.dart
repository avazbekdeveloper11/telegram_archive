import 'dart:math';
import 'package:flutter/material.dart';
import 'package:telegram/model/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://source.unsplash.com/random"),
              ),
              accountName: Text("Avazbek"),
              accountEmail: Text("+99899 230 51 03"),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://source.unsplash.com/random"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accaunt"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accaunt"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accaunt"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accaunt"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accaunt"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
            return __ == 0
                ? Container(
                    height: size.height * 0.06,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.archive, size: 30, color: Colors.white),
                        Icon(Icons.mark_chat_read_outlined,
                            size: 30, color: Colors.white),
                        Icon(Icons.person, size: 30, color: Colors.white),
                        Icon(Icons.group, size: 30, color: Colors.white),
                        Icon(Icons.groups, size: 30, color: Colors.white),
                      ],
                    ))
                : __ == 1
                    ? Card(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/archivPage');
                          },
                          child: Container(
                            color: Colors.transparent,
                            height: size.height * 0.1,
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    child: Icon(Icons.archive,
                                        size: 45, color: Colors.white),
                                    radius: 35.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.02),
                                    child: SizedBox(
                                      width: 130,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Archive",
                                            style: TextStyle(
                                                fontSize: size.width * 0.05),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : Card(
                        child: Dismissible(
                          child: Container(
                            color: Colors.transparent,
                            height: size.height * 0.1,
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://source.unsplash.com/random/$__"),
                                    radius: 33,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.02),
                                    child: SizedBox(
                                      width: 130,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            users[__].name,
                                            style: TextStyle(
                                                fontSize: size.width * 0.05),
                                          ),
                                          Text(
                                            users[__].subtitle,
                                            style: TextStyle(
                                                fontSize: size.width * 0.03),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Icon(__.isEven
                                            ? Icons.done
                                            : Icons.done_all),
                                      ),
                                      Text(times[
                                          Random().nextInt(times.length)]),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          key: UniqueKey(),
                          onDismissed: (DismissDirection v) {
                            setState(() {
                              archive.add(users[__]);
                              users.removeAt(__);
                            });
                          },
                        ),
                      );
          },
          itemCount: users.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
