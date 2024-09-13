import 'package:flutter/material.dart';
import 'package:news_app/news/news_item.dart';
import 'package:news_app/tabs/tab_item.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails(this.cateegoryId, {super.key});

  final String cateegoryId;

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  int selectedTabIndex = 0;
  final sources = List.generate(10, (index) => 'Source$index');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: sources.length,
          child: TabBar(
            isScrollable: true,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            tabAlignment: TabAlignment.start,
            onTap: (index) => setState(() => selectedTabIndex = index),
            tabs: sources
                .map((source) => TabItem(
                      isSelected: source.indexOf(source) == selectedTabIndex,
                      source: source,
                    ))
                .toList(),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (_, index) => NewsItem(),
          itemCount: 10,
        ))
      ],
    );
  }
}
