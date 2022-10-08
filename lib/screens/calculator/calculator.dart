class Calculator {
  static int _carTax = 0;

  static int grobgrab({required int km, required int passenger}) {
    double tax1 = 0;

    if (km < 1) {
      tax1 = tax1 + 35;
    } else if (km >= 1  &&km <= 10) {
      tax1 = km * 7;
    } else if (km > 10  &&km <= 20) {
      tax1 = km * 6;
    } else if (km > 20  &&km <= 30) {
      tax1 = km * 5;
    } else if (km > 30  &&km <= 100) {
      tax1 = km * 4;
    }

    double passengerPrice = 0;
    if (passenger == 2) {
      passengerPrice += 10;
    } else if (passenger == 3) {
      passengerPrice += 30;
    } else if (passenger == 4) {
      passengerPrice += 30;
    }
    _carTax = (tax1 + passengerPrice).toInt();
    return _carTax;
  }

  static int uberry({required int km, required int passenger}) {
    double tax1 = 0;

    if (km < 1) {
      tax1 = tax1 + 35;
    } else if (km >= 1  &&km <= 10) {
      tax1 = km * 7;
    } else if (km > 10  &&km <= 20) {
      tax1 = km * 6;
    } else if (km > 20  &&km <= 30) {
      tax1 = km * 5;
    } else if (km > 30  &&km <= 100) {
      tax1 = km * 4;
    }
    double passengerPrice = 1;
    if (passenger == 1) {
      passengerPrice = 1;
    } else if (passenger == 2) {
      passengerPrice = 2;
    } 
    _carTax = (tax1 * passengerPrice).toInt();
    return _carTax;
  }
}
