import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> users = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQkRHzAeZ__r0Va8urMobPU-a7GTvHmmv00ig-FlLJNg&s',
      'name': 'Kaviya',
      'msg': 'oii'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgFuFdw9djAeWDd8qIwOitcIwgbGI_gnqxTYVIS2yoYQ&s',
      'name': 're',
      'msg': 'jsd'
    },
    {
      'image':
          'https://www.befunky.com/images/wp/wp-2021-01-linkedin-profile-picture-after.jpg?auto=avif,webp&format=jpg&width=944',
      'name': 'je',
      'msg': 'jiha'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Messages"),
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 70,
                    child: Row(
                      children: [
                        // profile image
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              image: DecorationImage(
                                  image: NetworkImage(users[index]['image']),
                                  fit: BoxFit.cover)),
                        ),

                        // sizedbox for space between profile image to name...
                        const SizedBox(
                          width: 10,
                        ),

                        // user name & msg

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              users[index]['name'],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              users[index]['msg'],
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}



// ethavathu purinjinaya
