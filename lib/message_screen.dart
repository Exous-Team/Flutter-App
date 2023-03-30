import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: Color(0xFF0F91AB),
                  ),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/63621437?v=4"),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Mohammed Kamal",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600,color: Color(0xFF0F91AB)),),
                      SizedBox(height: 6,),
                      Text("Mentor",style: TextStyle(color: Color(0xFF0F91AB), fontSize: 13),),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image(image: AssetImage('assets/images/img_15.png'),),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(

                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Color(0xFFC5C5C5)),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Image(image: AssetImage('assets/images/img_16.png'),),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 0,
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}
