import 'package:flutter/material.dart';

void main() {
  runApp(const ShoppingUIApp());
}

class ShoppingUIApp extends StatelessWidget {
  const ShoppingUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      home: const ShoppingHomePage(),
    );
  }
}

class ShoppingHomePage extends StatefulWidget {
  const ShoppingHomePage({super.key});

  @override
  State<ShoppingHomePage> createState() => _ShoppingHomePageState();
}

class _ShoppingHomePageState extends State<ShoppingHomePage> {
  // Sample product data - 25 products (5 rows × 5 columns)
  late List<Product> products;

  @override
  void initState() {
    super.initState();
    products = [
      Product(
        id: '1',
        name: 'Headphones',
        price: 89.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Headphones',
        isNew: true,
      ),
      Product(
        id: '2',
        name: 'Smart Watch',
        price: 199.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Watch',
        isNew: true,
      ),
      Product(
        id: '3',
        name: 'Running Shoes',
        price: 129.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Shoes',
        isNew: false,
      ),
      Product(
        id: '4',
        name: 'Laptop Stand',
        price: 49.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Stand',
        isNew: true,
      ),
      Product(
        id: '5',
        name: 'BT Speaker',
        price: 79.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Speaker',
        isNew: false,
      ),
      Product(
        id: '6',
        name: 'Phone Case',
        price: 24.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Case',
        isNew: true,
      ),
      Product(
        id: '7',
        name: 'USB Cable',
        price: 14.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Cable',
        isNew: false,
      ),
      Product(
        id: '8',
        name: 'Mouse',
        price: 34.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Mouse',
        isNew: true,
      ),
      Product(
        id: '9',
        name: 'USB Hub',
        price: 29.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Hub',
        isNew: true,
      ),
      Product(
        id: '10',
        name: 'Protector',
        price: 12.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Protector',
        isNew: false,
      ),
      Product(
        id: '11',
        name: 'Charge Pad',
        price: 44.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Pad',
        isNew: true,
      ),
      Product(
        id: '12',
        name: 'Stand',
        price: 19.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Stand',
        isNew: false,
      ),
      Product(
        id: '13',
        name: 'Power Bank',
        price: 39.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Bank',
        isNew: true,
      ),
      Product(
        id: '14',
        name: 'Cleaner',
        price: 9.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Cleaner',
        isNew: false,
      ),
      Product(
        id: '15',
        name: 'Keyboard',
        price: 69.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Keyboard',
        isNew: true,
      ),
      Product(
        id: '16',
        name: 'Monitor Arm',
        price: 54.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Arm',
        isNew: false,
      ),
      Product(
        id: '17',
        name: 'Webcam',
        price: 89.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Webcam',
        isNew: true,
      ),
      Product(
        id: '18',
        name: 'Microphone',
        price: 99.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Mic',
        isNew: true,
      ),
      Product(
        id: '19',
        name: 'Organizer',
        price: 15.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Organizer',
        isNew: false,
      ),
      Product(
        id: '20',
        name: 'Desk Lamp',
        price: 59.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Lamp',
        isNew: true,
      ),
      Product(
        id: '21',
        name: 'Mouse Pad',
        price: 19.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Pad',
        isNew: false,
      ),
      Product(
        id: '22',
        name: 'Laptop Bag',
        price: 74.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Bag',
        isNew: true,
      ),
      Product(
        id: '23',
        name: 'Charger',
        price: 24.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Charger',
        isNew: false,
      ),
      Product(
        id: '24',
        name: 'Filter',
        price: 34.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Filter',
        isNew: true,
      ),
      Product(
        id: '25',
        name: 'Device Stand',
        price: 29.99,
        imageUrl: 'https://via.placeholder.com/150/009688/FFFFFF?text=Device',
        isNew: false,
      ),
    ];
  }

  // Sample categories
  final List<Category> categories = [
    Category(name: 'Electronics', icon: Icons.devices, color: Colors.blue),
    Category(name: 'Fashion', icon: Icons.checkroom, color: Colors.pink),
    Category(name: 'Shoes', icon: Icons.shopping_bag, color: Colors.orange),
    Category(name: 'Beauty', icon: Icons.face, color: Colors.purple),
    Category(name: 'Sports', icon: Icons.sports_soccer, color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar with gradient background
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Shopping UI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.teal.shade700,
                      Colors.teal.shade400,
                      Colors.cyan.shade300,
                    ],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 80,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
            ],
          ),

          // SliverSafeArea wrapper for category section
          SliverSafeArea(
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Horizontal ListView with category Cards
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final category = categories[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Card(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                width: 100,
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      category.icon,
                                      size: 28,
                                      color: category.color,
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      category.name,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Featured Products',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // SliverGrid with 5 columns and Dismissible product cards
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final product = products[index];
                return Dismissible(
                  key: Key(product.id),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 12),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      products.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${product.name} removed'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Stack for image with NEW badge
                            Expanded(
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(12),
                                    ),
                                    child: Image.network(
                                      product.imageUrl,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Container(
                                          color: Colors.teal.shade100,
                                          child: const Icon(
                                            Icons.image,
                                            size: 24,
                                            color: Colors.teal,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  // NEW badge overlay
                                  if (product.isNew)
                                    Positioned(
                                      top: 4,
                                      right: 4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: const Text(
                                          'NEW',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            // Product info section
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    product.name,
                                    style: const TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$${product.price.toStringAsFixed(0)}',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal.shade700,
                                        ),
                                      ),
                                      Icon(
                                        Icons.add_shopping_cart,
                                        size: 12,
                                        color: Colors.teal.shade600,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: products.length,
            ),
          ),

          // Additional spacing at bottom
          const SliverPadding(
            padding: EdgeInsets.only(bottom: 16),
          ),
        ],
      ),
    );
  }
}

// Product model
class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final bool isNew;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isNew,
  });
}

// Category model
class Category {
  final String name;
  final IconData icon;
  final Color color;

  Category({
    required this.name,
    required this.icon,
    required this.color,
  });
}
