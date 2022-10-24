import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nine_proekt/models/user.dart';

class UserDetailScreen extends StatefulWidget {
  final User user;
  const UserDetailScreen({required this.user, super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text(widget.user.firstName + ' ' + widget.user.lastName),
        
      ),
      body:
      Container (
        decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://ru-static.z-dn.net/files/dd7/ef1d3f701fd2776d30b14257a946bdc0.jpg'),
        fit: BoxFit.cover
        ),
        ),
      
      child: Column(
        children: [
          widget.user.avatar == ''
          ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.network('',
                fit: BoxFit.contain,),
              ),
            ],
          )
          : Container(
            child: Image.network(widget.user.avatar),
          ),
          Container(
          margin: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.user.firstName + ' ' + widget.user.lastName,
              style: TextStyle(color: Colors.white ,fontSize: 24, fontWeight: FontWeight.bold))
            ],
          ),
          ),
          Container(
          width: 400,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(25),
          decoration: BoxDecoration( 
          //color: Color(0xFF7B1FA2).withOpacity(0.5),
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(80)),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withOpacity(0.8),
              spreadRadius: 15,
              blurRadius: 50,
              offset: Offset(0,3)
            ),
          ],
           
          ),
           child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Возраст: ', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Телефон: ', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Email: ', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.only(left: 100), 
                child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(widget.user.age.toString(), style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text(widget.user.phone, style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text(widget.user.email, style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  
                ],
                ) ,
                ),
              ],
            ),
            ),
            ),
        ]
      )
      )
    );
  }
}