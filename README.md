# リフレクションアプリ（仮）
## 概要
- パートナー間の関係改善の支援をするサービスです。
  - いくつかの質問に答え、それを相手にシェアできます。
  - 12月中にリリース予定です。

## 主な今後の実装予定
- SNS(LINE)での共有機能
- SNSを利用したログイン機能
- ウィザード形式での入力
- 問い合わせフォームの作成
- デプロイ(EC2)

## 主な利用技術
- Ruby on Rails
  - slim
- MySQL
- Bulma

## ER図
![ER図](app/assets/images/ER.png)

## イメージ
![landing](app/assets/images/landing.png)
![registration](app/assets/images/registration.png)
![index](app/assets/images/index.png)
![notes/new](app/assets/images/notes_new.png)
![mypage](app/assets/images/mypage.png)

## その他
- 企画概要とそのプロセス、要件定義、テーブル設計、カンバンなどの進捗はnotionで一元管理しています。
  - https://inky-boat-ebc.notion.site/c2078fbac3d4472b9a282bc0ee082880
- 画面遷移図やデザインはfigmaにまとめています。
  - https://www.figma.com/file/mwn1sOj7puEV0Bd51UcNiE/%E9%96%A2%E4%BF%82%E3%82%92%E6%8C%AF%E3%82%8A%E8%BF%94%E3%82%8B?node-id=0%3A1
