# AzureAD_ImmutableID_Converter
AzureADとオンプレミス環境のActiveDirectoryと連携している環境で、オンプレミス環境ADの再構成時に必要なImmutableIDの取得から、該当ユーザへの紐づけを行うことが可能なスクリプトです。



# 想定している環境について
AzureAD Connectorを利用してオンプレミス環境のActiveDirectoryとの連携をしている方で、オンプレミス環境のActiveDirectoryが破損して再構成となったかた向けです。



# 動作に必要なもの

## ◆必須◆
・ PowerShellが動作するWindowsServer
・ .NET 5.0以上のインストール
・ MSOnlineモジュール


## ◆もしかすると必要かもしれない◆
・ IT プロフェッショナル 用 Microsoft Online Services サインイン アシスタント RTW



# 動作上の注意点
PowerShellでのスクリプト作成が初めてのため、動作しないなどの不具合が発生するかもしれません。
適宜、Issuesに投げていただくと助かります。
また、MS社の基本仕様の関係上、初期動作時に実行ポリシーの変更が必要な場合があります。
その場合は、ポリシー変更を適宜行ってください。以下はあくまでもセキュリティを無効にするためのコマンドです。
セキュリティ的にはおすすめしませんが、念のため記載しておきます

```
PS > Set-ExecutionPolicy Bypass
```
