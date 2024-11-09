# Hello World Mac App

这是一个简单的Mac桌面应用程序，用SwiftUI编写。运行后会显示一个写有"Hello, world!"的小窗口。

## 最简单的运行方式

1. 安装Xcode
   - 打开Mac App Store（在程序坞中点击App Store图标）
   - 搜索"Xcode"
   - 下载安装官方的Xcode（蓝色锤子图标，约15GB）
   - 首次启动Xcode时，按提示安装额外组件

2. 运行项目
   - 下载本项目所有文件
   - 双击打开HelloWorld.xcodeproj文件（或从Xcode的File > Open菜单打开）
   - 点击左上角的运行按钮（▶）或按Command + R
   - 稍等片刻，Hello World窗口就会出现

## 项目结构

- HelloWorldApp.swift: 应用程序入口点
- ContentView.swift: 主视图内容

## 常见问题（简单方式）

1. 如果运行按钮是灰色的：
   - 等待Xcode完成项目索引（顶部会显示进度）
   - 确保没有代码错误（红色错误标记）

2. 如果提示需要信任开发者：
   - 打开系统设置
   - 进入隐私与安全性
   - 点击"仍要打开"或类似的信任按钮

---

## 进阶开发方式

如果你想尝试更轻量级的开发方式，或者深入了解命令行开发，可以考虑以下方案：

### 方案1：使用Xcodes工具管理Xcode

1. 安装Homebrew
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. 安装并使用Xcodes
   ```bash
   brew install --cask xcodes
   open -a Xcodes
   ```
   然后在界面中选择版本下载（支持断点续传）

### 方案2：使用VSCode + 命令行开发

1. 安装命令行工具（约1GB）
   ```bash
   xcode-select --install
   ```

2. 安装VSCode和扩展
   ```bash
   brew install --cask visual-studio-code
   ```
   在VSCode中安装"Swift"扩展

3. 使用命令行编译运行
   ```bash
   # 编译
   swiftc HelloWorld/*.swift -o HelloWorld
   # 运行
   ./HelloWorld
   ```

## 进阶常见问题

1. 命令行相关：
   - 找不到swiftc：重新运行 `xcode-select --install`
   - 权限问题：`sudo DevToolsSecurity -enable`

2. 如果提示"Developer Mode"未启用：
   ```bash
   sudo DevToolsSecurity -enable
   ```
   然后重启电脑

3. 如果brew安装失败：
   - 确保网络连接正常
   - 尝试：`brew update`
   - 权限问题：`sudo chown -R $(whoami) $(brew --prefix)/*`

4. Xcode下载速度慢：
   - 使用Xcodes工具（支持断点续传）
   - 尝试使用其他网络
   - 从developer.apple.com下载（需要Apple ID）

提示：对于初学者，建议使用最简单的方式（直接从App Store安装Xcode）开始。熟悉后可以尝试其他开发方式，选择最适合自己的工作流程。