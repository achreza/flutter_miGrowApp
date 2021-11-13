import 'package:flutter/cupertino.dart';

class PostModel {
  String nama;
  String kategori;
  String tempat;
  String persen;
  String deskripsi;
  Image image;

  PostModel(
      {required this.nama,
      required this.kategori,
      required this.tempat,
      required this.persen,
      required this.deskripsi,
      required this.image});
}

var postList = [
  PostModel(
      image: Image.network(
          "https://asset.kompas.com/crops/ScXltG26qzSypU8o2xMryodhDnM=/0x0:1000x667/750x500/data/photo/2020/01/29/5e30e9bc69af5.jpg"),
      nama: "Coklat Tempe deKonco",
      tempat: "Kota Batu, Malang",
      kategori: "Makanan",
      persen: "0.66",
      deskripsi: "UMKM yang digagas oleh para warga desa Sooko sebagai sumber penghasilan tambahan untuk mensejahterakan warga desa Sooko.UMKM ini berbentuk kerajinan vas bunga dengan motif dan bentukyang beragam, serta dengan harga yang terjangkau.",

      ),
  PostModel(
      image: Image.network(
          "https://asset.kompas.com/crops/ScXltG26qzSypU8o2xMryodhDnM=/0x0:1000x667/750x500/data/photo/2020/01/29/5e30e9bc69af5.jpg"),
      nama: "Vas Bunga Uniko",
      tempat: "Sooko Mojokerto",
      kategori: "Kerajinan",
      persen: "0.08",
      deskripsi: "UMKM yang digagas oleh para warga desa Sooko sebagai sumber penghasilan tambahan untuk mensejahterakan warga desa Sooko.UMKM ini berbentuk kerajinan vas bunga dengan motif dan bentukyang beragam, serta dengan harga yang terjangkau.",
      
      ),
];
