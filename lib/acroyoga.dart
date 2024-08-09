import 'package:flutter/material.dart';

class AcroYogaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/1.jpg'), // Replace with your background image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 50, // Adjust this value to set the top padding
                  left: 20, // Adjust this value to set the left padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Acroyoga',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 1), // Adjust this value to set the spacing between the texts
                      Text(
                        '3-10 MIN Course',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 241, 143, 73),
                        ),
                      ),
                      SizedBox(height: 20), // Adjust this value to set the spacing between the texts
                      Text(
                        'Lorem ipsum dolor sit amet,',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'consectetur adipiscing elit.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Nam enim ipsum.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20), // Adjust this value to set the spacing between the text and the search bar
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45, // Adjust the width as needed
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white, // Set background color to white
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide.none, // Remove the border
                            ),
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SessionCard(session: 'Session 01')),
                      SizedBox(width: 10),
                      Expanded(child: SessionCard(session: 'Session 02')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SessionCard(session: 'Session 03')),
                      SizedBox(width: 10),
                      Expanded(child: SessionCard(session: 'Session 04')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SessionCard(session: 'Session 05')),
                      SizedBox(width: 10),
                      Expanded(child: SessionCard(session: 'Session 06')),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daily goals',
                        style: TextStyle(
                          fontSize: 18,
                           color: Color.fromARGB(255, 9, 1, 105),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'This Week', // Replace with your desired text
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Monday',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 9, 1, 105),
                                ),
                              ),
                              Text(
                                '35%',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          LinearProgressIndicator(
                            value: 0.35, // Progress value
                            backgroundColor: Colors.grey[300],
                            color: Color.fromARGB(255, 200, 60, 181),
                            borderRadius:  BorderRadius.circular(10.0),
                            minHeight: 10,
                          ),
                        ],
                      ),
                    ),
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

class SessionCard extends StatelessWidget {
  final String session;

  const SessionCard({required this.session});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 90, // Increased height of the card
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.play_circle_fill, color: Colors.orange),
            SizedBox(width: 10),
            Text(
              session,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
