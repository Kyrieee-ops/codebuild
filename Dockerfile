# Amazon Linux 2023をベースにする
FROM amazonlinux:2023.6.20241111.0

# 必要なパッケージをインストール
RUN dnf install -y python3 python3-pip && \
    dnf clean all

# 作業ディレクトリを設定
WORKDIR /app

# アプリケーションコードとテストコードをコピー
COPY app/ /app

# テスト用のPythonライブラリをインストール
RUN pip3 install --no-cache-dir pytest \
 && chmod +x /app/entrypoint.sh

CMD ["/bin/bash", "/app/entrypoint.sh"]
