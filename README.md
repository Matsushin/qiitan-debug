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
  - 修正はmasterブランチ以外で行う
  - 1つのバグ/エラーの対応毎にコミットを行う
- 制限時間になったら答えを確認して点数をつける
  - 採点者がいる場合はPRを作成し、チェックしてもらう

## ルール
- 制限時間は90分とする。
- バグを見つければ1点、修正ができれば3点。最高48点とする。
- 回答はこちらの[シート](#)、[PR](#)を確認する

## 環境構築手順
### 環境
- ruby v2.5.1
- rails v5.1.6
- mysql

### セットアップ
- Matsushin/QiitanDebugリポジトリをあなたのリポジトリにforkしてください
  - 自分で答え合わせもする場合はcloneでも可
```
git clone git@github.com:[あなたのユーザ名]/qiitan-debug.git
cd qiitan-debug
```

### 各種gemインストール

```
bundle install --path=vendor/bundle
```

### データ準備
- `config/dattabase.yml` のDB接続情報をあなたのローカル環境に合わせてください

```
bundle exec rake db:create # DB作成
bundle exec rake db:migrate # テーブル作成
bundle exec rake db:seed # 初期データ投入
```

### 画面確認

サーバ起動
```
bundle exec rails s
```

`http://localhost:8000` にアクセスしてログイン画面が表示されればOK。


## 備考
- 元のプロジェクトは[こちら](https://github.com/Matsushin/qiitan)
    - 実施する前に画面での動作やコードを確認しておくとスムーズに取り組めます。
    - 注)ただし完全に同じではありません。