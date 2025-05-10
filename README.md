# Current Time Plugin for Movable Type

記事編集画面の公開日フィールドに「現在日時を反映」ボタンを追加する Movable Type 用プラグインです。

プラグイン自体は管理画面に JavaScript と CSS を追加しているだけです。  
実際のボタン追加と動作を行う JavaScript、および、ボタンのスタイルを定義した CSS ファイルは、`mt-static` フォルダ内にありますので、これを修正すれば、ボタンの見た目や動作をカスタマイズすることも可能です。

## インストール方法

`MTCurrentTimePlugin`フォルダの中身（`plugins`フォルダと`mt-static`フォルダ）をそのまま Movable Type のインストールディレクトリにアップロードしてください。

### インストール後のフォルダ構成

```
[your-mt-install-path]/
   ├─ plugins/
   │    └─ CurrentTimePlugin/
   │         ├─ config.yaml
   │         └─ lib/
   │              └─ CurrentTimePlugin.pm
   └─ mt-static/
         └─ plugins/
              └─ currenttimeplugin/
                   ├─ js
                   │   └─ current-time.js
                   └─ css
                        └─ current-time.css
```

## 使い方

1. 記事編集画面を開きます
2. 「公開日」セクションに「現在日時を反映」ボタンが表示されます
3. ボタンをクリックすると、現在の日時が「公開日」「公開時刻」、フィールドに反映されます

## 対応バージョン

以下のバージョンで動作確認しています。

- Movable Type 7
- Movable Type 8

## ライセンス

MITライセンス
