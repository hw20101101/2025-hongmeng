import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

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
        //绑定按钮点击事件
        .onClick(() => {
          console.info('click back button')
          try {
            router.back();
            console.info('success in return')
          } catch (err) {
            let code = (err as BusinessError).code;
            let msg = (err as BusinessError).message;
            console.error(`failed to return  code ${code}, msg ${msg}`)
          }
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}