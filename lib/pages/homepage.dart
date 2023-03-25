// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

import '../utils/categorycard.dart';
import '../utils/doctorlist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          //Appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    Text("Hello,",style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold
                    )),
                    Text("Jerard Peter",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold
                    ),),

                  ],
                ),
                //profile Picture
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:const Icon(Icons.person,color: Colors.white,))
              ],
              
            ),
          ),
          const SizedBox(height: 25.0,),
          //Card=>How do you feel
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              elevation: 20,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color.fromARGB(255, 238, 34, 102),Color.fromARGB(255, 227, 148, 174)])
                  //color: Colors.pink[100],
                  //borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    //card image
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.network("https://assets4.lottiefiles.com/packages/lf20_pcqghvjn.json"),
                    ),
              const SizedBox(width: 20.0,),
                      
                    //text widget inside the card widget
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("How Do You Feel?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                           SizedBox(height: 6.0,),
                           Text("Fill out Your Medical Card Right Now",style: TextStyle(fontSize: 14),),
                           SizedBox(height: 8.0,),
            
                           Container(
                            width: 120,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(12)
                              ),
                             child: Center(
                              child: Text("Get Started...!"),
                                                   ),
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          //Searchbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(12)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "How can we help you?",
                  prefixIcon: Icon(Icons.search)
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0,),
          //Horizontal Listview of Doctor categories
          SizedBox(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(categoryname: 'Densist',icon: Image.asset("icons/tooth.png",height: 30,),),
                CategoryCard(categoryname: 'Surgeon', icon: Image.asset("icons/surgeon.png",height: 30),),
                CategoryCard(categoryname: 'General', icon: Image.asset("icons/drugs.png",height: 30),),
                CategoryCard(categoryname: 'Densist',icon: Image.asset("icons/tooth.png",height: 30,),),
                CategoryCard(categoryname: 'Surgeon', icon: Image.asset("icons/surgeon.png",height: 30),),
                CategoryCard(categoryname: 'General', icon: Image.asset("icons/drugs.png",height: 30),)
                
              ],
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Doctors list",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),),
                TextButton(
                  onPressed: (){}, 
                  child: Text("See All",))
                // Text("See All>>")
              ],
            ),
          ),
          SizedBox(height: 15,),

          //Horizontal Listview of Doctor list
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:const [
              DoctorList(docExperience: 'Therapyst, 7 y.o.f', docImagepath: 'doctors/doc2.jpg', docName: 'Dr.Thomas Isaac', rating: '4.4',),
              DoctorList(docExperience: 'Dentist, 5 y.o.f', docImagepath: 'doctors/doc1.jpg', docName: 'Dr.Christina Teademan', rating: '4.0',),
              DoctorList(docExperience: 'Surgeon, 10 y.o.f', docImagepath: 'doctors/doc3.jpg', docName: 'Dr.Terry Wilson', rating: '4.9',),
              DoctorList(docExperience: 'Therapyst, 7 y.o.f', docImagepath: 'doctors/doc1.jpg', docName: 'Dr.Thomas Isaac', rating: '4.9',),

              ]),
          )
        ],),
      ),
    );
  }
}