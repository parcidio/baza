import '../../../utils/constants/enums.dart';

class AppPricingCalculator {
  // Calculate price based on tax and transportation
  static double calculateTotalPrice(
      double prodctPrice, String location, ProductType productType) {
    double taxRate = getTaxRateForProductType(productType);
    double taxAmount = prodctPrice * taxRate;

    double shippingCost = getShippingCost(prodctPrice, location);

    double totalPrice = prodctPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate shipping cost
  static String calculateShippingCost(double poductPice, String location) {
    double shippingCost = getShippingCost(poductPice, location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax
  static String calculateTax(double prodctPrice, ProductType productType) {
    double taxRate = getTaxRateForProductType(productType);
    double taxAmount = prodctPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForProductType(ProductType? productType) {
    // different countries will have different tax rate for product
    //VAT in Angola
    double tax;
    switch (productType) {
      case ProductType.food:
        tax = 0.14;
        break;
      case ProductType.clothes:
        tax = 0.14;
        break;
      case ProductType.drink:
        tax = 0.14;
        break;
      case ProductType.services:
        tax = 0.14;
        break;
      case ProductType.electronic:
        tax = 0.14;
        break;
      default:
        tax = 0.14;
    }

    return tax;
  }

  static double getShippingCost(double procutPrice, String location) {
    double charges;
    switch (location) {
      case "Luanda sul":
        charges = 0.07;
        break;
      case "Luanda norte":
        charges = 0.07;
        break;
      case "Luanda este":
        charges = 0.07;
        break;
      case "Luanda weste":
        charges = 0.07;
        break;
      case "Luanda centro":
        charges = 0.05;
        break;
      case "Ilha":
        charges = 0.05;
        break;
      case "Kilamba":
        charges = 0.07;
        break;
      case "Viana":
        charges = 0.06;
        break;
      case "Bengo":
        charges = 0.10;
        break;
      default:
        charges = 0.5;
    }
    return procutPrice + (procutPrice * charges);
  }

  // Total amount of the items in the carts
}
