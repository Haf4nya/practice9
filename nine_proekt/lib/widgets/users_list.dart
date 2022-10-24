import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nine_proekt/models/user.dart';
import 'package:nine_proekt/screens/USerDetailScreen.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

List<User> infoList = [
User(
  age: 15,
  firstName: 'Ann',
  lastName: 'Matvienko',
  phone: '+79247878455',
  email: 'exp@mail.ru',
  avatar: 'https://www.wmj.ru/thumb/1280x720/smart/filters:quality(75)/imgs/2017/07/12/19/1093263/2258275b2e8e3761e1ffac412e359cc0fc06c2c8.jpg'),

  User(
  age: 21,
  firstName: 'Matvei',
  lastName: 'Mareev',
  phone: '+79247878455',
  email: 'mail@mail.ru',
  avatar: 'https://atlasnews.ru/wp-content/uploads/2010/01/Kianu-Rivz-1.jpg'),

  User(
  age: 20,
  firstName: 'Ruslan',
  lastName: 'Yakovlev',
  phone: '+79247878455',
  email: 'mial@example.ru',
  avatar: 'https://www.krest-most.ru/wp-content/uploads/2019/08/№-12-2015-str.-8.-Novyj-albom-i-novaya-zhizn-Vyacheslava-Butusova-1024x798.jpg'),
];


class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    itemCount: infoList.length, 
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {

          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => UserDetailScreen(user: infoList[index],
            ),
           ),
          );
        },
        child: Card(
          child: Column(
            children: [
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                 Container(
                width: 100,
                height: 100,
                child: infoList[index].avatar == ''
                ? Image.network('https://avatars.mds.yandex.net/i?id=8d07cae2e742e01d7cbcb950f7bd5cbe-5663294-images-thumbs&n=13')
                : Image.network(infoList[index].avatar,
                     fit: BoxFit.cover),
                  
                 ),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Имя:' + infoList[index].firstName,
                      textAlign: TextAlign.start,
                      ),
                      Text('Фамилия: ' + infoList[index].lastName),
                      Text('Возраст: ' + infoList[index].age.toString()),
                      Text('Телефон: ' + infoList[index].phone),
                      Text('Email: ' + infoList[index].email),
                    ],
                  ),
                    Icon(
                    Icons.bookmark_add,
                    color: Colors.blue,
                  ),
               
                ],
              ),
            ],
          ),
        ),
      );
    } );
  }
}

                // Icon(
                  
                //   Icons.bookmark_add,
                //   color: Colors.blue,

                // ),

            //     Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
              
            //   children: <Widget> [
            //     Icon(Icons.bookmark),
            //   ],
            // )