import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Gulaku Premium Gula Pasir 1kg',
      price: 15000,
      photo: 'assets/images/gula.jpg',
      stock: 25,
      rating: 4.8,
      description:
          'Gulaku Premium Gula Pasir 1kg adalah gula pasir berkualitas tinggi yang dihasilkan dari tebu pilihan. Dengan kemurnian yang terjaga, gula ini memberikan rasa manis alami yang sempurna untuk berbagai kebutuhan memasak dan minuman Anda.',
    ),
    Item(
      name: 'Sania Beras Premium 5kg',
      price: 72000,
      photo: 'assets/images/beras.jpg',
      stock: 40,
      rating: 4.9,
      description:
          'Sania Beras Premium 5kg adalah beras berkualitas tinggi yang dipilih secara selektif untuk memberikan cita rasa dan tekstur terbaik. Cocok untuk berbagai hidangan, beras ini akan membuat setiap sajian menjadi lebih istimewa.',
    ),
    Item(
      name: 'Tropical Minyak Goreng 2L',
      price: 39000,
      photo: 'assets/images/minyak_goreng.jpg',
      stock: 12,
      rating: 4.7,
      description:
          'Minyak goreng Tropical terbuat dari kelapa sawit pilihan yang mengandung vitamin A dan D. Dapat digunakan untuk menggoreng berbagai masakan agar renyah dan lezat.',
    ),
    Item(
      name: '[5 pcs] Katak Bali Garam Halus 250g',
      price: 9000,
      photo: 'assets/images/garam.jpg',
      stock: 50,
      rating: 4.7,
      description:
          'Garam Halus Katak Bali adalah garam berkualitas tinggi yang dihasilkan dari proses penguapan air laut alami. Dengan tekstur halus, garam ini mudah larut dan memberikan rasa gurih yang sempurna untuk berbagai masakan Anda.',
    ),
    Item(
      name: 'Refill Bango Kecap Manis 600ml',
      price: 16000,
      photo: 'assets/images/kecap.jpg',
      stock: 30,
      rating: 4.9,
      description:
          'Kecap Manis Bango adalah kecap manis berkualitas tinggi yang terbuat dari kedelai pilihan dan gula asli. Dengan rasa manis yang khas, kecap ini cocok untuk menambah cita rasa pada berbagai hidangan tradisional Indonesia.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Belanja')),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                shadowColor: Colors.grey.shade200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.asset(
                          item.photo,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Rp ${NumberFormat('#,###').format(item.price)}",
                            style: TextStyle(
                              color: Colors.green[700],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Stok: ${item.stock}",
                            style: const TextStyle(fontSize: 13),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.orange, size: 16),
                              const SizedBox(width: 4),
                              Text(
                                item.rating.toString(),
                                style: const TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}