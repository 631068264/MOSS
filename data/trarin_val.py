#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os
import json


DIR = '/Users/wyx/union_workspce/MOSS/SFT_data/conversations/conversation_without_plugins/harmless_conversations'
target_file = 'train.jsonl'
# 遍历目录下的所有 JSON 文件
for filename in os.listdir(DIR):
    if filename.endswith(".json"):
        # 读取 JSON 文件
        with open(os.path.join(DIR, filename), "r") as f:
            data = json.load(f)

        # 将 JSON 数据压缩成一行
        compressed_data = json.dumps(data, separators=(",", ":"),ensure_ascii=False)

        # 将压缩后的数据写入到 JSONL 文件中
        with open(target_file, "a") as f:
            f.write(compressed_data + "\n")
