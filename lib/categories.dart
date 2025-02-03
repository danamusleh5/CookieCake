import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView(
        children: <Widget>[
          CategoryTile(
            categoryName: 'Classic Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Classic Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Chocolate Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Chocolate Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Oatmeal Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Oatmeal Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Almond Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Almond Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Cinnamon Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Cinnamon Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Oats Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Oats Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Date Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Date Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Nutella Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Nutella Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Tahina with Pistachio Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryDetailPage(
                      categoryName: 'Tahina with Pistachio Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Mini Cookies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'Mini Cookies'),
                ),
              );
            },
          ),
          CategoryTile(
            categoryName: 'CookieCake',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryName: 'CookieCake'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String categoryName;
  final VoidCallback onTap;

  CategoryTile({required this.categoryName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(categoryName),
      onTap: onTap,
    );
  }
}

class CategoryDetailPage extends StatelessWidget {
  final String categoryName;

  CategoryDetailPage({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Center(
        child: Text('Details for $categoryName category'),
      ),
    );
  }
}
