

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool r1 = true ;
    bool r2 = true ;
    bool r3 = true ;
    bool r4 = true ;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 107, 182, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(""),
            Text("Add Course" ),
            Icon(
              Icons.check
            )
          ],
        ),
        centerTitle: true,
      ),

      body: Container(
        margin: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(168, 199, 216, 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset("images/Userflow.png")),
                    const Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text("Course" ,style: TextStyle(fontSize: 14 , color: Color.fromRGBO(0, 0, 0, 0.5) , fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(height: 5,),
                    Column(
                      children: const [
                        Text("UX Design", style: TextStyle(color: Color.fromRGBO(64, 64, 64, 1), fontSize: 14 , ),),
                        Text("28 Students", style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12 , ),),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 13, 45, 71),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset.zero
                          )
                        ]
                      ),
                      child: TextButton(
                        onPressed: () { 
                          showDialog(
                          
                          context: context, 
                          builder: ((context) => AlertDialog(
                            
                            content: Container(
                              
                              height: MediaQuery.of(context).size.height*0.50,

                              
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Image.asset("images/check.png" )
                                  ),
                                  const SizedBox(height: 10,),
                                  const Text("Success")
                                ],
                              ),
                            )
                          ))
                        );
                      
                      },
                      child: const Text("show alert", style: TextStyle(color: Colors.white),),),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 13, 45, 71),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset.zero
                          )
                        ]
                      ),
                      child: TextButton(
                        onPressed: () { 
                          showModalBottomSheet(
                          context: context, 
                          builder: ((context) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Settings" , textAlign: TextAlign.start,),
                              ),
                              Column(
                                
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("data1"),
                                      Switch(value: r1, onChanged: (value) {
                                        setState(() {
                                          r1 = !r1 ;
                                        });
                                      } )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("data1"),
                                      Switch(
                                        value: r2, 
                                        onChanged: (value) {
                                          setState(() {
                                            r2 = value ;
                                          });
                                        } )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("data1"),
                                      Switch(value: r3, onChanged: (value) {
                                        setState(() {
                                          r3 = !r3 ;
                                        });
                                      } )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("data1"),
                                      Switch(value: r4, onChanged: (value) {
                                        setState(() {
                                          r4 = !r4 ;
                                        });
                                      } )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ))
                        );
                      
                      },
                      child: const Text("settings", style: TextStyle(color: Colors.white),),),
                    )
                    
                    
                  ],
                ),
              )

            ],
          ),
        ),
      )
  
    );
  }
}