import 'package:flutter/cupertino.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

showCustomSnackBar(context) => showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message:
            "Something went wrong. Please check your credentials and try again",
      ),
    );
