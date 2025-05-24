import { font, router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

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
        //绑定按钮点击事件
        .onClick(()=>{
          console.info('success in click the next button')
          //跳转第二页
          router.pushUrl({url:'pages/Second'}).then(() => {
            console.info('jump to second page')
          }).catch((err: BusinessError) => {
            console.error('failed to jump')
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}