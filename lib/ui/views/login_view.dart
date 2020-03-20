import 'package:flutter/material.dart';
import 'package:flutter_provider_arch/ui/shared/app_colors.dart';
 
class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(child: Text('Login View')));
  }
}



// @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<LoginViewModel>.value(
//       value: LoginViewModel(authenticationService: Provider.of(context)),
//       child: Consumer<LoginViewModel>(
//         builder: (context, model, child) => Scaffold(
//             backgroundColor: backgroundColor,
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 LoginHeader(controller: _controller),
//                 model.busy
//                     ? CircularProgressIndicator()
//                     : FlatButton(
//                         color: Colors.white,
//                         child: Text(
//                           'Login',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         onPressed: () {},
//                       )
//               ],
//             ),
//           ),
//       ),
//     );
//   }