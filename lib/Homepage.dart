import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> StudentData = [
    {
      'Name': 'Rohit',
      'RollNo': 1,
      'Image': 'https://cdn-icons-png.flaticon.com/512/5403/5403829.png'
    },
    {
      'Name': 'Inam',
      'RollNo': 2,
      'Image':
          'https://cdn3.iconfinder.com/data/icons/business-and-ecommerce-2/32/businessemployeeavatarmenboy-512.png'
    },
    {
      'Name': 'Ajay',
      'RollNo': 3,
      'Image':
          'https://cdn1.iconfinder.com/data/icons/school-223/512/Boy_Student-512.png'
    },
    {
      'Name': 'Asif',
      'RollNo': 4,
      'Image': 'https://cdn-icons-png.flaticon.com/512/3311/3311482.png'
    },
    {
      'Name': 'Harshit',
      'RollNo': 5,
      'Image': 'https://cdn-icons-png.flaticon.com/512/3710/3710674.png'
    },
    {
      'Name': 'Pawan',
      'RollNo': 6,
      'Image':
          'https://cdn1.iconfinder.com/data/icons/avatar-men/512/Avatar-Men_businessman-avatar-man-male-512.png'
    },
    {
      'Name': 'Hanan',
      'RollNo': 7,
      'Image':
          'https://cdn4.iconfinder.com/data/icons/travel-and-tourism-detailed/64/travel_tourism_traveller_backpacker_avatar_-1024.png'
    },
    {
      'Name': 'Shubham',
      'RollNo': 8,
      'Image':
          'https://cdn0.iconfinder.com/data/icons/education-239/64/student-people-profile-avatar-school-boy-512.png'
    },
    {
      'Name': 'Divanshu',
      'RollNo': 9,
      'Image':
          'https://cdn4.iconfinder.com/data/icons/travel-142/64/tourist-traveler-people-man-holidays-hiker-rambler-512.png'
    },
    {
      'Name': 'Tanveer',
      'RollNo': 10,
      'Image':
          'https://cdn1.iconfinder.com/data/icons/society-profession-avatar/1024/Society_Profession_Avatar_I-22-512.png'
    },
    {
      'Name': 'Atif',
      'RollNo': 11,
      'Image':
          'https://cdn1.iconfinder.com/data/icons/avatar-157/64/Backwards_boy_avatar_cap_hat_man_personas_icon-512.png'
    },
    {
      'Name': 'Gurpreet',
      'RollNo': 12,
      'Image':
          'https://cdn1.iconfinder.com/data/icons/back-to-school-87/64/Student-Avatar-Boy-School-People-512.png'
    },
    {
      'Name': 'Simran',
      'RollNo': 13,
      'Image':
          'https://cdn0.iconfinder.com/data/icons/business-and-finance-92/64/business-businessman-man-worker-avatar-employee-512.png'
    },
    {
      'Name': 'Gagan',
      'RollNo': 14,
      'Image':
          'https://cdn3.iconfinder.com/data/icons/saving-and-investment-filloutline/64/man-discuss-support-user-money-advisory-business_and_finance_-512.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'ATTENDENCE',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'New',
                color: Colors.white70),
          ),
        ),
        backgroundColor: Color.fromRGBO(30, 46, 125, 1),
      ),

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(Icons.home,color: Colors.white70,size: 40,),
          ),
          Icon(Icons.notifications,color: Colors.white70,size: 40,),
          Icon(Icons.search,color: Colors.white70,size: 40,),
          Icon(Icons.account_circle,color: Colors.white70,size: 40,),


        ],
      ),

      backgroundColor: Color.fromRGBO(30, 46, 125, 1),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(12, 23, 79, 1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54, width: 1),
                  boxShadow: List.filled(
                    1,
                    BoxShadow(
                        color: Colors.black87,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 1)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 75,
                        width: 70,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                '${StudentData[index]["Image"]}',
                                scale: 5),
                          ),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${StudentData[index]['Name']}",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                              fontFamily: 'New'),
                        ),
                        Text(
                          "Roll No : ${StudentData[index]["RollNo"]}",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(25, 149, 140, 1),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'New'),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: Color.fromRGBO(25, 149, 140, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.do_not_disturb_on_outlined,
                          color: Color.fromRGBO(255, 57, 127, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
            // return ListTile(
            //   title: Text('${StudentData[index]["Name"]}'),
            //   subtitle:Text('${StudentData[index]["RollNo"]}'),
            //   leading: Image.network("${StudentData[index]["Image"]}") ,
            // );
          },
          itemCount: StudentData.length),
    );
  }
}
