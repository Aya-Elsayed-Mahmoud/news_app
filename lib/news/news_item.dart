import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    final titleSmallStyle = Theme.of(context).textTheme.titleSmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.asset(
              'assets/images/NewsTest.png',
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'BBC News',
            style:
                titleSmallStyle?.copyWith(color: AppTheme.gray, fontSize: 10),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Why are football's biggest clubs starting a new tournament?",
            style: titleSmallStyle?.copyWith(fontWeight: FontWeight.w500),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Text(
              timeago.format(DateTime.now()),
              style:
                  titleSmallStyle?.copyWith(color: AppTheme.gray, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
