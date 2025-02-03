import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool _isCategoriesExpanded = false;
  String? _drawerImageUrl;

  @override
  void initState() {
    super.initState();
    _loadHeaderImage();
  }

  Future<void> _loadHeaderImage() async {
    try {
      String imageUrl = await FirebaseStorage.instance
          .ref('images/cookie.jpg')
          .getDownloadURL();
      if (mounted) {
        setState(() {
          _drawerImageUrl = imageUrl;
        });
      }
    } catch (e) {
      print('Error fetching image: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              image: _drawerImageUrl != null
                  ? DecorationImage(
                      image: NetworkImage(_drawerImageUrl!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: _drawerImageUrl == null
                ? Center(
                    child:
                        CircularProgressIndicator()) // Show loading indicator if image is not yet loaded
                : const Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.category),
            title: Text('Categories'),
            trailing: Icon(
              _isCategoriesExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
            ),
            onExpansionChanged: (bool expanded) {
              setState(() => _isCategoriesExpanded = expanded);
            },
            children: <Widget>[
              ListTile(
                title: Text('Classic Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/classic');
                },
              ),
              ListTile(
                title: Text('Chocolate Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/chocolate');
                },
              ),
              ListTile(
                title: Text('Oatmeal Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/oatmeal');
                },
              ),
              ListTile(
                title: Text('Almond Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/almond');
                },
              ),
              ListTile(
                title: Text('Cinnamon Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/cinnamon');
                },
              ),
              ListTile(
                title: Text('Oats Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/oats');
                },
              ),
              ListTile(
                title: Text('Date Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/date');
                },
              ),
              ListTile(
                title: Text('Nutella Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/nutella');
                },
              ),
              ListTile(
                title: Text('Tahina with Pistachio Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/tahina');
                },
              ),
              ListTile(
                title: Text('Mini Cookies'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/mini');
                },
              ),
              ListTile(
                title: Text('CookieCake'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/cookiecake');
                },
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Ratings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/ratings');
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/feedback');
            },
          ),
        ],
      ),
    );
  }
}
