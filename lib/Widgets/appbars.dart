import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            backgroundColor: Colors.white,
            child: ClipRect(
              child: Image.asset("assets/images/logo_quiz.png"),
            ),
          )),
      title: Row(
        children: [
          Text(
            "Hello,",
            style: GoogleFonts.montserrat(
              color: Colors.grey,
              fontSize: 15.0,
            ),
          ),
          InkWell(
            child: Text(
              "chetan koli",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/editprofile');
            },
          ),
        ],
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

class CommenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: InkWell(
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        autofocus: true,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
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

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

class CommenAppBarForRules extends StatelessWidget
    implements PreferredSizeWidget {
  const CommenAppBarForRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white12,
      elevation: 0,
      title: Text(
        "Super15 Rules",
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
      leading: InkWell(
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        autofocus: true,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
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

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
