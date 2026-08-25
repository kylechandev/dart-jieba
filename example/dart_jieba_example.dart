import 'package:dart_jieba/dart_jieba.dart';

Future<void> main() async {
  final jieba = JiebaSegmenter();

  // Loads the package AssetBundle dictionary (fast ~19ms).
  await jieba.initialize();

  // Or specify a custom dictionary asset key:
  // await jieba.initialize(dictPath: 'assets/dict.dgz'); // binary trie
  // await jieba.initialize(dictPath: 'assets/dict.txt'); // text dictionary

  print(jieba.cut('我们都是好孩子'));
  print(jieba.cut('他来到了网易杭研大厦'));
  print(jieba.cut('我来到北京清华大学'));
  print(jieba.cut('小明硕士毕业于中国科学院计算所'));
  print(jieba.cutForSearch('我爱北京天安门'));
  print(jieba.cut('我来到北京清华大学', cutAll: true));
}
