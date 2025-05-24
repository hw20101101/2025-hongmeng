@Entry
@Component
struct Second {
  @State message: string = 'hi there';

  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
        //添加按钮
        Button(){
          Text('Back')
            .fontSize(30)
            .fontWeight(FontWeight.Normal)
        }
        .type(ButtonType.Capsule)
        .margin({
          top:20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
      }
      .width('100%')
    }
    .height('100%')
  }
}