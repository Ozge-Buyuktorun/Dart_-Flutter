main(List<String> args) {
  Kisi emre = Kisi("emre", 34); //nesne oluşturmak.
  emre.kendiniTanit();

  Calisan hasan = Calisan("hasan", 30, 3000);
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;
  Kisi(this.isim, this.yas);
  void kendiniTanit() {
    print("Benim adım $isim ve yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;

  Calisan(String name, int age, this.maas) : super(name, age); //super üst sınıfa name ve age'i götürecek.

  @override // üst sınıftaki ifade yetersiz gelirse aşağıdaki çalışır. üstteki kendiniTanıt() fonk. ezdi.
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım da $maas");
  }
}
