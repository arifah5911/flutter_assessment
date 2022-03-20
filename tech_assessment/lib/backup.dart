import 'dart:convert';

import 'package:flutter/material.dart';

class listContact extends StatefulWidget {
  // const listContact({Key? key}) : super(key: key);

  @override
  _listContactState createState() => _listContactState();
}

class _listContactState extends State<listContact> {
  @override
  Widget build(BuildContext context) {

    List dataList = [];

    setState(() {
      print (objData);
      dataList = json.decode(objData);
    });
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child:  Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: dataList.length,
                      itemBuilder: (context, i) {

                        return   Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.orange
                              ),
                              color: Color.fromRGBO(255,255,255,1),
                            ),
                            child: GestureDetector(
                              onTap: (){

                                /*
                  Navigator.push(
                    context,
                    //MaterialPageRoute(builder: (context) => profileAccount()
                    MaterialPageRoute(builder: (context) =>

                        ticketDetails(
                          token: widget.token,
                          ticketSlug: dataListTicket[i]['ticket_slug'].toString(),
                        )

                      /*
                                        ticketDetailsA(
                                          token: widget.token,
                                          ticketSlug: dataListTicket[i]['ticket_slug'].toString(),
                                        )

                                     */

                    ),
                  );

                   */
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  SizedBox( height: 10,),
                                  Text(dataList[i]['user'], style: TextStyle(
                                    color: Color.fromRGBO(79,79,79,1),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    //decoration: TextDecoration.underline,
                                  ), ),
                                  SizedBox( height: 5,),
                                  Text("01114375911", style: TextStyle(
                                    color: Color.fromRGBO(79,79,79,1),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    //decoration: TextDecoration.underline,
                                  ), ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child:  Container(
                                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        child: Text("16:44 on 18 Sep 2019", style: TextStyle(
                                          color: Color.fromRGBO(51,51,51,1),
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                        ),),
                                        //child: Text(timeEnd +' on '+ dateEnd, style: C51F12W400,),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Color(0xFFF2F2F2)),
                                          color: Color.fromRGBO(255,255,255,1),
                                        )
                                    ),
                                  )



                                ],
                              ),
                            )
                        );

                      }
                  ),
                )


            )
          ],


          /*
            Expanded(
            child:  Container(
              height: 300,
              child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, i) {

                    return   Container(
                        height: 300,
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.orange
                          ),
                          color: Color.fromRGBO(255,255,255,1),
                        ),
                        child: GestureDetector(
                          onTap: (){

                            /*
                  Navigator.push(
                    context,
                    //MaterialPageRoute(builder: (context) => profileAccount()
                    MaterialPageRoute(builder: (context) =>

                        ticketDetails(
                          token: widget.token,
                          ticketSlug: dataListTicket[i]['ticket_slug'].toString(),
                        )

                      /*
                                        ticketDetailsA(
                                          token: widget.token,
                                          ticketSlug: dataListTicket[i]['ticket_slug'].toString(),
                                        )

                                     */

                    ),
                  );

                   */
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox( height: 10,),
                              Text(dataList[i]['user'], style: TextStyle(
                                color: Color.fromRGBO(79,79,79,1),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                //decoration: TextDecoration.underline,
                              ), ),
                              SizedBox( height: 5,),
                              Text("01114375911", style: TextStyle(
                                color: Color.fromRGBO(79,79,79,1),
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                //decoration: TextDecoration.underline,
                              ), ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child:  Container(
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                    child: Text("16:44 on 18 Sep 2019", style: TextStyle(
                                      color: Color.fromRGBO(51,51,51,1),
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                    //child: Text(timeEnd +' on '+ dateEnd, style: C51F12W400,),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Color(0xFFF2F2F2)),
                                      color: Color.fromRGBO(255,255,255,1),
                                    )
                                ),
                              )



                            ],
                          ),
                        )
                    );

                  }
              ),
            )


          )

             */




          /*
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Colors.orange
                ),
                color: Color.fromRGBO(255,255,255,1),
              ),
              child: GestureDetector(
                onTap: (){

                  /*
                  Navigator.push(
                    context,
                    //MaterialPageRoute(builder: (context) => profileAccount()
                    MaterialPageRoute(builder: (context) =>

                        ticketDetails(
                          token: widget.token,
                          ticketSlug: dataListTicket[i]['ticket_slug'].toString(),
                        )

                      /*
                                        ticketDetailsA(
                                          token: widget.token,
                                          ticketSlug: dataListTicket[i]['ticket_slug'].toString(),
                                        )

                                     */

                    ),
                  );

                   */
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox( height: 10,),
                    Text("Chan Saw Lin", style: TextStyle(
                      color: Color.fromRGBO(79,79,79,1),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      //decoration: TextDecoration.underline,
                    ), ),
                    SizedBox( height: 5,),
                    Text("01114375911", style: TextStyle(
                      color: Color.fromRGBO(79,79,79,1),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      //decoration: TextDecoration.underline,
                    ), ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:  Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Text("16:44 on 18 Sep 2019", style: TextStyle(
                            color: Color.fromRGBO(51,51,51,1),
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                          ),),
                          //child: Text(timeEnd +' on '+ dateEnd, style: C51F12W400,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF2F2F2)),
                            color: Color.fromRGBO(255,255,255,1),
                          )
                      ),
                    )



                  ],
                ),
              )
          ),

           */
        ),
      ),
    );
  }

  static const String objData =
      '[{"user": "Chaw Saw Lin", "phone": "01114375922", "check-in": "2020-06-30 16:10:05" }]';


}



