#!/bin/bash
# 윷놀이 실행기 (Mac) — 이 창을 닫으면 게임 서버가 꺼집니다
cd "$(dirname "$0")"
if command -v python3 >/dev/null 2>&1; then
  (sleep 1; open "http://localhost:8000") &
  python3 -m http.server 8000
else
  echo "Python3가 없어 파일로 직접 엽니다 (유튜브 배경음 대신 가야금 배경음)."
  open index.html
fi
