import { font } from '@kit.ArkUI';

@Entry
@Component

//注：应用/服务包含的页面
struct Index {
  @State message: string = 'Hello World 2';

  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
        //添加按钮
        Button(){
          Text('next').
          fontSize(25).
          fontWeight(FontWeight.Normal)
        }
        .type(ButtonType.Capsule)
        .margin({
          top:20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('%5')
      }
      .width('100%')
    }
    .height('100%')
  }
}