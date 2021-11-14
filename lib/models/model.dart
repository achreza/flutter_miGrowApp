import 'package:flutter/cupertino.dart';

class PostModel {
  String nama;
  String kategori;
  String tempat;
  String persen;
  String deskripsi;
  Image image;
  String tanggal;
  List<String> imageUrls;

  PostModel(
      {required this.nama,
      required this.imageUrls,
      required this.tanggal,
      required this.kategori,
      required this.tempat,
      required this.persen,
      required this.deskripsi,
      required this.image});
}

var postList = [
  PostModel(
      image: Image.network(
          "https://cf.shopee.co.id/file/8d283fe6a8cbbac249ac2497a21d0257"),
      nama: "Coklat Tempe deKonco",
      tempat: "Kota Batu, Malang",
      kategori: "Makanan",
      persen: "0.66",
      tanggal: '2019',
      deskripsi: "UMKM yang digagas oleh para warga desa Sooko sebagai sumber penghasilan tambahan untuk mensejahterakan warga desa Sooko.UMKM ini berbentuk kerajinan vas bunga dengan motif dan bentukyang beragam, serta dengan harga yang terjangkau.",
      imageUrls: [
        'https://cf.shopee.co.id/file/8d283fe6a8cbbac249ac2497a21d0257',
        'http://api.omiyago.com/webroot/img/p/3/0/9/6/3096.jpg',
        'https://images.tokopedia.net/img/cache/250-square/product-1/2017/12/23/2518268/2518268_6918d781-c96e-40c0-8a79-9738ba0d482d'
      ]

      ),
  PostModel(
      image: Image.network(
          "https://asset.kompas.com/crops/ScXltG26qzSypU8o2xMryodhDnM=/0x0:1000x667/750x500/data/photo/2020/01/29/5e30e9bc69af5.jpg"),
      nama: "Vas Bunga Uniko",
      tempat: "Sooko Mojokerto",
      kategori: "Kerajinan",
      persen: "0.08",
      tanggal: '2019',
      deskripsi: "UMKM yang digagas oleh para warga desa Sooko sebagai sumber penghasilan tambahan untuk mensejahterakan warga desa Sooko.UMKM ini berbentuk kerajinan vas bunga dengan motif dan bentukyang beragam, serta dengan harga yang terjangkau.",
      imageUrls: [
        'https://p-id.ipricegroup.com/uploaded_ddbe098eae83b4c86f57cdc098d9ae70.jpg',
        'https://p-id.ipricegroup.com/uploaded_3b66a0a7585645069b464a5df03a6165.jpg',
        'https://p-id.ipricegroup.com/uploaded_4927fe5c9d7d048e07821233c203da91.jpg'
      ]
      ),
];
