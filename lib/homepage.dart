import 'package:flutter/material.dart';
import 'acroyoga.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 9, 1, 105),
                        ),
                      ),
                      Text(
                        'Anna Martin',
                        style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 9, 1, 105),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: ClipOval(
                      child: Image.asset(
                        'assets/images/download.jpeg',
                        fit: BoxFit.cover,
                        width: 70, // Adjust the size as needed
                        height: 70,
                      ),
                    ),
                    iconSize: 40,
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                  ),
                ],
              ),
              SizedBox(height: 20), // Add some spacing between the text and the search bar
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 20), // Add some spacing between the search bar and the tabs
              TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border radius
                  border: Border.all(color: Colors.grey),
                ),
                tabs: [
                  Tab(text: "All"),
                  Tab(text: "Mindfulness"),
                  Tab(text: "Yoga"),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
              ),
              SizedBox(height: 30), // Add some spacing between the tabs and the text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'For You',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 9, 1, 105),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add some spacing between the text and the cards
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildCard('assets/images/2.jpeg', 'Yoga', 'wellness', context),
                        buildCard('assets/images/1.jpg', 'AcroYoga', 'Daily routine', context),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildCard('assets/images/3.jpeg', 'Meditation', 'healthy', context),
                        buildCard('assets/images/4.jpeg', 'Diet', 'Good diet', context),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String imagePath, String title, String subtitle, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == 'AcroYoga') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AcroYogaScreen()),
          );
        }
        // Add more conditions for other cards if needed
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 200,
                height: 180,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
