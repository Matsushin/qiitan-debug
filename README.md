## 概要
Rails学習用アプリ。
バグ/エラーが12個仕込まれているので、探し当てて修正を行う。
内容は基本的なものがほとんど。

- エラー -> 画面が表示されない
- バグ -> 意図した通りの挙動になっていない

## 対象者
- Railsの書籍を1冊以上読んでいるまたはRailsチュートリアルを完了させている程度
- Railsの実務経験がない

## デバッグ実施手順
- 環境構築手順に従って環境構築を行う
- 回答雛形シートをコピー
  - [【QiitanDebug】デバッグ回答雛形](https://docs.google.com/spreadsheets/d/19bXRPtxDYjFkxg1bh4yT-l_YPAFG0ZXX_JbtBHRArLw/edit?usp=sharing)
- デバッグ開始
- バグ/エラーを見つけたらシートに記入していく
- バグ/エラーの修正ができたらシートに記入していく
  - 1つのバグ/エラーの対応毎にコミットを行う
- 制限時間になったら答えを確認して点数をつける
  - 採点者がいる場合はPRを作成し、チェックしてもらう

## ルール
- 制限時間は90分とする。
- バグ/エラーを見つければ1点、修正ができれば2点、回答通りの修正ができればさらに1点
  - バグ/エラーは12個あるので最高48点とする。
- 回答はこちらの[シート](https://docs.google.com/spreadsheets/d/1A_K5UkYKSdcXzCTE7Ti7GrwlUME39RXiyXW4Q9BeIG0/edit?usp=sharing)、[PR](https://github.com/Matsushin/qiitan-debug/pull/2)を確認する
- 試験中に[Qiitan](http://qiitan-prd.herokuapp.com/)は動作確認として操作してもOK。コードを見るのは禁止。

## 環境構築手順
### 環境
- ruby v2.5.1
- rails v5.1.6
- sqlite

### セットアップ
- Matsushin/QiitanDebugリポジトリをあなたのリポジトリに[fork](https://qiita.com/YumaInaura/items/acff806290c8953d3185)してください
  - 自分で答え合わせもする場合はcloneでも可

```
git clone git@github.com:あなたのユーザ名/qiitan-debug.git
cd qiitan-debug
```

- 注) GitHubにSSH鍵が登録されておらずクローンに失敗する場合は[こちら](https://qiita.com/knife0125/items/50b80ad45d21ddec61a9)を参考に登録してください

### 各種gemインストール

```
bundle install --path=vendor/bundle
```

- 注) ローカル環境にRuby 2.5.1が入っておらずinstallできない場合は[こちら](https://qiita.com/akisanpony/items/ae9d8eed72945de98285)を参考にバージョンアップしてください

### データ準備

```
rails db:create # DB作成
rails db:migrate # テーブル作成
rails db:seed # 初期データ投入
```

データが投入されたか確認

```
rails c # コンソール開始
irb(main):001:0> User.count
   (0.6ms)  SELECT COUNT(*) FROM "users"
=> 2
```

上記のように2件データがあることを確認できればOK。

### 画面確認

サーバ起動
```
rails s
```

`http://localhost:3000` にアクセスしてログイン画面が表示されればOK。


## 備考
- 元のプロジェクトは[こちら](https://github.com/Matsushin/qiitan)
    - 実施する前に画面での動作やコードを確認しておくとスムーズに取り組めます。
    - 注)ただし完全に同じではありません。