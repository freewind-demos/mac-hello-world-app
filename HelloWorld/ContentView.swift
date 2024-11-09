// 导入SwiftUI框架，获取View、Text等类型
// SwiftUI是苹果在2019年推出的新一代UI框架，用于替代旧的AppKit/UIKit
// 它采用声明式语法，让界面开发变得更简单
import SwiftUI

// 定义主视图结构体，遵循View协议
// Swift中的struct（结构体）和class（类）类似，但struct是值类型，更轻量
// 在SwiftUI中，推荐使用struct来定义视图，因为它性能更好
struct ContentView: View {
    // var body: some View 的详细解释：
    // - var 表示这是一个变量（Swift中还有let表示常量）
    // - body 是属性名，这个名字是View协议要求的
    // - some View 表示返回某种View类型
    //   - some 是Swift的"不透明类型"特性，它告诉编译器：
    //     "这里会返回一个具体的View类型，但使用者不需要知道具体是哪种View"
    //   - View 是SwiftUI中所有视图组件都必须遵循的协议
    //   - 使用some View而不是具体类型可以隐藏实现细节，使代码更灵活
    var body: some View {
        // Text 是SwiftUI提供的基本文本视图组件
        // 它会自动处理字体渲染、自动换行等复杂功能
        // 在macOS中，Text会自动使用系统字体和颜色主题
        Text("Hello, world!")
            // 方法链式调用，每个方法都会返回一个新的修改后的视图
            // Swift的方法可以写在多行，使用点号连接
            // padding() 在文本周围添加一些空白间距
            // 不加参数时会使用系统默认的边距值
            .padding()
            // frame 设置视图的大小
            // - width: 宽度为200点（points，苹果的尺寸单位，1点在标准屏幕上约等于1像素）
            // - height: 高度为100点
            // - 如果内容超出frame，默认会被裁剪
            // - frame是建议值，实际大小可能会根据内容和布局调整
            .frame(width: 200, height: 100)
            
            // 这里还可以添加更多修饰符，例如：
            // .background(.blue) // 添加背景色
            // .foregroundColor(.white) // 设置文字颜色
            // .font(.title) // 设置字体
            // .border(.red) // 添加边框
    }
}

// 这是SwiftUI的预览功能，用于在Xcode中实时查看视图效果
// #Preview 是一个宏，用于标记预览代码
// 宏是Swift中的代码生成工具，可以在编译时生成代码
// 预览功能只在开发时使用，不会影响最终的应用程序
#Preview {
    // 创建一个ContentView实例用于预览
    // Swift中创建实例不需要new关键字
    // 预览中可以设置不同的环境来测试视图在不同条件下的表现
    ContentView()
}

// 补充知识：
// 1. SwiftUI的视图是不可变的，每次修改都会创建新的视图实例
// 2. 视图的刷新是自动的，不需要手动调用刷新方法
// 3. SwiftUI会自动处理暗黑模式、动态字体大小等系统特性
// 4. 在真机运行时，SwiftUI会自动处理高DPI屏幕的显示
// 5. ContentView可以嵌套使用其他自定义视图，构建复杂界面
// 6. Swift的编译器会在编译时检查视图的正确性，避免运行时错误