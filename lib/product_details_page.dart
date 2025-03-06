import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, dynamic> products;
  const ProductDetailsPage({super.key, required this.products});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedsize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details"), centerTitle: true),
      body: Column(
        children: [
          Center(
            child: Text(
              widget.products["title"] as String,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(widget.products['imageUrl'] as String),
          ),
          const Spacer(flex: 2),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(216, 240, 253, 1),
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$${widget.products['price'] as double}",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (widget.products['sizes'] as List<int>).length,
                    itemBuilder: (context, index) {
                      final size =
                          (widget.products["sizes"] as List<int>)[index];

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedsize = size;
                            });
                          },
                          child: Chip(
                            label: Text(size.toString()),
                            backgroundColor:
                                selectedsize == size
                                    ? Theme.of(context).colorScheme.primary
                                    : null,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                //SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_checkout_outlined,
                      size: 32,
                      color: Colors.grey,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    label: Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
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
