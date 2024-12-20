// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pos_flutter/core/theme/app_pallete.dart';
// import 'package:pos_flutter/presentation/auth/bloc/signup_bloc.dart';
// import 'package:pos_flutter/presentation/auth/bloc/signup_event.dart';
// import 'package:pos_flutter/presentation/auth/bloc/signup_state.dart';
// import 'package:pos_flutter/presentation/auth/pages/login_screen.dart';
// import 'package:pos_flutter/presentation/auth/widgets/auth_field.dart';
// import 'package:pos_flutter/presentation/auth/widgets/auth_gradient_button.dart';

// class SignupScreen extends StatefulWidget {
//   static route() => MaterialPageRoute(
//         builder: (context) => const SignupScreen(),
//       );
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final userNameController = TextEditingController();
//   final userEmailController = TextEditingController();
//   final userPasswordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();
//   final shopNameController = TextEditingController();
//   final shopAddressController = TextEditingController();
//   final formkey = GlobalKey<FormState>();

//   void _onSignupPressed(BuildContext context) {
//     if (formkey.currentState!.validate()) {
//       context.read<SignupBloc>().add(SignupSubmitted(
//             name: userNameController.text,
//             email: userEmailController.text,
//             password: userPasswordController.text,
//             confirmPassword: confirmPasswordController.text,
//             shopName: shopNameController.text,
//             shopAddress: shopAddressController.text,
//           ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => SignupBloc(),
//       child: Scaffold(
//         appBar: AppBar(),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: BlocConsumer<SignupBloc, SignupState>(
//             listener: (context, state) {
//               if (state is SignupSuccess) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("Signup Successful!")),
//                 );
//                 Navigator.push(context, LoginScreen.route());
//               } else if (state is SignupError) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text(state.errorMessage)),
//                 );
//               }
//             },
//             builder: (context, state) {
//               return Form(
//                 key: formkey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Sign Up.',
//                       style: TextStyle(
//                         fontFamily: 'SpaceGrotesk',
//                         fontSize: 50,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     AuthField(
//                       hintText: 'Name',
//                       controller: userNameController,
//                     ),
//                     const SizedBox(height: 15),
//                     AuthField(
//                       hintText: 'Email',
//                       controller: userEmailController,
//                     ),
//                     const SizedBox(height: 15),
//                     AuthField(
//                       hintText: 'Password',
//                       controller: userPasswordController,
//                       isObsecureText: true,
//                     ),
//                     const SizedBox(height: 15),
//                     AuthField(
//                       hintText: 'Confirm Password',
//                       controller: confirmPasswordController,
//                       isObsecureText: true,
//                     ),
//                     const SizedBox(height: 15),
//                     AuthField(
//                       hintText: 'Shop Name',
//                       controller: shopNameController,
//                     ),
//                     const SizedBox(height: 15),
//                     AuthField(
//                       hintText: 'Shop Address',
//                       controller: shopAddressController,
//                     ),
//                     const SizedBox(height: 30),
//                     if (state is SignupLoading)
//                       const CircularProgressIndicator()
//                     else
//                       AuthGradientButton(
//                         buttonText: 'Sign Up',
//                         onPresssed: () => _onSignupPressed(context),
//                       ),
//                     const SizedBox(height: 15),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(context, LoginScreen.route());
//                       },
//                       child: RichText(
//                         text: TextSpan(
//                           text: 'Already have an account? ',
//                           style: Theme.of(context).textTheme.titleMedium,
//                           children: [
//                             TextSpan(
//                               text: 'Sign In',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleMedium
//                                   ?.copyWith(
//                                     color: AppPallete.gradient2,
//                                     fontFamily: 'SpaceGrotesk',
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';
import 'package:pos_flutter/domain/auth/usecases/signup.dart';
import 'package:pos_flutter/presentation/auth/signupbloc/signup_bloc.dart';
import 'package:pos_flutter/presentation/auth/pages/login_screen.dart';
import 'package:pos_flutter/presentation/auth/widgets/auth_field.dart';
import 'package:pos_flutter/presentation/auth/widgets/auth_gradient_button.dart';
import 'package:pos_flutter/serviceLocator.dart';

class SignupScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignupScreen(),
      );
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final userNameController = TextEditingController();
  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final shopNameController = TextEditingController();
  final shopAddressController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void _onSignupPressed(BuildContext context) {
    if (formkey.currentState!.validate()) {
      context.read<SignupBloc>().add(SignupSubmitted(
            name: userNameController.text,
            email: userEmailController.text,
            password: userPasswordController.text,
            confirmPassword: confirmPasswordController.text,
            shopName: shopNameController.text,
            shopAddress: shopAddressController.text,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignupBloc(signup: sl<Signup>()),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocConsumer<SignupBloc, SignupState>(
            listener: (context, state) {
              if (state is SignupSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Signup Successful!")),
                );
                Navigator.push(context, LoginScreen.route());
              } else if (state is SignupError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.errorMessage)),
                );
              }
            },
            builder: (context, state) {
              return Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sign Up.',
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    AuthField(
                      hintText: 'Name',
                      controller: userNameController,
                    ),
                    const SizedBox(height: 15),
                    AuthField(
                      hintText: 'Email',
                      controller: userEmailController,
                    ),
                    const SizedBox(height: 15),
                    AuthField(
                      hintText: 'Password',
                      controller: userPasswordController,
                      isObsecureText: true,
                    ),
                    const SizedBox(height: 15),
                    AuthField(
                      hintText: 'Confirm Password',
                      controller: confirmPasswordController,
                      isObsecureText: true,
                    ),
                    const SizedBox(height: 15),
                    AuthField(
                      hintText: 'Shop Name',
                      controller: shopNameController,
                    ),
                    const SizedBox(height: 15),
                    AuthField(
                      hintText: 'Shop Address',
                      controller: shopAddressController,
                    ),
                    const SizedBox(height: 30),
                    if (state is SignupLoading)
                      const CircularProgressIndicator()
                    else
                      AuthGradientButton(
                        buttonText: 'Sign Up',
                        onPresssed: () => _onSignupPressed(context),
                      ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, LoginScreen.route());
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            TextSpan(
                              text: 'Sign In',
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