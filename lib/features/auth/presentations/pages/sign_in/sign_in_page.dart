import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:nebula/core/responsive/responsive.dart';
import 'package:nebula/core/theme/theme.dart';
import 'package:nebula/features/auth/auth.dart';
import 'package:nebula/shared/shared.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SignInFormMobile(),
      desktop: SignInFormDesktop(),
    );
  }
}

class SignInFormMobile extends StatelessWidget {
  const SignInFormMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NebulaLogo(size: 80),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sing In",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                SignInSocialOptions(),
                Divider(),
                SignInEmailInput(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    TextButton(onPressed: () {}, child: Text("Sign Up")),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: Crear diseño de tablet

class SignInFormDesktop extends StatelessWidget {
  const SignInFormDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: ContentPanel(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //TODO: Ver si se personaiza esta configuracion del titulo
              Text(
                "Sing In",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 24),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 320),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SignInSocialOptions(),
                    Divider(),
                    SignInEmailInput(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInSocialOptions extends StatelessWidget {
  const SignInSocialOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Sign up with open account"),
        const SizedBox(height: 12),
        Wrap(
          children: [
            ActionChip(
              label: Text("Google"),
              avatar: AppIcons.google(size: 16),
              onPressed: () {},
            ),
            const SizedBox(width: 12),
            ActionChip(
              label: Text("Microsoft"),
              avatar: AppIcons.microsoft(size: 16),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class SignInEmailInput extends StatelessWidget {
  const SignInEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Or continue with email address"),
        const SizedBox(height: 12),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email",
            prefixIcon: Icon(Icons.email_outlined),
            suffixIcon: Icon(Icons.check),
          ),
        ),
        const SizedBox(height: 12),
        FilledButtonCustom(onPressed: () {}, label: "Continue"),
      ],
    );
  }
}
