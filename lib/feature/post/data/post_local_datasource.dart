import 'package:getit_example/feature/post/data/post_datasource.dart';
import 'package:getit_example/feature/post/domain/post.dart';

class PostLocalDataSource implements PostDataSource {
  @override
  List<Post> getPostList() {
    return [
      Post(
        id: 1,
        name: "[Golang] มาใช้ Wire เพื่อช่วยทำ Dependency Injection กันเถอะ",
        detail: "บล็อคนี้ไม่อยากพิมพ์เยอะ เพราะวิธีใช้มันน้อย และง่ายมาก ๆ",
        image: "https://prongbang.github.io/assets/images/golang/9.png",
        date: "By Endtry Studio, Nov 9, 2019",
      ),
      Post(
        id: 2,
        name:
            "[Golang] มาดูว่าเขียน API ด้วย Golang ที่ Deploy บน Docker ว่าจะต้องใช้ทรัพยากรเครื่องไปเท่าไร เมื่อเทียบกับ Ktor ที่เขียนด้วย Kotlin",
        detail:
            "เพื่อเป็นทางเลือกให้กับใครหลาย ๆ คนตัดสินใจได้ง่ายขึ้น ว่าถ้างบมีน้อยควรเก็บอะไรไว้เป็นตัวเลือกบ้าง",
        image: "https://prongbang.github.io/assets/images/golang/8.png",
        date: "By Endtry Studio, Mar 30, 2019",
      ),
      Post(
        id: 3,
        name: "[Golang] มา Deploy Golang บน Heroku กันเถอะ",
        detail:
            "ของฟรีก็มีในโลกนะ (ที่จริงก็มีมานานแล้ว แต่เพิ่งเอามาเขียน T^T)",
        image: "https://prongbang.github.io/assets/images/golang/7.png",
        date: "By Endtry Studio, Mar 23, 2019",
      ),
      Post(
        id: 4,
        name:
            "[Golang] หาส่วนของ code ที่ไม่ถูกทดสอบด้วย Test Coverage กันเถอะ",
        detail:
            "เป็นเครื่องมือที่ช่วยทำให้นักพัฒนาได้เห็นว่าส่วนไหนที่ยังไม่ได้เขียน Test บ้าง มาดูว่าต้องทำยังไง",
        image: "https://prongbang.github.io/assets/images/golang/6.png",
        date: "By Endtry Studio, Jan 15, 2019",
      ),
      Post(
        id: 5,
        name:
            "[Golang] มาเขียน RESTful API หรือ Microservice โดยใช้ Clean Architecture กัน",
        detail:
            "เพื่อรองรับความซับซ้อนที่จะเกิดขึ้นในอนาคต จำเป็นอย่างยิ่งที่จะต้องเอา Design Pattern ตัวใดตัวหนึ่งมาแก้ปัญหาในเรื่องนั้น ๆ ซึ่งโพสนี้เราจะมาใช้ Clean Architecture กัน ๆ",
        image: "https://prongbang.github.io/assets/images/golang/5.png",
        date: "By Endtry Studio, Jan 9, 2019",
      ),
      Post(
        id: 6,
        name:
            "[Android] เมื่ออยากให้ Android รับ/ส่งข้อมูลที่มีความเร็วกว่า REST ลองเปลี่ยนมาใช้ gRPC สิ",
        detail:
            "หลาย ๆ คนอาจจะเขียน Android ต่อกับ REST กัน ซึ่งกว่าเราจะเขียนเชื่อมต่อได้ค่อนข้างใช้พลังเหมือนกัน แต่ว่าถ้าเราใช้ gRPC ตัว Android Studio มัน Generate ส่วนที่เชื่อมต่อกับ gRPC ให้เราเลยโดยไม่ต้องเขียนโค้ด เราทำเพียงแค่เรียกใช้เท่านั้น มาดูกันว่าต้องทำยังไง",
        image: "https://prongbang.github.io/assets/images/android/15.png",
        date: "By Endtry Studio, Dec 28, 2018",
      ),
      Post(
        id: 7,
        name:
            "[Docker] อยากมีระบบจัดการ photos, videos, log files, backups ใช่มั้ย ใช้ Minio สิรอไร",
        detail: "ลดพลังงานการ Coding ได้เยอะเลยมาดูว่าเราจะใช้งานมันยังไง",
        image: "https://prongbang.github.io/assets/images/docker/2.png",
        date: "By Endtry Studio, Dec 16, 2018",
      ),
      Post(
        id: 8,
        name: "[Docker] อยากจัดการ Docker แบบ GUI ใช่มั้ย ใช้ Portainer สิรอไร",
        detail:
            "หลาย ๆ คนอาจจะเคยเล่น Docker มาสักพักแล้วรู้สึกว่าตัวเองจำคำสั่ง Docker ไม่ค่อยได้ แต่ว่า Portainer ช่วยเราได้",
        image: "https://prongbang.github.io/assets/images/docker/1.png",
        date: "By Endtry Studio, Dec 15, 2018",
      ),
    ];
  }
}
