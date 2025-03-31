# Flutter 大規模アプリ開発 コーディング規約

## アーキテクチャ

* MVVM（Model-View-ViewModel）アーキテクチャを採用します。
* 状態管理にはRiverpod V2を使用します。
* 各機能は`features`ディレクトリ内に分割します。
* 共通のコードは`core`ディレクトリ内に配置します。

## フォルダ構成サンプル

lib/
├── features/
│   ├── auth/ # 認証機能
│   │   ├── models/
│   │   ├── views/
│   │   ├── viewmodels/
│   │   ├── repositories/
│   │   └── services/
│   ├── counter/          # サンプル機能
│   │   ├── models/
│   │   ├── views/
│   │   ├── viewmodels/
│   │   ├── repositories/
│   │   └── services/
│   └── ...            # 他の機能
├── core/
│   ├── constants/
│   ├── utils/
│   ├── router/
│   └── theme/
└── main.dart

* `features`ディレクトリ：各機能をフォルダごとに分割します。
    * 各機能フォルダ内に、MVVMの各レイヤー（models, views, viewmodels, repositories, usecases, services）を配置します。
* `core`ディレクトリ：アプリケーション全体で共通して使用する機能を記述します。
    * `constants`: 定数
    * `utils`: ユーティリティ関数
    * `router`: GoRouter設定
    * `theme`: テーマ設定

## Riverpod V2

* Riverpodプロバイダは、ViewModelと同じ階層に配置するか、もしくはProvider専用のフォルダを作成して管理します。
* ViewModelは、Riverpodプロバイダを用いて状態を管理し、UIにデータを渡します。
* UI（画面、ウィジェット）は、Riverpodプロバイダから状態を取得し、表示を更新します。

## コーディングスタイル

* Flutterの公式スタイルガイドに従います。
* 変数名、関数名は明確かつ簡潔に記述します。
* コメントを適切に記述し、コードの意図を明確にします。
* `dart format`を用いてコードを整形します。
* `lint`を用いてコードの品質を維持します。

## その他

* Gitのコミットメッセージは、変更内容を明確に記述します。
* プルリクエストは、コードレビューを経てマージします。
* テストコードを記述し、コードの品質を保証します。
* ドキュメントを整備し、コードの理解を容易にします。
* **開発コードをGithubにPushする前には`flutter analyze`を実行し、問題があれば修正します。**

## 使用パッケージ

* **ModelやStateのクラスにはFreezedパッケージを使用します。**
* **画面遷移にはGoRouterを利用します。**


## タスク完了後の知識の追記

* タスク完了後、次回のタスク実行に活用できる知識があれば、この`repo.md`に追記します。
    * 例：特定のライブラリの利用方法、複雑なUIの実装パターン、パフォーマンス改善のノウハウなど。

この規約は、プロジェクトの進行に合わせて適宜修正される場合があります。
