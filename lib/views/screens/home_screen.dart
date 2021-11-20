import 'package:festifora/utils/constants.dart';
import 'package:festifora/views/components/item_detail_pinjaman.dart';
import 'package:festifora/views/components/tombol.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nama = "";
  String phone = "";
  String money = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "Pinjol 4.0",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 50,
                    height: 50,
                    color: Colors.yellow,
                    child: Text(
                      index.toString(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: (Constant.instance.isIPad) ? 150 : 100,
              child: Image.asset("assets/images/naruto.png"),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.pinkAccent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (v) {
                  nama = v;
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Isi nama kamu",
                  labelText: "Nama",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.pinkAccent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (v) {
                  phone = v;
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "085XXXXXXXXX",
                  labelText: "No Telp",
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.pinkAccent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (v) {
                  money = v;
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "9000000",
                  labelText: "Jumlah Uang",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Tombol(
              color: Colors.green[400],
              title: "Simpan",
              function: () {
                setState(() {});
              },
            ),
            Tombol(
              color: Colors.red[400],
              title: "Hapus",
              function: () {
                setState(() {
                  nama = "-";
                  phone = "-";
                  money = "-";
                });
              },
            ),
            ItemDetailPinjaman(
              icon: Icons.person,
              detail: "Nama Lengkap: ",
              value: nama,
            ),
            ItemDetailPinjaman(
              icon: Icons.phone,
              detail: "No Telp: ",
              value: phone,
            ),
            ItemDetailPinjaman(
              icon: Icons.money,
              detail: "Jumlah pinjaman: Rp ",
              value: money,
            ),
          ],
        ),
      ),
    );
  }
}
