import 'package:flutter/material.dart';
import 'package:news/shared/listitem.dart';

class DetailsScreen extends StatelessWidget {
  final String tag;
  final ListItem item;
  DetailsScreen({Key? key, required this.item, required this.tag})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: '${item.newsTitle}',
                      child: Image.network(item.imageUrl)),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          item.newsTitle,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.date_range),
                            Text(
                              item.date,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "In 1991, the Computer Science and Engineering (CSE) Discipline of Khulna University started its academic activities with 20 undergraduate students in Bachelor of Science in Computer Science and Engineering. Since then around 600 undergraduate students (of 17 batches) have graduated from the discipline. A perfect 100% of graduates work in government and private organizations as well as in teaching professions in home and abroad. CSE discipline takes 40 students at the undergraduate level in each year.With the support from the Ministry of Science and Information Communication Technology, CSE discipline has run a postgraduate Diploma in Information Technology (PGD-IT) program since 2001. The discipline has achieved its target by producing around 200 PGD-IT professionals.In 2011, CSE discipline has introduced an MSc.Engineering (CSE) degree. Students of MSc.Engineering (CSE) will benefit from the memorandum of understanding between the CSE discipline of Khulna University and the Department of Computer Science of University of Saskatchewan, Canada.Students of CSE have a computer club named Club for Updated Search on Computer (CLUSTER). CLUSTER arranges seminar, programming contest and publishes magazines.",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
