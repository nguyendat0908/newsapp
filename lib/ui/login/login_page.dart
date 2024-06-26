import 'package:flutter/cupertino.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderTitle(),
        _buildHeaderScrip(),
        _buildFormLogin(),
        _buildOrLogin(),
        _buildSocialLogin(),
        _buildHaveNotAccount(),
      ],
    );
  }

  Widget _buildHeaderTitle() {
    return Container();
  }

  Widget _buildHeaderScrip() {
    return Container();
  }

  Widget _buildFormLogin() {
    return Container();
  }

  Widget _buildOrLogin() {
    return Container();
  }

  Widget _buildSocialLogin() {
    return Container();
  }

  Widget _buildHaveNotAccount() {
    return Container();
  }
}
