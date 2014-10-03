#画像圧縮、サイズ変換

##必要なもの導入

```
$ brew install node
$ brew install npm
$ brew install imagemagick
$ npm install --save-dev
```

##Grunt実行(画像圧縮)

*input_image_files内に変換したい画像を配置、output_image_filesフォルダが作成され出力される

###画像の圧縮

```
$ grunt imagemin
```

###画像サイズ変換

```
$ grunt image_resize --width 100 --height 100
```
