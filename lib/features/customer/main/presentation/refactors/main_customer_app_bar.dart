import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/widgets/custom_linear_button.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainCustomerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainCustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
//TODO: test true  value 
automaticallyImplyLeading: false,
backgroundColor: context.color.mainColor,
elevation: 0,
title:Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [

    CustomFadeInRight(
                  duration: 800,
                  child: TextApp(
                    text: context.translate(LangKeys.chooseProducts),
                    theme: context.textStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeightHelper.bold,
                      color: context.color.textColor,
                    ),
                  ),
                ),
                CustomFadeInLeft(
                  duration: 800,
                  child: CustomLinearButton(
                    onPressed: () {
                      
                    },
                    child: Center(
                      child: SvgPicture.asset(AppImages.search),
                    ),
                  ),

)],));
    
  }
  
  @override
  Size get preferredSize => Size(double.infinity, 70.h);
}