import 'package:dicoding_news_app/article.dart';
import 'package:dicoding_news_app/detail_page.dart';
import 'package:dicoding_news_app/list_page.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_news_app/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: primaryColor,
          onPrimary: Colors.black,
          secondary: secondaryColor,
        ),
        appBarTheme: AppBarTheme(elevation: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            onPrimary: Colors.white,
            textStyle: const TextStyle(),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
          ),
        ),
      ),
      initialRoute: NewsListPage.routeName,
      routes: {
        NewsListPage.routeName: (context) => const NewsListPage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
              article: ModalRoute.of(context)?.settings.arguments as Article,
            ),
        ArticleWebView.routeName: (context) => ArticleWebView(
              url: ModalRoute.of(context)?.settings.arguments as String,
            ),
      },
    );
  }
}

