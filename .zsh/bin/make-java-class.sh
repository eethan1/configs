#!/bin/bash

# 使用範例： ./make-java-class.sh com.aiello.localasr.AudioFileUtils

if [ -z "$1" ]; then
  echo "請輸入完整 class 名稱（例如：com.aiello.localasr.AudioFileUtils）"
  exit 1
fi
BASE_DIR="src/main/java"


CLASS_FULL="$1"
PACKAGE_FULL=$(echo -n "$CLASS_FULL"|tr '.' '/')
PACKAGE_DIR=$(dirname "$PACKAGE_FULL")
CLASS_NAME=$(basename "$PACKAGE_FULL")

TARGET_DIR="$BASE_DIR/$PACKAGE_DIR"
TARGET_FILE="$BASE_DIR/$PACKAGE_FULL.java"

mkdir -p "$TARGET_DIR"

cat > "$TARGET_FILE" <<EOF
package ${CLASS_FULL%.*};

public class $CLASS_NAME {
    // TODO: implement
}
EOF

echo "✅ 已建立：$TARGET_FILE"

