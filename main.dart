import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled/pages/home.dart'; // Подключаем файл  home.dart
import 'package:untitled/pages/main_screen.dart'; // Подключаем файл main_screen.dart

// Практика - Приложение по списку дел

void main() =>runApp(MaterialApp(
  theme: ThemeData( // Тема
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/', // Указываем главное окно
  routes: { // Указываем окна
    '/': (context) => MainScreen(), // Подключаем окно MainScreen
    '/todo': (context) => Home(), // Подключаем окно Home
  },
));








// //Повторение практика
//
// void main() => runApp(MaterialApp(
//   home: UserPanel(),
// ));
//
// class UserPanel extends StatefulWidget {  // stless Создание структуры класса
//   const UserPanel({Key? key}) : super(key: key);
//
//   @override
//   State<UserPanel> createState() => _UserPanelState();
// }
//
// class _UserPanelState extends State<UserPanel> { // Класс состояние
//
//   int _count = 0; // Поле
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( // Основной слой
//     backgroundColor: Colors.redAccent, // Ставим Фон
//       appBar: AppBar( // Шапка
//         title: Text('itProger User'),
//         centerTitle: true, // Ставим текст по центру
//         backgroundColor: Colors.black45, // Цвет шапки black45 - прозрачный черный
//       ),
//       body: SafeArea(
//       child: Row( //Все обекты 100%
//         mainAxisAlignment: MainAxisAlignment.center, // Делаем объект по середине
//         children: [
//           Column(    //Column - класс где объекты находятся друг под другом
//             children: [
//           Padding(padding: EdgeInsets.only(top: 30),), // Делаем Отступ
//               Text('John Doe', style: TextStyle(
//                 fontSize: 25,
//                 color: Colors.white,
//               ),),
//               Padding(padding: EdgeInsets.only(top: 10),), // Делаем Отсуп
//               CircleAvatar(
//                 backgroundImage: NetworkImage('https://get.pxhere.com/photo/hand-man-beach-sea-water-ocean-horizon-silhouette-person-light-sky-sun-sunrise-sunset-sunlight-morning-dawn-dusk-evening-reflection-seashore-1179661.jpg'),
//                 radius: 50, //  Радиус изображения
//               ),
//               Padding(padding: EdgeInsets.only(top: 10),), // Делаем Отступ
//               Row(
//                 children: [
//                   Icon(Icons.mail_outline, size: 25,), // Значок эмейл
//                   Padding(padding: EdgeInsets.only(left: 10),), // Делаем Отступ слева
//                   Text('admin@itproger.com', style: TextStyle(color: Colors.white),)
//                 ],
//               ),
//               Padding(padding: EdgeInsets.only(top: 10),), // Делаем Отступ
//               Text('Count $_count', style: TextStyle(color: Colors.white),)
//             ],
//           ),
//         ],
//       ),
//       ),
//       floatingActionButton: FloatingActionButton( // Делаем кнопку
//         child: Icon(Icons.ac_unit_rounded), // Картинку к кнопки
//         backgroundColor: Colors.amber, // Цвет кнопки
//         onPressed: () {
//           setState(() { //
//             _count++; // _count увеличиваем на единицу
//         },
//       ),
//     );
//   }
// }







// //Треировочный код

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//   return MaterialApp(
//     theme: ThemeData(primaryColor: Colors.deepOrangeAccent),// Тема
//
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('itProger App'),
//         centerTitle: true, // Делает текст по центру в шапке
//       ), // Шапка
//
//
//         body: Row( // Верстка, сетка столбов и рядов
//             mainAxisAlignment: MainAxisAlignment.spaceAround, // Передвижение по вертикали
//           children: [
//            Column(
//              mainAxisAlignment: MainAxisAlignment.end, // Передвижение по вертикали
//              crossAxisAlignment: CrossAxisAlignment.start, // Передвижение по вертикали
//
//              children: [
//                Text('Hello'),
//                Text('Hello'),
//                Text('Hello'),
//                TextButton(onPressed: (){}, child: Text('Hello'))
//              ],
//            ),
//             Column(
//               children: [
//                 Text('Hello'),
//                 TextButton(onPressed: (){}, child: Text('Hello'))
//               ],
//             )
//           ],
//         )
//
//
//       // body: Column( // Вывод столбцов
//       //   children: [
//       //     Text('Hello'),
//       //     TextButton(onPressed: (){}, child: Text('Hello'))
//       //   ],
//       // ),
//
//
//       // body: Row( // Вывод рядов
//       // children: [
//       //   Text('Hello'),
//       //   TextButton(onPressed: (){}, child: Text('Hello'))
//       // ],
//       // ),
//
//      // body: Container( // Контейнер
//           // color: Colors.deepOrangeAccent,
//           //   child: Text('it Progrom'),
//           //   margin: EdgeInsets.fromLTRB(11.0, 15.0, 25.0, 30.0), // Ширина, дина текста
//           // padding: EdgeInsets.all(15.5), // объем текста
//
//
//
//           //Image(
//      //   child: Image(image: AssetImage('assets/8891.jpg'), //изображение из папки
//         //  image: NetworkImage('https://catherineasquithgallery.com/uploads/posts/2021-03/1614636714_7-p-fon-gori-dlya-fotoshopa-10.jpg'), // Отображение картинки с интернета
//         //)
//
//
//         // Кнопки
//        //   child: OutlinedButton.icon(label: Text('Нажми'),  onPressed: (){}, icon: Icon(Icons.adb_sharp)) Кнопка C иконкой + обеденная
//        // child: RaisedButton.icon(onPressed: () {}, icon: Icon(Icons.adb_sharp), label: Text('Settings')) // Кнопка с иконкой
//         //child: RaisedButton(onPressed: (){}, child:  Text('Нажми'), color: Colors.deepOrangeAccent,) // Кнопка с дизайном тени
//         //child: FыlatButton(onPressed: (){}, child: Text('Нажми на меня'), color: Colors.deepOrangeAccent,), // Кнопка
//         // Icon(Icons.settings, size: 45, color: Colors.amber,), // Иконки
//       ),
//
//
//
//     // floatingActionButton: FloatingActionButton( // Функция кнопки
//     //   child: Text('Нажми'),
//     //   backgroundColor: Colors.deepOrangeAccent, onPressed: () { //Настройка кнопки
//     //    print('Clicked');
//    // },
//
//     //),
//   //  ),
//     );
//   }
//
// }