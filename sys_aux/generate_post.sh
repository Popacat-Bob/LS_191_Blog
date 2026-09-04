#!/bin/zsh 

TITLE=$1
CATEGORY=$2
TIME=$(date +%T)
TIMEZONE=$(date +%z)
DATE=$(date +%F)

DTITLE=$(echo "$TITLE" | tr -s " " "-")
FILE_TITLE="$DATE-$DTITLE.markdown"

cat > "$FILE_TITLE" << EOF 
---
title: "$TITLE"
date: $DATE $TIME $TIMEZONE
categories: $CATEGORY
---
EOF
