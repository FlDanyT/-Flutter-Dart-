import 'package:flutter/material.dart';

// Подключение базы данных Firebase
import 'package:cloud_firestore/cloud_firestore.dart'; // Импорт базы данных
import 'package:firebase_core/firebase_core.dart'; // Импорт базы данных

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _userToDD; // Создание элемента _userToDD
 List todoList = [];


 void initFirbase() async{ // Подключение к базе данных
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();

 }
 
 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initFirbase(); // Вызываем метод для запуска базы данных
    
    todoList.addAll(['Buy milk', 'Wash disches', 'Купить кортошку']);
  }

 void _menuOpen () { // Создаем метод _menuOpen
  Navigator.of(context).push(
    MaterialPageRoute(builder: (BuildContext context){
    return Scaffold( // Указываем что будет в выезжающим меню
      appBar: AppBar(title: Text('Меню'),),
      body: Row(
        children: [
          ElevatedButton(onPressed: (){ // Кнопки в _menuOpen
            Navigator.pop(context); // Изначально скрываем меню
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false); // Переход на основную страницу

          }, child: Text('На главную')),
          Padding(padding: EdgeInsets.only(left: 15)), // Отступ
          Text('Наше простое меню'),
        ],
      )
    );
    })
  );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // Указание цвета и его жирность
      appBar: AppBar(
        title: Text('Список дел'),
        centerTitle: true, // Делает текст по середине
        actions: [ // Делаем кнопку для выхода на главную страницу
          IconButton(
            icon: Icon(Icons.menu),  // Иконка кнопки
            onPressed: _menuOpen, // Подключаем метод _menuOpen
          ),
        ],
      ),
      body: ListView.builder( // Список
        itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) { // Перебор всего списка
          return Dismissible(
              key: Key(todoList[index]), // Указываем ключ для блока
              child: Card( // Создание карточки
                child: ListTile(
                  title: Text(todoList[index]),
                  trailing: IconButton( // Добавление кнопки для удаления
                    icon: Icon(
                      Icons.delete_sweep,
                      color: Colors.deepOrangeAccent,
                    ),
                    onPressed: () {
                    setState(() {
                      todoList.removeAt(index); // Удаление элемента из списка
                    });
                  },
                  ),
                ),
              ),
            onDismissed: (direction){ // Удаление элемента из спика
          // if(direction == DismissDirection.endToStart) // Отслеживаем в какую сторону была скипнута элемент из списка
          setState(() {
            todoList.removeAt(index); // Удаление элемента из списка
          });
            },
          );
          }
      ),
      floatingActionButton: FloatingActionButton( // Всплывающее окно
        backgroundColor: Colors.greenAccent,
        onPressed: (){
      showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title:  Text('Добавить элемент'),
        content:  TextField(
          onChanged: (String velue) {
            _userToDD = velue; // При воде информации ее помещают в поле _userToDD
          },
        ),
        actions: [
          ElevatedButton(onPressed: (){
            FirebaseFirestore.instance.collection('items').add({'item': _userToDD}); // Добавление данных которые вел пользователь в базу данных

            Navigator.of(context).pop(); // Закрываем окно после нажатие кнопки 'Добавить'
      }, child: Text('Добавить'))
        ],
      );
      });
        },
        child: Icon( // Дизайн кнопки
          Icons.add_box,
          color: Colors.white,
        ),
      ),
    );
  }
}
