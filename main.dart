import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.blue,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Facilities",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
              onSelected: (value) => {
                if (value == 0)
                  vision(context)
                else if (value == 1)
                  facilities(context)
              },
            ),
          ),
          title: Text("Welcome To IT Department of FAMT,Ratnagiri",
          style: TextStyle(
          fontWeight: FontWeight.bold,),),
          backgroundColor: Colors.blue,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Image.network(
                  'https://media.istockphoto.com/photos/working-area-in-modern-office-with-carpet-floor-and-meeting-room-3d-picture-id1177487069?b=1&k=20&m=1177487069&s=170667a&w=0&h=XEgqUIMvwEc2yf5evaBApCoT7WJEttV5YfFm2UdgKTI=',
                  height: 275,
                  width: 900,
                ),
                SizedBox(height: 30),
                Wrap(
                  spacing: 15,
                  children: [
                    SizedBox(height: 30),
                    RaisedButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Programming Lab',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => ProgrammingLab(context),
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 30),
                    RaisedButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'DBMS Lab',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => DBMS(context),
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 30),
                    RaisedButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Networks Lab',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => NetworksLab(context),
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 30),
                    RaisedButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'IoT Lab',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => IoTLab(context),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                RaisedButton(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => contactUs(context),
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          backgroundColor: Colors.blue[50],
          content: Text(
              'Email ID: hodit@famt.ac.in\n\nAddress: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void ProgrammingLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Programming Lab'),
          backgroundColor: Colors.blue[50],
          content: Column(
            children: [
              Image.network(
                'https://media.istockphoto.com/photos/computer-and-bookshelves-in-modern-library-picture-id1193288605?k=20&m=1193288605&s=612x612&w=0&h=S_MAPa5gtTwSbv_WlgRb-JrBp134zx7IT5BNQF7Aq-4=',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Mandar Joshi",
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void DBMS(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To DBMS Lab'),
          backgroundColor: Colors.blue[50],
          content: Column(
            children: [
              Image.network(
                'https://media.istockphoto.com/photos/home-for-every-information-technology-student-picture-id587941622?k=20&m=587941622&s=612x612&w=0&h=5kRfoDAD73Au2igYyYuUD27Ka8V2Hu6gIedNR19FdT0=',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Incharge: Prof. Swati Powar",
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void NetworksLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Networks Lab'),
          backgroundColor: Colors.blue[50],
          content: Column(
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2018/05/23/13/29/network-3424070__480.jpg',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Incharge: Prof. Atiya Kazi",
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void IoTLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Internet of Things Lab'),
          backgroundColor: Colors.blue[50],
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/163125/board-printed-circuit-board-computer-electronics-163125.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Dr. Vinayak Bharadi",
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void vision(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision of Finolex Academy of Management and Technology'),
          backgroundColor: Colors.blue[50],
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/2292837/pexels-photo-2292837.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                height: 350,
              ),
              Text(
                'To provide excellent Information Technology education...',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void facilities(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:
              Text('FAMT Ratnagiri Facilities', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue,
          content: Column(
            children: [
              Text(
                "Boys Hostel \n The college has separate hostels for boys located in Finolex Housing Colony at Zadgaon, Ratnagiri (about 7 km from campus). Bus transportation, to and from the hostels, is provided to the hostel residents. These hostels accommodate 114 boys. The accommodation in hostels is provided on a first-come-first-served basis. These hostels have: Furnished ventilated and spacious rooms on a twin-sharing basis with a clean and calm environment for studies., \n\n",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Girls Hostel \n The college has separate hostels for girls, located in Finolex Housing Colony at Zadgaon, Ratnagiri (about 7 km from campus). Bus transportation, to and from the hostels, is provided to the hostel residents. These hostels accommodate 90 girls. The accommodation in hostels is provided on a first-come-first-served basis. These hostels have: Furnished ventilated and spacious rooms on a twin-sharing basis with a clean and calm environment for studies.  \n\n",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Library \n  The college library is need-based, qualitative, and has an up-to-date collection of books and journals that are cataloged to meet the information needs of students and faculty members. It is also facilitated with reference services, photocopy service, and a Book Bank facility to the students belonging to SC/ST categories. It offers an online information retrieval facility through a 4mbps leased line connection.\n\n",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Medical/Hospital \n The college immediately responds to the best of its ability within the available medical resources on campus to a Preliminary/ First Aid treatment in case of a medical emergency. The academy has a Medical Room where a doctor will be available on call and has a tie-up with an ambulance service. The academy provides various facilities for the physically challenged such as ramps, wheelchairs, and washrooms.\n\n",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Wifi \n The college Computing facility with the internet, Wi-Fi connectivity ICT and networking facilities are pivotal in augmenting the learning process and learners’ needs for information in the classroom. To cater to this changing demand, all academic blocks are facilitated with broadband internet connectivity through LAN and Wi-Fi.",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}