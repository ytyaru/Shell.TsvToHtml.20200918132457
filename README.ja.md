[en](./README.md)

# Shell.TsvToHtml.20200918132457

　TSVをHTMLに変換する。

# デモ

![demo](https://github.com/ytyaru/Shell.TsvToHtml.20200918132457/blob/master/demo/demo.png?raw=true)

# 特徴

* [JapaneseLastNameGenerator](https://github.com/ytyaru/Shell.JapaneseLastNameGenerator.20200912074709), [JapaneseFirstNameGenerator](https://github.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000)で出力したTSVをHTML形式に変換する

# 開発環境

* <time datetime="2020-09-18T13:24:41+0900">2020-09-18</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# インストール

```sh
cd /tmp
git clone https://github.com/ytyaru/Shell.JapaneseLastNameGenerator.20200912074709
git clone https://github.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000
git clone https://github.com/ytyaru/Shell.TsvToHtml.20200918132457
```

# 使い方

```sh
cd Shell.TsvToHtml.20200918132457/src
/tmp/Shell.JapaneseLastNameGenerator.20200912074709/src/jln.sh | ./tsv2html.sh
/tmp/Shell.JapaneseFirstNameGenerator.20200918080000/src/jfn.sh | ./tsv2html.sh
```

# 著者

　ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# ライセンス

　このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

