import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:froddo_rider/core/configs/configs.dart';

import '../../../core/components/components.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 141.dy, width: kScreenWidth(context),
            padding: EdgeInsets.symmetric(horizontal: 24.dx),
            color: kBlack,
            child: Row(
              children: [
               const CircleAvatar(radius: 20,backgroundColor: kWhite,child: Icon(Icons.person,color: Color(0xffCBD2D9),),),
               SpaceX(8.dx),
               Text(kDummyName,
               style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xffFAFBFC)),),
              const Spacer(),
              Container(
                padding: EdgeInsets.only(left: 12.dx,),
                height: 40.dy, width: 115.dx,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff37414A)),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    Text("Online",
               style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xffFEF1F1)),),
            CustomSwitch(onChanged: (p0) {
              setState(() {
                isOnline = !isOnline;
              });
            },isActive: isOnline,)
                  ],
                ),
                
              )
              ],
            ),
          ),
          TabBar(
          indicatorColor: kPrimaryColor,
          unselectedLabelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: kPrimaryColor),
          labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: kPrimaryColor),
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                'Available Orders',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff333333)),
              ),
            ),
            Tab(
              child: Text(
                'Accepted Orders',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff333333)),
              ),
            ),
          ],
        ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:  <Widget>[
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 24.dx),
                 child: Column(
                  children: [
                    SpaceY(20.dy),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemBuilder: (context,index){
                        return const AvailableOrderCard();
                      }),
                    ),
                    
                  ],
                 ),
               ),
               //!
                Column(
                children: [
                  Container(
                    
                  )
                ],
               ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvailableOrderCard extends StatelessWidget {
  const AvailableOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.dy),
      padding: EdgeInsets.symmetric(horizontal: 20.dx,vertical: 20.dy),
    decoration: BoxDecoration(
      border: Border.all(color: const Color(0xffF1F3F5)),
      borderRadius: BorderRadius.circular(8)
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AssetsImages.googleLogo,height: 24.dy, width: 24.dx,),
            SpaceX(16.dx),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Food Delivery',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xff333333)),
                 ),
        Text(
                  '49 imo okoro streets, Ajah, Lagos',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xff333333)),
             ),
            SpaceY(4.dy),
       RichText(
            text: TextSpan(
              text: 'Delivery time: ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: kGrey),
              children: [
                TextSpan(
                  text: '20mins',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: kTextColorsLight,
                       // decoration: TextDecoration.underline,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                     // moveAndClearStack(context: context, page: SignInScreen.routeName);
                      // moveToNextScreen(
                      // context: context,
                      // page: SignInScreen.routeName);
                   },
                ),
              ],
            ),
          ),
              ],
            ),
             Spacer(),
             const Icon(Icons.arrow_forward_ios, size: 16,color: Color(0xff999999),)
          ],
        ),
        SpaceY(4.dy),
         
      ],
    ),
    );
  }
}
