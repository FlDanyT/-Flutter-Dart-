// Основная страница приложения
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.grey[900], // Указание цвета и его жирность
          appBar: AppBar(
          title: Text('Список дел'),
          centerTitle: true, // Делает тест по средние
        ),
          body: Column(
          children: [
          Text('MainScreen', style: TextStyle(color: Colors.white),),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/todo');// Переход на страницу /todo
          }, child: Text('Перейти далее'))
          ],
    )
    );
  }
}
