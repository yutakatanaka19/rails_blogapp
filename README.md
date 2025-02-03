# 環境構築　　

完全に自分だけで作ったプロジェクトをgit経由で他の人に渡すのは初の試みで、恐らくほぼ間違いなくこちら側の責任で何らかの不手際が発生すると思われます。そこで以下に記す環境構築手順は鵜呑みにせずに、適宜ご自身でお調べください。　　

1.適当な名前のファイルを作っておく　　
2.コンソールでその中に行きgit cloneをやる　　
3.その後そのままコンソールでbundle installというコマンドを打つ（cloneしてきた大量のファイルの中の一つに必要なgemがまとめて書いてあり、それをinstallしている）　　
4.特に怒られたりしなければその後そのままコンソールでrails db:createというコマンドを打つ（データベースを作っている）　　
5.特に怒られたりしなければその後そのままコンソールでrails db:migrateというコマンドを打つ（データベースに書き込んでいる）　　
6.特に怒られたりしなければその後そのままコンソールでrails serverというコマンドを打つ　　
7.するとhttp://127.0.0.1:3000に行けなどと言われるので行く　　
