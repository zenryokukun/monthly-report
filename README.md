# Monthly Report For GMO-BOT and OANDA-BOT

## What is this?

GMOとOANDAのボットの月末報告スクリプトです。
実行時点で、翌日が「1」日であれば、取引成績等を収集しツイートします。

以下の画像を投稿します。

### GMO

- バックテストと実取引の比較グラフ
- 月次取引成績

[*sgcheck*](https://github.com/zenryokukun/sgcheck)を実行します。

### OANDA

- バックテストと実取引の比較グラフ

[*oanda-backtest*](https://github.com/zenryokukun/oanda-backtest)を実行します。

## How should I use this?

### 前提

- *sgcheck*が~/goproject/sgcheckで稼働していること
- *oanda-backtest*が~/goproject/oanda-botで稼働していること

### 利用方法

**report.sh**をcronで毎晩23:50分くらいに1回実行するよう登録してください。

## cron登録内容

毎日23時47分に実行

```bash
47 23 * * * /bin/bash /home/crypto/goproject/monthly-report/report.sh>/home/crypto/goproject/monthly-report/log 2>&1
```
