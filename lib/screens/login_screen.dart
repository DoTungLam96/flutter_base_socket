import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_base_with_socket/base/constants.dart';
import 'package:new_base_with_socket/generated/l10n.dart';
import 'package:new_base_with_socket/screens/cubit/login/login_cubit.dart';
import 'package:new_base_with_socket/screens/cubit/login/login_state.dart';
import 'package:new_base_with_socket/screens/home_screen.dart';
import 'package:new_base_with_socket/widgets/loading_dialog.dart';
import 'package:new_base_with_socket/widgets/toast_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodePassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool _obscurePassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      GetIt.instance<ToastWidget>().registerContext();
      _controllerUsername.text = "007967";
      _controllerPassword.text = "Ssi@1234";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.instance<LoginCubit>(),
        ),
      ],
      child: Scaffold(
        key: GetIt.instance<ToastWidget>().globalKey,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is Loading) {
                  showLoading(context, dismissAble: true);
                }
                if (state is Error) {
                  GetIt.instance<ToastWidget>()
                      .showToastCenterError(message: state.message ?? "");
                  dismissLoading(context);
                }
                if (state is LoginSuccess) {
                  GetIt.instance<ToastWidget>()
                      .showToastCenterSuccess(message: "Login success!");
                  dismissLoading(context);
                  Navigator.of(context).pushNamed(Constants.homePage,
                      arguments: HomeArg(
                          id: state.user?.userName ?? "",
                          name: state.user?.fullName));
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    const SizedBox(height: 150),
                    Text(
                      "Welcome back",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Login to your account",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 60),
                    TextFormField(
                      controller: _controllerUsername,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: const Icon(Icons.person_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onEditingComplete: () =>
                          _focusNodePassword.requestFocus(),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter username.";
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _controllerPassword,
                      focusNode: _focusNodePassword,
                      obscureText: _obscurePassword,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.password_outlined),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: _obscurePassword
                                ? const Icon(Icons.visibility_outlined)
                                : const Icon(Icons.visibility_off_outlined)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password.";
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 60),
                    Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              context.read<LoginCubit>().login(
                                  username: _controllerUsername.text,
                                  password: _controllerPassword.text);
                            }
                          },
                          child: const Text("Login"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                _formKey.currentState?.reset();
                              },
                              child: const Text("Signup"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNodePassword.dispose();
    _controllerUsername.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }
}
