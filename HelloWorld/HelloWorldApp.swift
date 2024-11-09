// 导入SwiftUI框架，这是苹果用于构建用户界面的现代框架
// SwiftUI不仅支持macOS，还支持iOS、watchOS和tvOS，让你可以用相似的代码开发所有苹果平台
import SwiftUI

// @main 标记表示这是应用程序的入口点，类似其他语言的main函数
// Swift会自动从这里开始运行程序
// 在旧版Swift中，需要手动写main函数，现在@main简化了这个过程
@main
// 定义一个名为HelloWorldApp的结构体，它遵循App协议
// App协议是SwiftUI提供的，用于定义应用程序的基本结构
// 在SwiftUI 2.0（iOS 14/macOS 11）之后引入，替代了旧的AppDelegate模式
struct HelloWorldApp: App {
    // var body: some Scene 的详细解释：
    // - var 表示这是一个变量
    // - body 是属性名，这个名字是App协议要求的
    // - some Scene 表示这个属性返回某种类型的Scene
    //   - some 是Swift的类型抽象，表示"某个具体的类型，但我们不需要写出具体是哪个"
    //   - Scene 是SwiftUI中表示"场景"的协议，WindowGroup就是一种Scene
    //   - 使用Scene而不是Window，是因为不同平台有不同的展现形式：
    //     * macOS：独立窗口
    //     * iOS：全屏或分屏
    //     * iPadOS：多窗口
    var body: some Scene {
        // WindowGroup 是macOS应用的基本窗口容器
        // 它会自动处理窗口的基本功能：
        // - 标题栏和交通灯按钮（红黄绿三个按钮）
        // - 窗口拖动和调整大小
        // - 多窗口支持（用户可以打开多个窗口）
        // - 窗口状态保存和恢复
        // - 集成系统特性（全屏、暗黑模式等）
        WindowGroup {
            // ContentView() 创建主视图的实例
            // 这个视图的内容定义在 ContentView.swift 文件中
            // SwiftUI使用声明式语法，这一行代码实际上会：
            // 1. 创建视图实例
            // 2. 设置视图的环境（如颜色方案、字体大小等）
            // 3. 处理视图的生命周期
            // 4. 自动处理视图的更新和重绘
            ContentView()
        }
    }
}

// 补充知识：
// 1. SwiftUI的应用程序结构是声明式的，这与传统的命令式编程不同
// 2. 整个应用程序是一个状态机，UI会随状态自动更新
// 3. App协议提供了很多可以覆盖的生命周期方法
// 4. 可以添加commands()修饰符来自定义菜单
// 5. 可以添加多个WindowGroup来支持不同类型的窗口
// 6. 可以使用Settings场景来添加偏好设置窗口
// 
// 示例扩展：
// WindowGroup {
//     ContentView()
// }
// .commands {
//     // 添加自定义菜单
//     CommandMenu("自定义") {
//         Button("操作") { }
//     }
// }
// .windowStyle(.hiddenTitleBar) // 自定义窗口样式
// .windowToolbarStyle(.unified) // 统一工具栏样式 