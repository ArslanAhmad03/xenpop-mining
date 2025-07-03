import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 12),

                helloWidget(),

                SizedBox(height: 12),

                cardWidget(),

                SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    rowFeature(image: 'assets/icons/Icon1.png', title: 'Send'),
                    rowFeature(image: 'assets/icons/Icon2.png', title: 'Receive'),
                    rowFeature(image: 'assets/icons/Icon3.png', title: 'History'),
                  ],
                ),

                SizedBox(height: 12),

                activityHeader(),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(child: Image.asset('assets/images/chart.png')),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardButton(image: 'assets/icons/Fatured_icon1.png', title: 'Send',value: '1200.45'),
                    cardButton(image: 'assets/icons/Fatured_icon2.png', title: 'Send',value: '2000.43'),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Statistics',style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('See more',style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),

                statisticCard(),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(child: Image.asset('assets/images/Chart2.png')),
                ),

              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: index,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          onTap: (value){
          setState(() {
            index = value;
          });
          },
          items: [
            BottomNavigationBarItem(icon: Image.asset('assets/icons/Home.png'), label: 'Home'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/token_chat.png'), label: 'Chat'),
            BottomNavigationBarItem(icon: Image.asset(height: 34,'assets/icons/Mining Screen.png'),label: 'Mining'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/money_cal.png'),label: 'Cal'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/settings.png'),label: 'Settings'),
          ],
      ),

    );
  }

  Widget helloWidget(){
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),),

          SizedBox(width: 10),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi, David James',style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Have a good day'),
            ],
          ),
          Spacer(),

          SizedBox(child: Image.asset('assets/icons/Notification.png')),
        ],
      ),
    );
  }

  Widget cardWidget(){
    return Card(
      color: Color.fromRGBO(0,49,102, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 40,right: 20),
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('Your Balance',style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          SizedBox(height: 28, width: 28, child: Image.asset('assets/images/Coin.png')),
                          SizedBox(width: 10),
                          Text('5,790.54',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:  Colors.white)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                      height: 52,
                      width: 52,
                      child: Image.asset('assets/icons/Icon.png'),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 80,
            child: SizedBox(
                width: double.infinity,
                child: Image.asset('assets/vector/Vector15.png',fit: BoxFit.fitWidth,)),
          ),

          SizedBox(height: 10.0,),
        ],
      ),
    );
  }

  Widget rowFeature({required String image, required String title}){
    return Column(
      children: [
        SizedBox(height: 56, width: 56, child: Image.asset('assets/icons/Icon1.png')),
        SizedBox(height: 4),
        Text('Send'),
      ],
    );
  }

  Widget activityHeader(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your Mining'),
              Text('USDT 12,000.000',style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [
              Text('month'),
              Icon(Icons.arrow_drop_down),
            ],
          )
        ],
      ),
    );
  }

  Widget cardButton({required String image, required String title, required String value}){
    return Expanded(
      child: Card(
        color: Colors.grey.shade200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SizedBox(child: Image.asset(height: 32,width: 32, image)),

                SizedBox(width: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    Text("\$$value",style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget statisticCard(){
    return Card(
      color: Colors.grey.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Open',style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 4),
                    Text('342.43',style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('High',style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 4),
                    Text('342.43',style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Low',style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 4),
                    Text('342.43',style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Divider(color: Colors.grey.shade300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Volume',style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 4),
                    Text('342.43',style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Avg.Volume',style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 4),
                    Text('342.43',style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Market Cap',style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 4),
                    Text('342.43',style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
