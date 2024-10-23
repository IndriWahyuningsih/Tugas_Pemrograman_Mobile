class Pasien {
  String nama;
  int usia;

  Pasien(this.nama, this.usia);

  void hitungBMI(double berat, double tinggi, String gender) {
    double bmi = berat / (tinggi * tinggi);

    print("Nama Pasien : $nama");
    print("Usie : $usia tahun");
    print("Gender : $gender");
    print("BMI : ${bmi.toStringAsFixed(2)}");
//{bmi.toStringAsFixed(2)}

    if (bmi < 18.5) {
      print("Status : Berat badan kurang");
    } else if (bmi >= 18.5 && bmi < 24.9) {
      print("Status : Berat badan normal");
    } else if (bmi >= 25 && bmi < 29.9) {
      print("Status : Berat badan berlebih");
    } else {
      print("Status : Obesitas");
    }
  }

  void cetakInfo(
      String riwayatPenyakit, double tekananDarah, String golonganDarah) {
    print("INFORMASI KESEHATAN PASIEN");
    print("Nama : $nama");
    print("Usia : $usia");
    print("Riwayat Penyakit : $riwayatPenyakit");
    print("Tekanan Darah : $tekananDarah");
    print("Golongan Darah $golonganDarah");
  }
}

void main() {
  Pasien pasien1 = Pasien("Indri", 20);

  pasien1.hitungBMI(48, 1.59, "Perempuan");

  pasien1.cetakInfo("Sehat Alhamdulillah", 80, "B");
}
