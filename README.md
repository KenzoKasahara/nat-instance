# nat-instance

## 構成図

<img src="./drawio/nat-instance.drawio.png" alt="nat instance infrastructure" title="NATインスタンスの構成図1">

## 構成について

- NATインスタンスを経由することでプライベートインスタンスは外部Webアクセスを可能にする
- プライベートサブネットにはSSMエンドポイントを配置
- SSMにてインスタンスにアクセスし、pingやWebアクセスを行う
