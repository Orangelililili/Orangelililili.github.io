# 学术主页模板
**学术主页模板是一个基于GitHub Pages的个人和专业作品集网站模板。**

![学术主页模板示例](images/themes/homepage-light.png "学术主页模板示例")

# 快速开始

1. 如果你还没有GitHub账户，请注册一个并确认邮箱（必需！）
1. 点击右上角的"Use this template"按钮
1. 在"New repository"页面，输入你的公开仓库名称为"[你的GitHub用户名].github.io"，这也将是你的网站URL
1. 设置全站配置并添加你的内容
1. 上传任何文件（如PDF、.zip文件等）到`files/`目录。它们将出现在 https://[你的GitHub用户名].github.io/files/example.pdf
1. 通过进入仓库设置的"GitHub pages"部分检查状态
1. （可选）使用`markdown_generator`文件夹中的Jupyter notebooks或python脚本从TSV文件生成出版物和演讲的markdown文件

更多信息请访问：https://academicpages.github.io/

## 本地运行

当你最初在网站上工作时，在推送到GitHub之前能够本地预览更改是非常有用的。要在本地工作，你需要：

1. 克隆仓库并按照上述详细说明进行更新

### 使用不同的IDE
1. 确保你已经安装了ruby-dev、bundler和nodejs
    
    在大多数Linux发行版和[Windows Subsystem Linux](https://learn.microsoft.com/en-us/windows/wsl/about)上，命令是：
    ```bash
    sudo apt install ruby-dev ruby-bundler nodejs
    ```
    如果你看到错误`Unable to locate package ruby-bundler`、`Unable to locate package nodejs`，请运行以下命令：
    ```bash
    sudo apt update && sudo apt upgrade -y
    ```
    然后再次尝试运行`sudo apt install ruby-dev ruby-bundler nodejs`

    在MacOS上，命令是：
    ```bash
    brew install ruby
    brew install node
    gem install bundler
    ```
1. 运行`bundle install`来安装ruby依赖项。如果出现错误，删除Gemfile.lock并重试

    如果你看到文件权限错误，如`Fetching bundler-2.6.3.gem ERROR:  While executing gem (Gem::FilePermissionError) You don't have write permissions for the /var/lib/gems/3.2.0 directory.`或`Bundler::PermissionError: There was an error while trying to write to /usr/local/bin.`
    本地安装Gems（推荐）：
    ```bash
    bundle config set --local path 'vendor/bundle'
    ```
    然后再次尝试运行`bundle install`。如果成功，你应该看到一个名为`vendor`和`.bundle`的文件夹

1. 运行`jekyll serve -l -H localhost`来生成HTML并从`localhost:4000`提供服务。本地服务器将在Markdown（*.md）和HTML文件更改时自动重建和刷新页面，而对核心模板和配置（即`_config.yml`）的更改需要停止并重启Jekyll
    你也可以尝试`bundle exec jekyll serve -l -H localhost`来确保jekyll在你的本地机器上使用特定的依赖项

如果你在Linux上运行，可能需要在能够本地运行之前安装一些额外的依赖项：`sudo apt install build-essential gcc make`

## 使用Docker

在不同的操作系统上工作，或者只是想避免安装依赖项？如果你安装了[Docker](https://www.docker.com/)，你可以使用提供的`Dockerfile`来构建一个为你运行网站的容器

你可以通过在仓库中运行以下命令来构建和执行容器：

```bash
chmod -R 777 .
docker compose up
```

现在你应该能够从`localhost:4000`访问网站

### 在VS Code中使用DevContainer

如果你使用[Visual Studio Code](https://code.visualstudio.com/)，你可以使用这个仓库附带的[Dev Container](https://code.visualstudio.com/docs/devcontainers/containers)。通常VS Code会检测到开发容器配置可用，并询问你是否想使用容器。如果这没有发生，你可以通过**F1->DevContainer: Reopen in Container**手动启动容器。这会在容器中重启你的VS Code，并自动在http://localhost:4000上本地托管你的学术页面。所有更改将在几秒钟后实时更新到该页面

# 维护

模板的错误报告和功能请求应该[通过GitHub提交](https://github.com/academicpages/academicpages.github.io/issues/new/choose)。关于如何设计模板样式的问题，请随时在[GitHub上开始新的讨论](https://github.com/academicpages/academicpages.github.io/discussions)

这个仓库是由[Stuart Geiger](https://github.com/staeiou)从[Minimal Mistakes Jekyll Theme](https://mmistakes.github.io/minimal-mistakes/)分叉（然后分离）的，该主题© 2016 Michael Rose并在MIT许可证下发布（见LICENSE.md）。目前由[Robert Zupko](https://github.com/rjzupkoii)维护，欢迎额外的维护者

## 错误修复和增强

如果你有想要作为拉取请求提交的错误修复和增强，你需要[分叉](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo)这个仓库，而不是将其用作模板。这也将允许你[同步你的副本](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork)模板到你的分叉

不幸的是，像学术主页这样的模板主题存在一个后勤问题，这使得为核心主题获取错误修复和更新变得有点棘手。如果你使用这个模板并自定义它，如果你尝试同步，你可能会遇到合并冲突。如果你想保存你的各种.yml配置文件和markdown文件，你可以删除仓库并再次分叉它。或者你可以手动修补

---
<div align="center">
    
![pages-build-deployment](https://github.com/academicpages/academicpages.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)
[![GitHub contributors](https://img.shields.io/github/contributors/academicpages/academicpages.github.io.svg)](https://github.com/academicpages/academicpages.github.io/graphs/contributors)
[![GitHub release](https://img.shields.io/github/v/release/academicpages/academicpages.github.io)](https://github.com/academicpages/academicpages.github.io/releases/latest)
[![GitHub license](https://img.shields.io/github/license/academicpages/academicpages.github.io?color=blue)](https://github.com/academicpages/academicpages.github.io/blob/master/LICENSE)

[![GitHub stars](https://img.shields.io/github/stars/academicpages/academicpages.github.io)](https://github.com/academicpages/academicpages.github.io)
[![GitHub forks](https://img.shields.io/github/forks/academicpages/academicpages.github.io)](https://github.com/academicpages/academicpages.github.io/fork)
</div>
