import 'package:mybudget/models/reasons.dart';
import 'package:mybudget/views/debtpage.dart';
import 'package:mybudget/views/lostpage.dart';
import 'package:mybudget/views/overwhelmedpage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final reasonsProvider = Provider((ref) {
  return [
    Reasons("💳 Drowning in debt", DebtPage()),
    Reasons("😓 I'm overwhelmed", OverwhelmedPage()),
    Reasons("🥴 Don't know where my money goes", LostPage()),
    Reasons("💪 want to make the most out of my money", LostPage()),
  ];
});
