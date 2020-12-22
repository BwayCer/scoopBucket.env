#!/bin/bash
# Scoop 可攜


##shStyle 介面函式


# 凜搜尋
# [[USAGE]] <關鍵字 (正規表示)> <起始路徑>
# [[OPT]]
#   -n, --name      僅搜尋文件名稱。
#   -c, --content   僅搜尋文件內容。
#   -h, --help      幫助。

fnGrepRin__filename=`realpath "$0"`
fnGrepRin_fileName=`basename "$fnGrepRin__filename"`

fnScoopAbra() {
  local opt_path=""

  while [ -n "y" ]
  do
    case "$1" in
      --path )
          opt_path=$2
          shift 2
          ;;
      * ) break ;;
    esac
  done

  # 未指定路徑
  if [ -z $opt_path ]; then
    echo "Not found \`--path\` option." >&2
    exit 1
  fi

  # 未包含執行命令
  if [ $# -lt 1 ]; then
    exit
  fi

  # 未發現 Scoop 命令
  if ! type scoop &> /dev/null; then
      echo "Not found \`scoop\` command." >&2
      exit 1
  fi
  if [ ! -d "$SCOOP/shims" ] || [ ! -d "$SCOOP/apps/scoop" ]; then
    echo "Not found Scoop storage directory." >&2
    exit 1
  fi

  # 是否為新的 Scoop 安裝路徑
  local runTimes=0
    if [ ! -d "$opt_path/shims" ]; then
      echo 1
    fi
    if [ ! -d "$opt_path/apps/scoop" ]; then
      echo 2
    fi
  if [ ! -d "$opt_path/shims" ] || [ ! -d "$opt_path/apps/scoop" ]; then
    while true
    do
      printf "Is to use \"$opt_path\" path [Y/N]: "
      read isUseThePath
      if [[ "$isUseThePath" =~ ^(y|Y|yes|Yes)$ ]]; then
          break
      elif [[ "$isUseThePath" =~ ^(n|N|no|No)$ ]]; then
          exit
      fi
      if [ $runTimes -ge 2 ]; then
          echo "Please provide \`--path\` options."
          exit 1
      fi
      runTimes=$[runTimes + 1]
    done

    if [ ! -d "$opt_path/shims" ]; then
      mkdir -p "$opt_path/shims"
    fi
    if [ ! -d "$opt_path/apps/scoop" ]; then
      if [ ! -d "$opt_path/apps" ]; then
        mkdir -p "$opt_path/apps"
      fi
      cp -r "$SCOOP/apps/scoop" "$opt_path/apps"
    fi
  fi

  local origEnvScoopPath=$SCOOP
  SCOOP=$opt_path
  scoop "$@"
  SCOOP=$origEnvScoopPath
}


##shStyle ###


fnScoopAbra "$@"

