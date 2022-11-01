import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hani/app/home/controller/controller.dart';
import 'package:hani/app/home/widget/widgets.dart';

class Home extends GetView<NewsController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
              const SizedBox(height: 20,),
              SearchBar(
                controller: controller.country1.value,
                onTap: ()=> controller.searchCountry1(),
              ),
              const SizedBox(height: 20,),
              SearchBar(
                controller: controller.country2.value,
                onTap: ()=> controller.searchCountry2(),
              ),
            const SizedBox(height: 20,),
              Expanded(
                child: CustomScrollView(
                scrollBehavior: const ScrollBehavior(),
                  slivers: <Widget>[
                    Obx(() => SliverList(
                        delegate: SliverChildBuilderDelegate(
                            childCount: controller.list1.value.articles== null ? 0 : controller.list1.value.articles!.length,
                                (BuildContext context , int index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                                height: 50,
                                decoration:const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    Text( controller.list1.value.articles![index].author.toString() , ),
                                    const SizedBox(height: 10,),
                                    Text(controller.list1.value.articles![index].title.toString()),
                                  ],
                                ),
                              );
                            }
                        )
                    )),
                    const SliverToBoxAdapter(
                      child: Divider(
                        thickness: 2,
                        color: Colors.black26,
                      ),
                    ),
                    Obx(() => SliverList(
                        delegate: SliverChildBuilderDelegate(
                            childCount: controller.list2.value.articles== null ? 0 : controller.list2.value.articles!.length,
                                (BuildContext context , int index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                                height: 50,
                                decoration:const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    Text( controller.list2.value.articles![index].author.toString(), ),
                                    const  SizedBox(height: 10,),
                                    Text(controller.list2.value.articles![index].title.toString()),
                                  ],
                                ),
                              );
                            }
                        )
                    ) ),

                  ],
            ),
              )
          ],
        ),
      ),
    );
  }
}
