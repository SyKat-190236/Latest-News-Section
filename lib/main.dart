import 'package:flutter/material.dart';
import 'package:news/shared/details.dart';
import 'package:news/shared/listitem.dart';
import 'package:news/shared/listwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Newspage(),
    );
  }
}
class Newspage extends StatefulWidget {
  const Newspage({Key? key}) : super(key: key);

  @override
  _NewspageState createState() => _NewspageState();
}

class _NewspageState extends State<Newspage> with SingleTickerProviderStateMixin{
  List<ListItem> listTitle = [
    ListItem(
      "https://scontent.fjsr6-1.fna.fbcdn.net/v/t1.6435-9/159134666_3133894410189321_1397933100226732403_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=0debeb&_nc_ohc=uHHdXSniMMoAX9uDSsi&_nc_ht=scontent.fjsr6-1.fna&oh=00_AT80I6WbVwmkyqBNVlaCEgJaEpWWreM_kaJp41N1inzJ0Q&oe=623EE579",
      "KU Admission Circular has published",
      "25 February, 2022"
    ),
    ListItem(
        "https://scontent.fjsr6-1.fna.fbcdn.net/v/t1.6435-9/159134666_3133894410189321_1397933100226732403_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=0debeb&_nc_ohc=uHHdXSniMMoAX9uDSsi&_nc_ht=scontent.fjsr6-1.fna&oh=00_AT80I6WbVwmkyqBNVlaCEgJaEpWWreM_kaJp41N1inzJ0Q&oe=623EE579",
        "KU Admit Card download now",
        "25 March, 2022"
    ),
    ListItem(
        "https://scontent.fjsr6-1.fna.fbcdn.net/v/t1.6435-9/159134666_3133894410189321_1397933100226732403_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=0debeb&_nc_ohc=uHHdXSniMMoAX9uDSsi&_nc_ht=scontent.fjsr6-1.fna&oh=00_AT80I6WbVwmkyqBNVlaCEgJaEpWWreM_kaJp41N1inzJ0Q&oe=623EE579",
        "KU Admission Seat Plan has published",
        "12 April, 2022"
    ),
    ListItem(
        "https://scontent.fjsr6-1.fna.fbcdn.net/v/t1.6435-9/159134666_3133894410189321_1397933100226732403_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=0debeb&_nc_ohc=uHHdXSniMMoAX9uDSsi&_nc_ht=scontent.fjsr6-1.fna&oh=00_AT80I6WbVwmkyqBNVlaCEgJaEpWWreM_kaJp41N1inzJ0Q&oe=623EE579",
        "KU Admission Total Centar Details",
        "12 April, 2022"
    ),
    ListItem(
        "https://scontent.fjsr6-1.fna.fbcdn.net/v/t1.6435-9/159134666_3133894410189321_1397933100226732403_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=0debeb&_nc_ohc=uHHdXSniMMoAX9uDSsi&_nc_ht=scontent.fjsr6-1.fna&oh=00_AT80I6WbVwmkyqBNVlaCEgJaEpWWreM_kaJp41N1inzJ0Q&oe=623EE579",
        "KU Admission Result has published",
        "22 May, 2022"
    ),
  ];

  List<Tab> _tabList = [
    Tab(child: Text("Top"),),
    Tab(child: Text("Popular"),),
    Tab(child: Text("Trending"),),
    Tab(child: Text("Other Universities"),),
    Tab(child: Text("Category"),),
  ];
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: _tabList.length, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110.0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
              Icons.menu,
              color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFF00E676),
        centerTitle: true,
        title: Text("Latest News", style: TextStyle(
          color: Colors.black,
        ),),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: _tabList,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: listTitle.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> DetailsScreen(
                            item: listTitle[index],
                            tag: listTitle[index].newsTitle,
                          )
                      ));
                    },
                    child: listWidget(listTitle[index]),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: listTitle.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> DetailsScreen(
                            item: listTitle[index],
                            tag: listTitle[index].newsTitle,
                          )
                      ));
                    },
                    child: listWidget(listTitle[index]),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: listTitle.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> DetailsScreen(
                            item: listTitle[index],
                            tag: listTitle[index].newsTitle,
                          )
                      ));
                    },
                    child: listWidget(listTitle[index]),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: listTitle.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> DetailsScreen(
                            item: listTitle[index],
                            tag: listTitle[index].newsTitle,
                          )
                      ));
                    },
                    child: listWidget(listTitle[index]),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: listTitle.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> DetailsScreen(
                            item: listTitle[index],
                            tag: listTitle[index].newsTitle,
                          )
                      ));
                    },
                    child: listWidget(listTitle[index]),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

