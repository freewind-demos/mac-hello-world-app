# Hello World Mac App

这是一个简单的Mac桌面应用程序，用SwiftUI编写。运行后会显示一个写有"Hello, world!"的小窗口。

## 最简单的运行方式

1. 安装Xcode
   - 打开Mac App Store（在程序坞中点击App Store图标）
   - 搜索"Xcode"
   - 下载安装官方的Xcode（蓝色锤子图标，约15GB）
   - 首次启动Xcode时，按提示安装额外组件

2. 运行项目
   - 下载本项目所有文件，保持文件夹结构不变
   - 双击打开HelloWorld.xcodeproj文件（或从Xcode的File > Open菜单打开）
   - 点击左上角的运行按钮（▶）或按Command + R
   - 稍等片刻，Hello World窗口就会出现

## 项目结构

- HelloWorld.xcodeproj: Xcode项目文件
- HelloWorld/HelloWorldApp.swift: 应用程序入口点
- HelloWorld/ContentView.swift: 主视图内容
- HelloWorld/Info.plist: 应用程序配置文件

## 常见问题

1. 如果运行按钮是灰色的：
   - 等待Xcode完成项目索引（顶部会显示进度）
   - 确保没有代码错误（红色错误标记）

2. 如果提示需要信任开发者：
   - 打开系统设置
   - 进入隐私与安全性
   - 点击"仍要打开"或类似的信任按钮

3. 如果提示"Developer Mode"未启用：
   ```bash
   sudo DevToolsSecurity -enable
   ```
   然后重启电脑

4. 如果项目加载失败：
   - 确保下载了所有项目文件
   - 确保保持了正确的文件夹结构
   - 尝试清理项目（Xcode菜单 > Product > Clean Build Folder）

5. 如果Xcode下载速度很慢：
   - 可以尝试使用其他网络
   - 或者从developer.apple.com下载（需要登录Apple ID）

## 项目说明

这是一个最小化的Mac应用程序示例，展示了使用SwiftUI创建窗口程序的基本结构。项目包含：
- 基本的窗口界面
- 标准的窗口控件（关闭、最小化、最大化按钮）
- 可调整大小的窗口

如果你想修改程序：
1. 可以在ContentView.swift中修改显示的文本
2. 可以调整窗口大小（修改frame参数）
3. 可以添加更多的界面元素