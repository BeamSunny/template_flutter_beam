import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_flutter_beam/component/shared/app_top_bar.dart';
import 'package:template_flutter_beam/component/shared/footer.dart';
import 'package:template_flutter_beam/component/shared/sidebar.dart';
import 'package:template_flutter_beam/models/other.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    var currentRoute = GoRouterState.of(context).path;

    List<FindPath> pathList = [
      FindPath(pathname: '/', heading: 'Demo', description: 'ตัวอย่าง')
    ];

    final findPathList =
        pathList.firstWhere((item) => item.pathname == currentRoute);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(100.0), // here the desired height
          child: AppTopBar(
            title: findPathList.heading,
            description: "${findPathList.description}",
          )),
      drawer: const SideBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: child,
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
