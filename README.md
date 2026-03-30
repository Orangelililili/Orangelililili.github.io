# 我的学术主页

## 本地预览（不需要 push 到 GitHub）

这个项目是 **Jekyll** 站点。本地预览推荐优先使用 **Docker**（环境最省心），也支持直接在本机安装 Ruby 来启动。

### 方式 A：Docker（推荐）

在项目根目录（`Orangelililili.github.io/`）执行：

```bash
make preview-build
```

然后用浏览器打开 `http://localhost:4000`。

如果你这里拉取 `ruby:3.2` 发生超时/被墙（Docker Hub 访问受限），请直接用下面的“方式 B：本机 Ruby”。

常用命令：

```bash
make preview      # 启动（不强制重建）
make logs         # 看日志
make stop         # 停止
make clean        # 清理容器/镜像/卷（仅本项目）
```

说明：
- Docker 入口来自 `docker-compose.yaml`，使用 `docker-compose` 启动；实际执行的是 `jekyll serve -H 0.0.0.0 -w --config _config.yml,_config_docker.yml`
- `_config_docker.yml` 会把 `url` 置空，适配本地访问

### 方式 B：本机 Ruby（可选）

需要你本机有 Ruby + Bundler + Node/npm（用于压缩前端脚本）。

Ubuntu/Debian 可以先跑一遍依赖安装脚本：

```bash
./scripts/setup_ubuntu_jekyll.sh
```

如果你遇到 `Bundler::PermissionError`（例如无法写入 `/var/lib/gems/.../cache`），这是系统 Ruby 的默认安装路径权限导致的。解决办法是把 gems 安装到项目目录：

```bash
mkdir -p vendor/bundle
bundle config set --local path "vendor/bundle"
```

```bash
bundle install
npm install
npm run build:js
bundle exec jekyll serve -H 0.0.0.0 -w --config _config.yml,_config_docker.yml
```

然后打开 `http://localhost:4000`。