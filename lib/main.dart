import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertask/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color(0xFF0E3C6E)),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_rounded),
              label: "Saved",
              backgroundColor: Color(0xFF0E3C6E)),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_paste_search),
              label: "Search",
              backgroundColor: Color(0xFF0E3C6E)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Account",
              backgroundColor: Color(0xFF0E3C6E)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Color(0xFF0E3C6E),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30, top: 50, right: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Find your own way",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Search in 600 hundred colleges around!",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 61,
                          width: 270,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.clear),
                                  ),
                                  hintText: "Search college...."),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 61,
                          width: 61,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: const Center(
                              child: Icon(
                                Icons.mic_rounded,
                                color: Color(0xFF0E3C6E),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            tiles(
                context,
                "Top Colleges",
                "assets/images/Rectangle 141.png",
                "Search through thousands of accredited colleges and universities online to find the right one for you. "
                    " Apply in 3 min, and connect with your future."),
            tiles(
                context,
                "Top Schools",
                "assets/images/Rectangle 142.png",
                "Searching for the best school for you just got easier! With our Advanced School Search,"
                    " you can easily filter out the schools that are fit for you."),
            tiles(context, "Exams", "assets/images/Rectangle 143.png",
                "Find an end to end information about the exams that are happening in India"),
          ],
        ),
      ),
    );
  }
}

Padding tiles(
    BuildContext context, String title, String imageLoc, String body) {
  // double screenWidth = MediaQuery.of(context).size.width;
  // double screenHeight = MediaQuery.of(context).size.height;

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: SizedBox(
      height: 130,
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => buildSheet(context),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                    image: AssetImage(imageLoc),
                    height: 122,
                    width: 290,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.lato(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Text(
                            body,
                            style: GoogleFonts.lato(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget buildSheet(BuildContext context) => Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.clear),
                ),
                hintText: "Sort by"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const secondPage(),
                  ));
            },
            leading: const Icon(
              Icons.school_sharp,
              size: 28,
            ),
            title: Text(
              'Bachelor of Technology',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const secondPage(),
                  ));
            },
            leading: const Icon(
              Icons.architecture_outlined,
              size: 28,
            ),
            title: Text(
              'Bachelor of Architecture',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const secondPage(),
                  ));
            },
            leading: const Icon(
              Icons.local_pharmacy_outlined,
              size: 28,
            ),
            title: Text(
              'Pharmacy',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const secondPage(),
                  ));
            },
            leading: const Icon(
              Icons.balance,
              size: 28,
            ),
            title: Text(
              'Law',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const secondPage(),
                  ));
            },
            leading: const Icon(
              Icons.manage_accounts_outlined,
              size: 28,
            ),
            title: Text(
              'Management',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
