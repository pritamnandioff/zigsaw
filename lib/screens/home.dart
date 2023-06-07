import 'package:flutter/material.dart';
import 'package:zigsaw/screens/notification_screen.dart';
import 'package:zigsaw/utils/custom_button.dart';
import 'package:zigsaw/utils/profile_image.dart';

import '../const.dart';

class Home extends StatelessWidget {
   Home({super.key});
  List feedData = [
    {
      "title": "Play Ludo and Earn Money",
      "image": "assets/banner1.png",
      "player_count": "5,00,000",
    },
    {
      "title": "Play Cricket Fantasy League",
      "image": "assets/banner2.jpg",
      "player_count": "5,00,000",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(   appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset("assets/icon.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationScreen()));
            },
            icon: const Icon(
              Icons.notifications_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultpadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: kDefaultpadding),
                child: Text(
                  "Hi' from depak",
                  style: TextStyle(
                    fontSize: kMtext,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              //1st banner
              Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(kDefaultpadding),
                    child: Image.asset(
                      "assets/banner3.jpg",
                      height: 80,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: kDefaultpadding),
                    child: Text(
                      "UNIBIT Fantacy is live",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              //2nd banner
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: feedData.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kDefaultpadding),
                      color: Colors.grey.shade300,
                    ),
                    margin: const EdgeInsets.only(top: kDefaultpadding),
                    padding: const EdgeInsets.all(kDefaultpadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: kDefaultpadding / 2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              feedData[index]["image"],
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: kDefaultpadding / 2),
                          child: Text(
                            feedData[index]["title"],
                            style: const TextStyle(
                              fontSize: kMtext,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Profile(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  feedData[index]["player_count"] + "+",
                                  style: const TextStyle(
                                    fontSize: kStext,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text("Players"),
                              ],
                            ),
                            const Spacer(),
                            MyElevatedButton(
                              width: 150,
                              onPressed: () {},
                              borderRadius: BorderRadius.circular(20),
                              child: const Text('Play now'),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),);
  }
}