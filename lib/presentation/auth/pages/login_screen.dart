// import 'package:flutter/material.dart';
// import 'package:pos_flutter/core/theme/app_pallete.dart';
// import 'package:pos_flutter/presentation/auth/pages/signup_screen.dart';
// import 'package:pos_flutter/presentation/auth/widgets/auth_field.dart';
// import 'package:pos_flutter/presentation/auth/widgets/auth_gradient_button.dart';

// class LoginScreen extends StatefulWidget {
//   static route() => MaterialPageRoute(
//         builder: (context) => const LoginScreen(),
//       );
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(
//           16,
//         ),
//         child: Form(
//           key: formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 'Login In.',
//                 style: TextStyle(
//                   fontFamily: 'SpaceGrotesk',
//                   fontSize: 50,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               AuthField(
//                 hintText: 'Email',
//                 controller: emailController,
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               AuthField(
//                 hintText: 'Password',
//                 controller: passwordController,
//                 isObsecureText: true,
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               AuthGradientButton(
//                 buttonText: 'Login',
//                 onPresssed: () {},
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     SignupScreen.route(),
//                   );
//                 },
//                 child: RichText(
//                   text: TextSpan(
//                       text: 'Don\'t have a account? ',
//                       style: Theme.of(context).textTheme.titleMedium,
//                       children: [
//                         TextSpan(
//                           text: 'Sign Up',
//                           style:
//                               Theme.of(context).textTheme.titleMedium?.copyWith(
//                                     color: AppPallete.gradient2,
//                                     fontFamily: 'SpaceGrotesk',
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                         )
//                       ]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';
import 'package:pos_flutter/domain/auth/usecases/login.dart';
import 'package:pos_flutter/presentation/auth/loginbloc/login_bloc.dart';
import 'package:pos_flutter/presentation/auth/pages/signup_screen.dart';
import 'package:pos_flutter/presentation/auth/widgets/auth_field.dart';
import 'package:pos_flutter/presentation/auth/widgets/auth_gradient_button.dart';
import 'package:pos_flutter/serviceLocator.dart';

class LoginScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void _onLoginPressed(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<LoginBloc>().add(LoginSubmitted(
            email: emailController.text,
            password: passwordController.text,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(login: sl<Login>()),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Login Successful!")),
                );
                // Navigate to the next screen
              } else if (state is LoginError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.errorMessage)),
                );
              }
            },
            builder: (context, state) {
              return Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Login In.',
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    AuthField(
                      hintText: 'Email',
                      controller: emailController,
                    ),
                    const SizedBox(height: 15),
                    AuthField(
                      hintText: 'Password',
                      controller: passwordController,
                      isObsecureText: true,
                    ),
                    const SizedBox(height: 30),
                    if (state is LoginLoading)
                      const CircularProgressIndicator()
                    else
                      AuthGradientButton(
                        buttonText: 'Login',
                        onPresssed: () => _onLoginPressed(context),
                      ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, SignupScreen.route());
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account? ',
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: AppPallete.gradient2,
                                    fontFamily: 'SpaceGrotesk',
                                    fontWeight: FontWeight.bold,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
