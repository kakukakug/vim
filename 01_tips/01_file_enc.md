# vim file encoding

## Overview
vimでファイルがうまく開けないときに対応
## ファイルを開きなおす
間違ったエンコードだと化ける。正しく開けるもので開きなおす

    :e ++enc=shift_jis
    :e ++enc=utf-8

## ファイルのエンコードを変更
正しく開くことができた状態で、エンコードを変更して保存を行う

    :set fileencoding=utf-8
