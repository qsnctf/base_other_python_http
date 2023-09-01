# 说明
## 环境
Linux环境：alpine\
Python版本：Python38\
备注：本环境默认是通过Python脚本去生成动态FLAG的附件题目，如果有其他的想法，也可以在此基础上修改。


## 如何使用
1. Git Clone 本仓库
2. 在files/challenges.py中写自己的Python脚本。
3. 检查`Dockerfile`是否需要额外配置，如修改权限等。
4. 检查`requirements.txt`中的软件包是否符合题目要求，如拓展支持等。
5. 检查是否需要修改`flag.sh`，比如需要在题目中替换某个文本为FLAG？**（默认是将FLAG写入/flag）**
6. 构建项目
7. 测试

## 如何构建

### 使用Docker Build
```bash
docker build -t name/challenges_name:version_tag .
```

### 使用Docker Compose
**需要编写好`docker-compose.yml`**
```bash
docker-compose build
```