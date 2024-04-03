// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_base_with_socket/core/socket/realtime_management.dart';
import 'package:new_base_with_socket/generated/l10n.dart';
import 'package:new_base_with_socket/theme/utils.dart';
import 'package:num_to_word_en_vi/num_to_word_en_vi.dart';

class HomeArg {
  final String? id;
  final String? name;
  HomeArg({
    this.id,
    this.name,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.homeArg});
  final HomeArg? homeArg;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.addObserver(this);
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      RealtimeManagement.instance.addListIndex(
          ["VNINDEX", "VN30", "HNXIndex", "HNX30", "HNXUpcomIndex"]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          ILanguage.current.home,
          textAlign: TextAlign.center,
          style: ThemeUtils.textStyle.bodyText,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        color: ThemeUtils.color.bgPrimary,
        child: Column(
          children: [
            Text("Welcome, ${widget.homeArg?.name}",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ThemeUtils.color.red))
          ],
        ),
      ),
    );
  }
}
