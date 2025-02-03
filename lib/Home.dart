import 'package:flutter/material.dart';
import 'package:cookie_and_cake/drawer.dart';

// Define the WelcomeBanner widget
class WelcomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://your-image-url.com/banner.jpg'), // Replace with your banner URL
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          color: Colors.black
              .withOpacity(0.5), // Black overlay for text visibility
        ),
        Positioned(
          left: 20,
          top: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to cookieCake!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add navigation to product page
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));
                },
                child: const Text('Shop Now'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Define the HomePage widget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cookieCake Home'),
      ),
      drawer: MainDrawer(), // Add your drawer widget for navigation
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeBanner(), // Display your banner on the home page
            const SizedBox(height: 20), // Add space between sections
            // You can add more sections here like featured cookies, categories, etc.
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Featured Cookies',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Example of featured cookies section
            Container(
              height: 200, // Set height for the section
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    5, // Replace with the actual number of featured items
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.amber, // Placeholder for cookie image
                    child: Center(
                      child: Text(
                        'Cookie $index',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
