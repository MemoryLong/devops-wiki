#!/bin/bash
cd /appdata/devops-wiki/apitest
mkdir report
#D:
#cd D:\Dream Future Project\workspace\devops-wiki\apitest
## -e 环境变量; -g 全局变量; -k 禁止SSL; -n 循环次数; --bail 失败后不再往下执行; -r 报告格式
newman run dev_user.postman_collection.json -e localhost.postman_environment.json -g MyWorkspace.postman_globals.json -k -n 2 --bail -r htmlextra,html,json,junit,cli
