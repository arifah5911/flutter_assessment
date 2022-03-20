import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

import 'contact-details.dart';

class listContact extends StatefulWidget {
 // const listContact({Key? key}) : super(key: key);

  @override
  _listContactState createState() => _listContactState();
}

class _listContactState extends State<listContact> {

  List foundContact = [];

  List<DataContact> dataList = [

    DataContact(user: "Chan Saw Lin",phone: "0152131113" , checkIn: "2020-06-30 16:10:05"),
    DataContact(user: "Lee Saw Loy",phone: "0161231346" , checkIn: "2020-07-11 15:39:59"),
    DataContact(user: "Khaw Tong Lin",phone: "0158398109" , checkIn: "2020-08-19 15:39:59"),
    DataContact(user: "Lim Kok Lin",phone: "0168279101" , checkIn: "2020-08-19 11:11:35"),
    DataContact(user: "Low Jun Wei",phone: "0112731912" , checkIn: "2020-08-15 13:00:05"),
    DataContact(user: "Yong Wei Kai",phone: "0172332743" , checkIn: "2020-07-31 18:10:11"),
    DataContact(user: "Jayden Lee",phone: "0191236439" , checkIn: "2020-08-22 08:10:38"),
    DataContact(user: "Kong kah Yan",phone: "0111931233" , checkIn: "2020-07-11 12:00:00"),
    DataContact(user: "Jasmine Lau",phone: "0162879190" , checkIn: "2020-08-01 12:10:05"),
    DataContact(user: "Chan Saw Lin",phone: "016783239" , checkIn: "2020-08-23 11:59:05")






  ];

  var search = TextEditingController();

  var name = TextEditingController();
  var phone = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    foundContact = dataList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {




    String dateCheckIn;
    String timeCheckIn;


    void calcCreatedAt(check_in) {
      var temp = DateTime.parse(check_in);
      dateCheckIn = DateFormat('d MMM y').format(temp);
      timeCheckIn = DateFormat('hh:mm').format(temp);
    }



    return Scaffold(

      appBar:  AppBar(
        leading: BackButton(
        ),
      ),

      body: Container(
         color: Colors.white70,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color(0xFFd9e3da)
                ),
                color: Colors.transparent,

              ),
              child: TextFormField(
                onChanged: searchContact,

                controller: search,
                cursorColor: Color.fromRGBO(242, 242, 242, 1),
                style: TextStyle(fontSize: 14, color: Colors.black),
                decoration: new InputDecoration(
                    suffixIcon: Icon(Icons.search),
                  hintStyle:  TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color:  Color.fromRGBO(79, 79, 79, 1)
                  ),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),

                // validator: widget.validate,
              ),
            ),
            SizedBox( height:20,),
            Expanded(
                child:  Container(
                  height: 300,
                  child: ListView.builder(
                      //key: Key(randomString()),
                      itemCount: foundContact.length,
                      itemBuilder: (context, i) {

                        calcCreatedAt(foundContact[i].checkIn);

                        return   Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xFFd9e3da)
                              ),
                              color: Color(0xFFd9e3da),

                            ),
                            child: GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: (){
                                  Navigator.push(
                                    context,

                                    MaterialPageRoute(builder: (context) =>

                                        contactDetails(
                                          user: foundContact[i].user,
                                          phone: foundContact[i].phone,
                                          checkIn: foundContact[i].checkIn,

                                        )
                                    ),
                                  );


                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(foundContact[i].user, style: TextStyle(
                                    color: Color.fromRGBO(79,79,79,1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    //decoration: TextDecoration.underline,
                                  ), ),
                                  SizedBox( height: 5,),
                                  /*
                                  Text(dataList[i].phone, style: TextStyle(
                                    color: Color.fromRGBO(79,79,79,1),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    //decoration: TextDecoration.underline,
                                  ), ),

                                   */
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child:  Container(
                                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        child: Text(dateCheckIn + " " + timeCheckIn, style: TextStyle(
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


            ),


          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 10),
            content: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox( height: 5,),
                        Container(
                          height: 40,
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xFFd9e3da)
                            ),
                            color: Color(0xFFd9e3da),

                          ),
                          child: TextFormField(

                            controller: name,
                            cursorColor: Color.fromRGBO(242, 242, 242, 1),
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            decoration: new InputDecoration(
                              hintStyle:  TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:  Color.fromRGBO(79, 79, 79, 1)
                              ),

                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                            ),

                            // validator: widget.validate,
                          ),
                        ),
                        SizedBox( height: 10,),
                        Text("Phone Number", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox( height: 5,),
                        Container(
                          height: 40,
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xFFd9e3da)
                            ),
                            color: Color(0xFFd9e3da),

                          ),
                          child: TextFormField(

                            controller: phone,
                            cursorColor: Color.fromRGBO(242, 242, 242, 1),
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            decoration: new InputDecoration(
                              hintStyle:  TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:  Color.fromRGBO(79, 79, 79, 1)
                              ),

                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                            ),

                            // validator: widget.validate,
                          ),
                        ),
                        SizedBox( height: 20,),
                        Align(
                          alignment: Alignment.bottomRight,
                          child:  ElevatedButton(

                            child: Text("Add"),
                            onPressed: (){
                              setState(() {

                                dataList.add(DataContact(user: name.text, phone: phone.text, checkIn: DateTime.now().toString()));
                                print(dataList);
                              });

                              name.clear();
                              phone.clear();
                              Navigator.pop(context);

                            },
                          ),
                        )

                      ],
                    ),
                  ),
                  height: 230,

                )


              ],
            ),
          ),
        ),

        /*
        onPressed: (){
          setState(() {

            dataList.add(DataContact(user: "Arifah", phone: "01114375911", checkIn: DateTime.now().toString()));
            print(dataList);
          });

        },

         */
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),


    );

  }


  void searchContact(String query){

      final suggestion = dataList.where ((DataContact){
        final userContact = DataContact.user.toLowerCase();
        final input = query.toLowerCase();
        return userContact.contains(input);
      }).toList();

      if(query.isEmpty){
        setState(() => foundContact = dataList );
      }
      else{
      setState(() => foundContact = suggestion);
      }




  }

  /*
  void searchContact(String query){



    final suggestion = dataList.where ((DataContact){
      final userContact = DataContact.user.toLowerCase();
      final input = query.toLowerCase();
      return userContact.contains(input);
    }).toList();

    final sugestion = dataList.reversed .toList();


    if(search.text.isEmpty){

      print(dataList);
      setState(() => dataList = sugestion);
    }
    else{
      print(dataList);
      setState(() => dataList = suggestion);

    }




  }// This trailing comm

   */


}

/*
class DataContact {
  String user;
  String phone;
  String checkIn;

  DataContact(this.user, this.phone, this.checkIn);
  factory DataContact.fromJson(dynamic json) {
    return DataContact(json['user'] as String, json['phone'] as String, json['check-in'] as String);
  }
  @override
  String toString() {
    return '{ ${this.user}, ${this.phone}, ${this.checkIn} }';
  }
}

 */

class DataContact {
  String user;
  String phone;
  String checkIn;

  DataContact({this.user, this.phone, this.checkIn});

}





