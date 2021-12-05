import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: ClipRect(
              child: Image.asset("assets/images/logo_quiz.png"),
            ),
          )),
      title: InkWell(
        child: Row(
          children: const [
            Text(
              "Hellow,",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
            Text(
              "chetan koli",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notification_important,
          ),
          color: Colors.black,
        ),
        PopupMenuButton<int>(
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          onSelected: (item) => handleClick(item),
          itemBuilder: (context) => [
            const PopupMenuItem<int>(value: 0, child: Text('Logout')),
            const PopupMenuItem<int>(value: 1, child: Text('Settings')),
          ],
        ),
      ],
    );
  }
}

handleClick(int item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
  }
}
