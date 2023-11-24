import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String cardTitle;
  const CardTile({super.key, required this.cardTitle});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardWidth = size.width * 0.4;
    var cardHeight = size.height * 0.3;
    return Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: const Color.fromARGB(255, 185, 234, 246),
        child: Container(
          width: cardWidth,
          height: cardHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/audotorium.jpg'), // replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              CircleAvatar(
                backgroundColor: Colors.green[500],
                radius: 108,
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/female-graduate.jpg'),
                  radius: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                cardTitle,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w500,
                ), //Textstyle
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 107.9,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseListPage()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  child: const Padding(
                    padding: EdgeInsets.all(4),
                    child:
                        Row(children: [Icon(Icons.touch_app), Text("Visit")]),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}

class CourseListPage extends StatelessWidget {
  final List<String> courses = [
    'Course 1',
    'Course 2',
    'Course 3',
    // Add more courses as needed
  ];

  CourseListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('On-Camp Courses'),
        ),
        body: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(courses[index]),
              );
            }));
  }
}
