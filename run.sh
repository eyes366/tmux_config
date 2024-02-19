#!/bin/bash
cp ./tmux.conf ~/.tmux.conf

# 下载 tqm 到~/.tmux/plugins
# tqm是tmux插件管理工具
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# 进入相应位置
cd ~/.tmux/plugins 
# 下载插件
git clone https://github.com/tmux-plugins/tmux-resurrect.git # 保存tmux会话到disk
git clone https://github.com/tmux-plugins/tmux-continuum.git # 定时保存，自动加载

tmux source-file ~/.tmux.conf
