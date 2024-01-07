import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'product_detail_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  List<dynamic> products = [];
  String error = '';
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 1, vsync: this);
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final Uri url = Uri.parse('https://82130348project2.000webhostapp.com/getFashionProducts.php');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(response.body);
        } // Debugging: Print API response
        setState(() {
          products = json.decode(response.body);
        });
      } else {
        throw Exception('Failed to load data - ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        error = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muse App'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Products'),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 1,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Step into styles world!',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Explore the latest trends and fashion',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                      if (error.isNotEmpty)
                        Center(
                          child: Text(
                            error,
                            style: const TextStyle(color: Colors.red),
                          ),
                        )
                      else
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 3,
                              margin:
                              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              child: ListTile(
                                title: Text(
                                  products[index]['name'],
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(color: Colors.black),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Category: ${products[index]['category']}',
                                      style: Theme.of(context).textTheme.titleMedium,
                                    ),
                                    Text(
                                      'Price: \$${products[index]['price']}',
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                                leading: Image.network(
                                  products[index]['photo_url'] ?? '',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ProductDetailPage(product: products[index]),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'To visit our website:',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 35,
                              width: 150,
                              child: ElevatedButton(
                                onPressed: () {
                                  launch('https://musearabia.net');
                                },
                                child: const Text('Visit Website'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
