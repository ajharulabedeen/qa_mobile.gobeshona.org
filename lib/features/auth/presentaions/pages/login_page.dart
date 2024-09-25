

import 'package:iQA/features/core/path/file_path.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey _formKey = GlobalKey<FormState>(debugLabel: "login");
  FocusNode userNameFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
/*  String username = "";
  String password = "";*/

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    StatusBar.changeColor(Colors.white,Brightness.dark);
    context.read<AuthBloc>().add(const AuthEvent.isPasswordObscured());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: const Color(0xffFFFFFF),
          extendBody: true,
          /* appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "PayPack",
          style: GoogleFonts.notoSansBengali(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff000000),
          ),
        ),
      ),*/
          body: LayoutBuilder(builder: (context, constraint) {
            return GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraint.maxHeight),
                      child: IntrinsicHeight(
                        child: SafeArea(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                /* begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.5, 0.7, 0.9],*/
                                colors: [
                                  Color(0xffba1736),
                                  Color(0xffb31836),
                                  Color(0xff721d3c),
                                  Color(0xff4c1d3b),
                                ],
                              ),
                            ),
                            child: Stack(
                              fit: StackFit.loose,
                              clipBehavior: Clip.none,
                              children: [
                                SizedBox(height: 40.h),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 25),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hello",
                                        style: GoogleFonts.notoSansBengali(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 24.sp,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 6.h),
                                      Text(
                                        "Sign in!",
                                        style: GoogleFonts.notoSansBengali(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 24.sp,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                /* Image(
                                image:
                                    const AssetImage('assets/images/login.png'),
                                height: 240.sp,
                                width: 240.sp,
                                fit: BoxFit.fill,
                              ),*/
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  height:
                                      MediaQuery.of(context).size.height * 0.75,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.sp),
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: const BoxDecoration(
                                        color: Color(0xfff6f6f6),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                        )),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 60.h),
                                        Text(
                                          "User Name",
                                          style: GoogleFonts.notoSansBengali(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                            color: const Color(0xffd25268),
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        SizedBox(
                                          width: 335.w,
                                          child: TextFormField(
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            cursorColor: Colors.black45,
                                            // initialValue: "Enter your username here...",
                                            controller: usernameController,
                                            style: GoogleFonts.notoSansBengali(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16.sp,
                                                color: Colors.black),
                                            onChanged: (String usernameValue) {
                                              usernameController.text =
                                                  usernameValue;
                                              context.read<AuthBloc>().add(
                                                  AuthEvent.usernameAdd(
                                                      username: usernameValue));
                                            },
                                            keyboardType: TextInputType.text,
                                            onTapOutside: (d) {
                                              userNameFocus.unfocus();
                                            },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "This field shouldn't be empty";
                                              }
                                              return null;
                                            },
                                            textInputAction:
                                                TextInputAction.done,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 12.sp,
                                                      vertical: 0.sp),
                                              hintText:
                                                  "Enter your username here...",
                                              hintStyle:
                                                  GoogleFonts.notoSansBengali(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16.sp,
                                                      color:
                                                          MyColor.deafultColor),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.sp),
                                                borderSide: BorderSide(
                                                    width: 1.sp,
                                                    color:
                                                        MyColor.deafultColor),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.sp),
                                                borderSide: BorderSide(
                                                    width: 1.sp,
                                                    color:
                                                        MyColor.deafultColor),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.sp),
                                                borderSide: BorderSide(
                                                    width: 1.sp,
                                                    color: Colors.red),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.sp),
                                                borderSide: BorderSide(
                                                    width: 1.sp,
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          "Password",
                                          style: GoogleFonts.notoSansBengali(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                            color: const Color(0xffd25268),
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        SizedBox(
                                          width: 335.w,
                                          child: TextFormField(
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            cursorColor: Colors.black45,
                                            // initialValue: "Enter your password here...",
                                            controller: passwordController,
                                            style: GoogleFonts.notoSansBengali(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16.sp,
                                                color: Colors.black),
                                            onChanged: (String passwordValue) {
                                              passwordController.text =
                                                  passwordValue;
                                              context.read<AuthBloc>().add(
                                                  AuthEvent.passwordAdd(
                                                      password: passwordValue));
                                            },
                                            keyboardType: TextInputType.text,
                                            onTapOutside: (d) {
                                              userNameFocus.unfocus();
                                            },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "This field shouldn't be empty";
                                              }
                                              if (value.length < 5) {
                                                return "Password Must Be At Least 6 Characters";
                                              }
                                              return null;
                                            },
                                            textInputAction:
                                                TextInputAction.done,
                                            obscureText:
                                                state.isPasswordObscure,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 12.sp,
                                                      vertical: 0.sp),
                                              hintText:
                                                  "Enter your password here...",
                                              hintStyle:
                                                  GoogleFonts.notoSansBengali(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16.sp,
                                                      color:
                                                          MyColor.deafultColor),
                                              suffixIconColor:
                                                  const Color(0xffb31836),
                                              suffixIcon: InkWell(
                                                onTap: () {
                                                  context.read<AuthBloc>().add(
                                                      const AuthEvent
                                                          .isPasswordObscured());
                                                },
                                                child: Icon(state
                                                        .isPasswordObscure
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.sp),
                                                borderSide: BorderSide(
                                                    width: 1.sp,
                                                    color:
                                                        MyColor.deafultColor),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.sp),
                                                borderSide: BorderSide(
                                                    width: 1.sp,
                                                    color:
                                                        MyColor.deafultColor),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.sp),
                                                borderSide: BorderSide(
                                                    width: 1.sp,
                                                    color: Colors.red),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.sp),
                                                borderSide: BorderSide(
                                                    width: 1.sp,
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 70.h),
                                        Container(
                                          width: 335.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(18.sp),
                                            gradient: state
                                                        .username.isNotEmpty &&
                                                    state.password.isNotEmpty &&
                                                    passwordController
                                                            .text.length >=
                                                        5
                                                ? const LinearGradient(
                                                    /* begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.5, 0.7, 0.9],*/
                                                    colors: [
                                                      Color(0xffba1736),
                                                      Color(0xffb31836),
                                                      Color(0xff721d3c),
                                                      Color(0xff4c1d3b),
                                                    ],
                                                  )
                                                : const LinearGradient(
                                                    /* begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.5, 0.7, 0.9],*/
                                                    colors: [
                                                      Colors.transparent,
                                                      Colors.transparent,
                                                    ],
                                                  ),
                                          ),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              //backgroundColor: const Color(0xff00B2EB),
                                              backgroundColor:
                                                  Colors.transparent,
                                              shadowColor: Colors.transparent,
                                            ),
                                            onPressed: state
                                                        .username.isNotEmpty &&
                                                    state.password.isNotEmpty &&
                                                    passwordController
                                                            .text.length >=
                                                        5
                                                ? () {
                                                    context
                                                        .read<AuthBloc>()
                                                        .add(
                                                          AuthEvent
                                                              .loginDataSubmit(
                                                            context: context,
                                                            username:
                                                                state.username,
                                                            password:
                                                                state.password,
                                                          ),
                                                        );
                                                  }
                                                : null,
                                            child: state.status ==
                                                    AuthStatus.inProgress
                                                ? SizedBox(
                                                    height: 20.sp,
                                                    width: 20.sp,
                                                    child:
                                                        const CircularProgressIndicator
                                                            .adaptive(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Color(
                                                                  0xffb31836)),
                                                      backgroundColor:
                                                          Colors.white,
                                                    ),
                                                  )
                                                : Text(
                                                    "Submit",
                                                    style: GoogleFonts
                                                        .notoSansBengali(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color:
                                                                Colors.white),
                                                  ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 160.h,
                                        ),
                                        Center(
                                          child: SizedBox(
                                            width: 260.sp,
                                            child: Text.rich(
                                              textAlign: TextAlign.center,
                                              TextSpan(
                                                  text:
                                                      "By giving your information, you agree to our ",
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text:
                                                          "Terms & Conditions",
                                                      /* recognizer: TapGestureRecognizer()
                                                ..onTap = () => launchRegisterURL(),*/
                                                      style: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xffb31836),
                                                        /*decoration:
                            TextDecoration.underline,
                            decorationColor:
                            const  Color(0xffb31836),*/
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: " and ",
                                                      /* recognizer: TapGestureRecognizer()
                                                ..onTap = () => launchRegisterURL(),*/
                                                      style: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff979797),
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: " Privacy Policy",
                                                      /* recognizer: TapGestureRecognizer()
                                                ..onTap = () => launchRegisterURL(),*/
                                                      style: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xffb31836),
                                                        /* decoration:
                            TextDecoration.underline,
                            decorationColor:
                            const  Color(0xffb31836),*/
                                                      ),
                                                    ),
                                                  ],
                                                  style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff979797),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom +
                                                20.h),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            );
          }),
        );
      },
    );
  }
}
