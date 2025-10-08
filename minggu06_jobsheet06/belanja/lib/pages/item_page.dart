import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    
    return Scaffold(
      appBar: AppBar(title: Text(itemArgs.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                // child: Image.network(itemArgs.photo, height: 200),
                child: Image.asset(
                  itemArgs.photo,
                  fit: BoxFit.cover,
                  width: 600,
                  height: 240,
                ),
              ),
              SizedBox(height: 20),
              Text(
                itemArgs.name, 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent)
                ),
              Text(
                'Harga: Rp ${itemArgs.price}', 
                style: TextStyle(fontSize: 18)
                ),
              Text(
                'Stok: ${itemArgs.stock}', 
                style: TextStyle(fontSize: 18)
                ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 4),
                  Text('${itemArgs.rating}', style: TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'Deskripsi Produk:',
                style: TextStyle(fontSize: 18)
              ),

              const SizedBox(height: 4),
              Text(
                itemArgs.description,
                style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.4)
              ),

              const SizedBox(height: 20),
              Center(
                child: Text(
                  '© 2025 Rizkya Salsabila | 2341720056',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}