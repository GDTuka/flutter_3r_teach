import 'package:flutter/material.dart';

/// Любой виджет это класс который унаследован от класса [StatefullWidget] или [StatelessWidget]
/// У любого класса есть атрибуты которыми можно воспользоваться для изменения его внешнего вида или логики работы
/// Чтобы посмотреть атрибуты необходимо находясь курсором внутри круглых скобок класса нажать [ctrl + space]
///
/// Для запуска приложения необходимо выбрать эмулятор и запустить его, для этого нужно нажать [ctrl + shift+ p] и вписать [Launch Emulator]
/// Там выбрать нужный для запуска эмулятор
///
/// После необходимо нажать на [F5] или [Ctrl + F5] для запуска приложения
///
/// Размеры во флаттер наследуются от их родителей. Так если есть виджет Row который является ребёнком [child:] Видежт [SizedBox] чьи размеры
/// [height: 200] то этот виджет будет иметь размеры [height: 200]
///
/// Чтобы посмотреть на всё дерево виджетов можно использовать [DevTools]
///
/// Для того чтобы их открыть нужно запустить проект, затем нажать [ctrl + shift+ p] вбить в поиск [DevTools] и там бырать открыть [DevTools] в браузере
/// Тогда появится Flutter Inspector где можно будет посмотреть на то какой размер у какого виджета и на всё дерево виджетов

/// [main] - точка входа в приложение
void main() {
  /// Запускает само приложение
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// [Scaffold] главный виджет для экрана, имеет в себе различные атрибуты

  ///[Column] Располгает элементы друг под другом
  ///
  /// Имеет возможность через [mainAxisAlignment: MainAxisAlignment.start] указать то как будут располагаться элементы относительно друг друга
  /// По главное оси
  /// По противоположной оси можно через [crossAxisAlignment]
  ///
  ///[Row] Располагает элементы друг за другой
  /// Имеет возможность через [mainAxisAlignment: MainAxisAlignment.start] указать то как будут располагаться элементы относительно друг друга
  /// По главное оси
  /// По противоположной оси можно через [crossAxisAlignment]
  ///
  /// [Container] как [div] в html, можно сделать его каким угодно
  ///
  /// [SizedBox] используется для установки расстояния между чем либо
  ///
  /// [Text] просто текст
  ///
  /// [Expanded] заставляет своих детей принять максимально возможный размер
  /// Можно использовать только в [Row] и [Column]

  /// Главный метод виджета, то что он возвращает и есть ваш "View" который будет видеть пользователь
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Аппбар приложения'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
