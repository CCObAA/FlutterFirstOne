# Практическая работа №1

A new Flutter project.

## Работа с версткой

Ход работы:

Макеты которые необходимо сверстать

<img src="lib\picture\ReadMe\Screenshot_1.png">
Был сделан фон с помощью backgroundColor так же здесь для текста задавались цвета и размер шрифта Text("medinow", style: TextStyle(fontSize: 30, color: Colors.white)). Использовались кнопки ElevatedButton для которых задавались такие стили или похожие style: ElevatedButton.styleFrom(shape: StadiumBorder(), minimumSize: Size(269, 50), primary: Colors.white). Для перемещения, объектов которые не перемещаются при помощи margin или padding для начала оборачивали эти объекты в Container и уже потом использовали margin или padding. Для добавления картинок использовались Image.asset("lib/picture/FirstWindow/firstwindow(1).png", width: 350, height: 250,), а картинки мы брали из папки в проекте и так же добавляли в pubspec.yaml в assets наши адреса до картинок.
В следующих макетах использовалось все то же что и в первом, во втором и третьем макете использовались еще Column и row более часто, а также очень часто использовался Stack для наложения объектов друг на друга.

<img src="lib\picture\ReadMe\Screenshot_2.png">
<img src="lib\picture\ReadMe\Screenshot_3.png">
<img src="lib\picture\ReadMe\Screenshot_4.png">

В итоге все вышло, но конечно не супер)
