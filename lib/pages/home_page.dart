import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_using_go_router_named_route/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MAterial App Bar"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Home Page"),
            ElevatedButton(
              onPressed: () => context.goNamed(RouteNames.SECOND_PAGE,
                  params: {"name": "Abu Sayem"}),
              child: const Text("second Page"),
            ),
          ],
        ),
      ),
    );
  }
}

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("MAterial App Bar"),
//       ),
//       body: Container(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text("Home Page"),
//             ElevatedButton(
//               onPressed: () => context.go('/secondPage'),
//               child: Text("second Page"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
