bashtool
========
git clone https://github.com/tamu222i/bashtool
./make_test_data.sh
./find.sh 2013073101 2013073102

make_test_data.sh ... テスト用ファイルの作成
  実行した日時から過去３日分のファイル名をついたファイルを作成

find.sh {start} {end} ... findの結果を絞り込み
　startからendまでの年月日時で絞り込みを実行
