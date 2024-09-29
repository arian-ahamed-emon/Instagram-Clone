import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/screens/inst_massanger_screen.dart';
import 'package:instagram_clone/ui/screens/notification_screen.dart';

class InstAppBar extends StatelessWidget implements PreferredSizeWidget {
  const InstAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Row(
        children: [
          SizedBox(
            width: 8,
          ),
          Text(
            'Instagram',
            style: TextStyle(fontFamily: 'LobsterTwo'),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ));
            },
            icon: Image.asset(
              'assets/icons/love-icon.png',
              color: Colors.white,
              height: 30,
            )),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InstMassangerScreen(),
                  ));
            },
            icon: Image.asset(
              'assets/icons/massenger-icon.png',
              color: Colors.white,
              height: 30,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
