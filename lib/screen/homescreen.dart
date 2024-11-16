import 'package:flutter/material.dart';
import '../shared/resuable.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Find your desire \nhealth solution',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Color(0xff101623)),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/Notification.png'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFBFBFB),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Color(0xffE8F3F1)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 19),
                        child: Image.asset('assets/images/Search.png'),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: 'Search doctor, drugs, articles...',
                              hintStyle: TextStyle(
                                color: Color(0xffADADAD),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                              filled: true,
                              fillColor: Color(0xffFBFBFB),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 12.0),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Screens(
                      screenname: 'Doctors',
                      imagepath: 'assets/images/Doctor.png',
                    ),
                    Screens(
                      screenname: 'Pharmacy',
                      imagepath: 'assets/images/Pharmacy.png',
                    ),
                    Screens(
                      screenname: 'Hospital',
                      imagepath: 'assets/images/Hospital.png',
                    ),
                    Screens(
                      screenname: 'Ambulance',
                      imagepath: 'assets/images/Ambulance.png',
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 135,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffE8F3F1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 21),
                            CustomText( text:'Early protection for \nyour family health',fontSize: 18,),
                            SizedBox(height: 15),
                            Container(
                              width: 97,
                              height: 29,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff199A8E)),
                              child: Center(
                                child: Text(
                                  'Learn more',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/DRImage.png',
                        height: 135,
                        width: 121,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Top Doctors',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CustomText(
                        text: 'See all',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff199A8E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Doctors.length,
                    itemBuilder: (context, index) {
                      final doctor = Doctors[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 121,
                              height: 173,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Color(0xffE8F3F1)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 18),
                                    Center(
                                      child: CircleAvatar(
                                        radius: 35,
                                        backgroundImage:
                                            AssetImage(doctor['image']),
                                      ),
                                    ),
                                    SizedBox(height: 18),
                                    Text(
                                      doctor['name'],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                    Text(
                                      doctor['specialty'],
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffADADAD)),
                                    ),
                                    SizedBox(height: 10),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 13,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE8F3F1),
                                              borderRadius: BorderRadius.circular(2)),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 3.0, vertical: 1),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0xff199A8E),
                                                      size: 8,
                                                    ),
                                                    CustomText(
                                                      text: '${doctor['rating']}',
                                                      color: Color(0xff199A8E),
                                                      fontSize: 8,
                                                      fontWeight: FontWeight.w500,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_rounded,size: 8,color:Color(0xffA1A8B0),),
                                            CustomText(text: '${doctor['distance']} away',fontSize: 8,fontWeight: FontWeight.w500,color: Color(0xffA1A8B0),),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 14)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(

          backgroundColor: Colors.white,
          iconSize: 24,
          unselectedItemColor: Color(0xffADADAD),
          selectedItemColor: Color(0xff199A8E),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
