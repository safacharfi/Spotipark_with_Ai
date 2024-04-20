import 'dart:convert';

import 'package:flutter/services.dart';
import '../model/credit_card_model.dart';
import '../model/pocket_model.dart';
import '../model/saving_target_model.dart';
import '../model/transaction_model.dart';

class Repository {
  Future<List<SavingTargetModel>> getSavingTarget() async {
    final jsonString =
        await rootBundle.loadString('images/saving_target_dummy.json');
    final jsonData = jsonDecode(jsonString);
    final List<SavingTargetModel> savingTargets = [];

    for (var item in jsonData) {
      final savingTarget = SavingTargetModel.fromJson(item);
      savingTargets.add(savingTarget);
    }

    return savingTargets;
  }

  Future<List<TransactionModel>> getTransaction() async {
    final jsonString =
        await rootBundle.loadString('images/transaction_dummy.json');
    final jsonData = jsonDecode(jsonString);
    final List<TransactionModel> transactions = [];

    for (var item in jsonData) {
      final transaction = TransactionModel.fromJson(item);
      transactions.add(transaction);
    }

    return transactions;
  }

  Future<List<CreditCardModel>> getCreditCard() async {
    final jsonString =
        await rootBundle.loadString('images/credit_card_dummy.json');
    final jsonData = jsonDecode(jsonString);
    final List<CreditCardModel> creditCards = [];

    for (var item in jsonData) {
      final creditCard = CreditCardModel.fromJson(item);
      creditCards.add(creditCard);
    }

    return creditCards;
  }

  Future<List<PocketModel>> getPocket() async {
    final jsonString =
        await rootBundle.loadString('images/pocket_dummy.json');
    final jsonData = jsonDecode(jsonString);
    final List<PocketModel> pockets = [];

    for (var item in jsonData) {
      final pocket = PocketModel.fromJson(item);
      pockets.add(pocket);
    }

    return pockets;
  }
}