import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_using_go_router_named_route/route_manager.dart';

class SecondPage extends StatelessWidget {
  final String name;
  const SecondPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Second pae param vaue:$name"),
            const Text("Second Page"),
            ElevatedButton(
                //one way
                // onPressed: () => context.go('/thirdPage'),
                //allternative
                onPressed: () =>
                    GoRouter.of(context).goNamed(RouteNames.THIRD_PAGE),
                child: const Text("Go tho third page"))
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
//         title: Text("Second Page"),
//       ),
//       body: Container(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text("Second Page"),
//             ElevatedButton(
//                 //one way
//                 // onPressed: () => context.go('/thirdPage'),
//                 //allternative
//                 onPressed: () => GoRouter.of(context).go('/fouthPage'),
//                 child: const Text("Go tho third page"))
//           ],
//         ),
//       ),
//     );
//   }