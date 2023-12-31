import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xff1c1c1c);
const kContainer = Color(0xff1c1c1c);
const kFontPrimaryColor = Color(0xffffffff);
const kFontTextColor = Color(0xffaaaaaa);
const kFontSecondTextColor = Color(0xff888888);
const kInputColor = Color(0xffaaaaaa);
const kIconColor = Color(0xffffffff);
const kHintextColor = Color(0xffaaaaaa);
const kLinkTextColor = Color(0xff8e815e);
const kButtonColor = Color(0xffe3d6b3);
const kTextButtonColor = Color(0xff1c1c1c);
const kInputSearchColor = Color(0xff333333);
const kCicleColor = Color(0xffd6c28d);
const kDisableColor = Color(0xFFB0BBC9);
const kSecondaryColor = Color.fromARGB(255, 81, 120, 136);
const kPrimaryColor = Color(0xFF01579B);
const kBorderColor = Color(0xFFF1EEEE);
const kButtoncolor = Color(0xff01b2ab);

const double defaultPadding = 16.0;

const List<String> banners = [
  'assets/images/banner1.png',
  'assets/images/banner2.png',
  'assets/images/banner3.png',
  'assets/images/banner4.png',
];


const List<Map<String, dynamic>> news = [
  {
    'id': 1,
    'image': 'assets/images/new1.png',
    'title': 'เปิดโผ 17 หุ้นเด่น',
    'description': 'โบรกมองดัชนีฟื้นตัวในกรอบ 1,585 – 1,625 จุด หลังบอนด์ยีลด์สหรัฐฯ ย่อตัวคลายความกังวลเฟดสปีดขึ้นดอกเบี้ย คาดฟันด์โฟลว์ต่างชาติไหลกลับตลาดหุ้นไทย เคาะ 17 หุ้นเด่นนายวทัญ จิตต์สมนึก ผู้อำนวยการฝ่ายวิเคราะห์กลยุทธ์ บล.พาย (PI) เปิดเผยว่า   สัปดาห์นี้คาดว่า SET INDEX  ปรับเพิ่มขึ้นในกรอบ 1,585 – 1,625  จุด มีปัจจัยหนุนมาจากอัตราผลตอบแทนพันธบัตรรัฐบาลสหรัฐอายุ 2 และ 10 ปีที่อ่อนตัวลงในวันศุกร์หลังจากประธาน FED บางสาขาออกมาให้ข้อมูลว่าถึงเวลาแล้วที่ FED จะต้องเริ่มหารือเกี่ยวกับการขึ้นดอกเบี้ยในอัตราที่น้อยลง ขณะที่บางท่านให้ความเห็นว่า FED ควรปรับขึ้นดอกเบี้ยไว้บริเวณ 4.5% และปีหน้าควรจะคงไว้ที่ระดับดังกล่าวซึ่งความเห็นล่าสุดจาก CME FED WATCH เริ่มมีท่าทีที่อ่อนลงโดยการประชุมเดือน ธ.ค. จากเดิมตลาดประเมินไว้ว่าจะมีการขึ้นดอกเบี้ย 0.75% น้ำหนักส่วนมากเริ่มลงมาเหลือเพียง 0.5% ผลกระทบต่อประเทศไทยเงินบาทมีโอกาสกลับมาแข็งค่าขึ้นบ้างและมีโอกาสที่ Fund Flow ต่างชาติจะไหลกลับเข้าตลาดหุ้นไทย',
    'date': '18 สิงหาคม 2565'
  },
  {
    'id': 2,
    'image': 'assets/images/new2.png',
    'title': 'อานิสงส์ท่องเที่ยวปลุกเอสเอ็มอี',
    'description': 'สสว. เผยธุรกิจเอเอสเอ็มอีเริ่มเห็นแสงสว่างปลายอุโมงค์ หลังตัวเลขดัชนีเดือนก.ย. อยู่ระดับ 52.9 ฟื้นตัวต่อเนื่องเป็นเดือนที่ 2 แรงหนุนจากธุรกิจท่องเที่ยว มาตรการกระตุ้นกำลังซื้อจากภาครัฐนายวีระพงศ์ มาลัย ผู้อำนวยการสำนักงานส่งเสริมวิสาหกิจขนาดกลางและขนาดย่อม (สสว.) เปิดเผยว่า ดัชนีความเชื่อมั่นผู้ประกอบการ SME (SME Senti ment  Index: SMESI)  ก.ย. อยู่ที่ระดับ 52.9 เพิ่มขึ้น  จากเดือนส.ค.อยู่ที่  51.2 และเป็นการเพิ่มขึ้นติดต่อกันเป็นเดือนที่ 2 ซึ่งมีปัจจัยบวกมาจากกำลังซื้อในภาคการค้าและภาคการบริการเพิ่มขึ้น โดยเฉพาะสาขาการท่องเที่ยวและธุรกิจที่เกี่ยวเนื่อง โดยมีจำนวนนักท่องเที่ยวทั้งคนไทยและต่างประเทศเพิ่มขึ้นต่อเนื่อง เดือนส.ค. จำนวน 18 ล้านคนซึ่งได้รับแรงสนับสนุนมาจากการจัดงานอีเว้นท์และงานประเพณีในแต่ละพื้นที่ที่สามารถดำเนินการได้ตามปกติ ประกอบกับโครงการคนละครึ่งเฟส 5 โครงการเราเที่ยวด้วยกันและโครงการเพื่อสวัสดิการแห่งรัฐ มีส่วนกระตุ้นการจับจ่ายใช้สอยด้วยการเพิ่มกำลังซื้อให้กับประชาชนและเพิ่มยอดขายให้กับผู้ประกอบการโดยเฉพาะกิจการรายย่อยรวมทั้งกิจการภาคการค้าและภาคบริการ',
    'date': '20 สิงหาคม 2565'
  },
  {
    'id': 3,
    'image': 'assets/images/new3.png',
    'title': 'ขนส่งแนะตรวจสภาพรถชำระภาษีล่วงหน้าผ่านออนไลน์',
    'description': 'ขนส่ง แนะเจ้าของรถยนต์อายุการใช้งานเกิน 7 ปี และรถจักรยานยนต์อายุการใช้งานเกิน 5 ปี นำรถเข้าตรวจสภาพก่อนชำระภาษีล่วงหน้าผ่านระบบออนไลน์ เผยตัวเลขผู้ใช้บริการชำระภาษี พื้นที่ 1-5 กวาดรายได้ 771 ล้านบาทนายเสกสม อัครพันธุ์ รองอธิบดีกรมการขนส่งทางบก  ในฐานะโฆษกกรมการขนส่งทางบก (ขบ.)   เปิดเผยว่า กรม ฯ แนะผู้ที่ต้องการชำระภาษีรถประจำปีสามารถชำระล่วงหน้าได้ก่อนครบอายุภาษี  90 วัน ทั้งนี้รถยนต์อายุการใช้งานเกิน 7 ปี รถจักรยานยนต์อายุการใช้งานเกิน 5 ปี รวมถึงรถที่ค้างชำระภาษีเกิน 1 ปี แต่ไม่เกิน 3 ปี สามารถนำรถเข้าตรวจสภาพ ณ สถานตรวจสภาพก่อนชำระภาษีล่วงหน้าผ่านระบบออนไลน์ ทั้งนี้ที่ผ่านมาได้พัฒนาระบบการให้บริการชำระภาษีออนไลน์สำหรับรถยนต์และรถจักรยานยนต์ เพื่อเพิ่มช่องทางในการอำนวยความสะดวกประชาชน โดยในปัจจุบันมีช่องทางการชำระภาษีออนไลน์ เช่น การชำระภาษีออนไลน์ผ่านทางเว็บไซต์กรมการขนส่งทางบก https://eservice.dlt.go.th, แอปพลิเคชัน DLT Vehicle Tax, เคาน์เตอร์เซอร์วิส, แอปพลิเคชัน mPAY และ Truemoney Wallet ซึ่งได้รับความนิยมจากประชาชนเพิ่มมากขึ้น เนื่องจากเป็นช่องทางที่มีความสะดวก และไม่ต้องเดินทางมาที่สำนักงานขนส่งอยู่ที่ไหนก็สามารถชำระภาษีได้',
    'date': '25 สิงหาคม 2565'
  },
  {
    'id': 4,
    'image': 'assets/images/new4.png',
    'title': 'ขึ้นทางด่วนฟรี ! วันหยุดเดือนต.ค. 3 เส้นทาง 60 ด่าน',
    'description': '“กทพ.” ไฟเขียวยกเว้นเว้นค่าทางด่วน 3 เส้นทาง 60 ด่านวันที่ 13 ต.ค.และ 23 ต.ค.นี้ การทางพิเศษแห่งประเทศไทย (กทพ.) เตรียมยกเว้นค่าผ่านทางพิเศษ 3 เส้นทาง คือ ทางพิเศษเฉลิมมหานคร , ทางพิเศษศรีรัช และทางพิเศษอุดรรัถยา ตั้งแต่วันพฤหัสบดีที่ 13 ตุลาคม 2565 เวลา 00.01 น. ถึงเวลา 24.00 น. และวันอาทิตย์ที่ 23 ตุลาคม เวลา 00.01 น. ถึงเวลา 24.00 น. โดยมีรายละเอียดดังนี้',
    'date': '25 สิงหาคม 2565'
  },
  {
    'id': 5,
    'image': 'assets/images/new5.png',
    'title': 'ส่องเลย ! 10 ธุรกิจดาวเด่นส่งท้ายปลายปี 2565 มีอะไรบ้าง',
    'description': 'พาณิชย์เปิด 10 ธุรกิจดาวเด่นส่งท้ายปลายปีนี้และโดดเด่นต่อเนื่องยาวในปี 66 มูลค่าตลาดทะลุกว่า 2 ล้านล้านบาท จะเป็นธุรกิจอะไรบ้างนั้น ตามไปดูกันเลย นายสินิตย์ เลิศไกร รัฐมนตรีช่วยว่าการกระทรวงพาณิชย์ เปิดเผยว่า  หลังจากที่รัฐบาลประกาศเปิดประเทศอย่างเต็มรูปแบบตั้งแต่วันที่ 1 ตุลาคม 2565 ที่ผ่านมา และมีการลดระดับโรคโควิด-19 จาก โรคติดต่ออันตราย เป็น โรคติดต่อที่ต้องเฝ้าระวัง รวมทั้ง มีการผ่อนคลายมาตรการต่างๆ ลง เพื่อต้อนรับนักท่องเที่ยวทั้งในประเทศและต่างประเทศ ทำให้เศรษฐกิจโดยรวมของประเทศกลับมาสดใสคึกคักอีกครั้ง ทั้งนี้กรมพัฒนาธุรกิจการค้า ได้ทำการวิเคราะห์ธุรกิจที่มีแนวโน้มการเติบโตที่น่าสนใจ และถือว่าเป็นธุรกิจดาวเด่นที่น่าจับตามองปลายปี 2565 จำนวน 10 ธุรกิจ และคาดว่า ปี 2566 ธุรกิจดังกล่าวก็ยังคงมีความโดดเด่นอย่างต่อเนื่อง โดยได้ทำการวิเคราะห์จากข้อมูลทางธุรกิจของกรมฯ ตั้งแต่สถิติจำนวนการจดทะเบียนจัดตั้งธุรกิจ จำนวนธุรกิจที่ดำเนินกิจการอยู่ สถานที่ตั้ง งบการเงิน ผลการประกอบธุรกิจ ข้อมูลปัจจัยทางธุรกิจและเศรษฐกิจอื่นๆ ทั้งภายในและภายนอกกรมฯ ',
    'date': '14 สิงหาคม 2565'
  },
  {
    'id': 6,
    'image': 'assets/images/new6.png',
    'title': 'สมอ.คุมเข้มมาตรฐานเครื่องเล่นสนามเด็กมีผลบังคับใช้ 21 ธ.ค.',
    'description': '“สุริยะ” สั่งคุมเข้มเครื่องเล่นสนาม ทั้งชิงช้า กระดานลื่น ม้าหมุน และอุปกรณ์โยก ต้องได้มาตรฐาน ย้ำ เด็กๆ ต้องปลอดภัย กำชับ สมอ. แจ้งผู้ประกอบการยื่นขออนุญาต ก่อนกฎหมายจะมีผลบังคับใช้ 21 ธ.ค.นี้ ฝ่าฝืนมีบทลงโทษทั้งจำและปรับนายสุริยะ  จึงรุ่งเรืองกิจ  รมว.อุตสาหกรรม เปิดเผยว่า หลังจากที่คณะกรรมการมาตรฐานผลิตภัณฑ์อุตสาหกรรม (กมอ.) ได้เห็นชอบเมื่อวันที่ 19  ม.ค. 64  ให้เครื่องเล่นสนาม 4 รายการ ได้แก่ ชิงช้า กระดานลื่น ม้าหมุน และอุปกรณ์โยก เป็นสินค้าควบคุมเพื่อคุ้มครองความปลอดภัยแก่เด็กๆ เนื่องจากเครื่องเล่นสนามเป็นเครื่องเล่นที่มีอยู่ในศูนย์พัฒนาเด็กเล็กและโรงเรียนประถมศึกษาทั่วประเทศ ซึ่งเป็นสาเหตุหนึ่งที่ทำให้เกิดอุบัติเหตุกับเด็ก ๆ อยู่บ่อยครั้ง ผมจึงสั่งการให้ สมอ. เร่งรัดดำเนินการประกาศให้เครื่องเล่นสนาม ทั้งชิงช้า กระดานลื่น ม้าหมุน และอุปกรณ์โยก เป็นสินค้าควบคุมเพื่อให้เกิดความปลอดภัยกับเด็ก ๆ ซึ่งขณะนี้ สมอ.ได้ดำเนินการตามขั้นตอนจนถึงการประกาศใช้มาตรฐานแล้ว โดยจะมีผลบังคับใช้ในวันที่ 21 ธ.ค. นี้ โดยผู้ประกอบการทุกรายทั้งผลิตและนำเข้า จะต้องผลิตและนำเข้าเครื่องเล่นสนามที่ได้มาตรฐานเท่านั้น โดยเฉพาะโครงสร้างและปริมาณโลหะหนักที่เป็นส่วนประกอบจะต้องไม่เกินเกณฑ์ที่มาตรฐานกำหนดไว้ ซึ่งการบังคับใช้กฎหมายดังกล่าวจะช่วยลดความเสี่ยงอันตรายต่อเด็ก ๆ ได้อย่างมีประสิทธิภาพ',
    'date': '5 สิงหาคม 2565'
  },
];

const List<Map<String, dynamic>> promotions = [
  {
    'id': 1,
    'image': 'assets/images/p1.png',
    'title': 'ดรีมมี่ ส่งท้ายปี ที่ Lotus',
    'description': 'ครีมครีมเทียม คอฟฟี่ ดรีมมี่ ขนาด 900 กรัม พิเศษ 79 บาท ปกติ 89 บาท',
    'date': 'ตั้งแต่ 9 ธ.ค. 64 – 5 ม.ค. 65'
  },
  {
    'id': 2,
    'image': 'assets/images/p2.png',
    'title': 'โปรโมชั่น 9.9 Super Shopping Day',
    'description': 'พบกับการกลับมาอีกครั้งของสินค้าที่ทุกคนรอคอย Nuberlite Collagen Hydrolysate คอลลาเจน ไฮโดรไลเซต 100% ด้วยคุณสมบัติ ไม่เติมสี, ไม่แต่งกลิ่น, ไม่มีสารก่อภูมิแพ้ มีกระบวนการผลิตที่ได้มาตรฐา ละลายง่ายทั้งในน้ำร้อน และ น้ำเย็น เป็น Clean Label มีเอกสารรับรองคุณภาพ เช่น Halal, และอื่นๆ เป็นต้น',
    'date': 'ตั้งแต่ 9-12 ก.ย. 65 – 5 ม.ค. 66'
  },
  {
    'id': 3,
    'image': 'assets/images/p3.png',
    'title': 'สบู่ไรซ์เบอรี่',
    'description': 'สบู่ไรซ์เบอรี่ ซื้อ 2 แถม 1 เพียงซื้อสบู่ไรซ์เบอร์รี่ 2 ก้อน ก็รับเพิ่มอีก 1 ก้อนฟรี!',
    'date': '1 ก.ย. 2562 - 30 ก.ย. 2562'
  },
  {
    'id': 4,
    'image': 'assets/images/p4.png',
    'title': 'Advice ส่งโปรโมชั่น “ลด แลก แจกสะบัด”',
    'description': 'สำหรับกลยุทธ์ในการขับเคลื่อนตลาดของแอดไวซ์ในไตรมาส 3-4 เพื่อส่งเสริมและสนับสนุนการเติบโตอย่างต่อเนื่องทั้งในตลาดออนไลน์และออฟไลน์ สำหรับกลุ่มสินค้าโน้ตบุ๊ค เดสก์ท็อป ดีไอวาย คอมโพเนนท์ และ AIO เนื่องจากเป็นกลุ่มสินค้าที่มีการนำไปใช้งานและเพื่อความบันเทิงกลุ่มเกมมิ่งทั้งคอมประกอบและโน้ตบุ๊ค  ',
    'date': '6 กันยายน 2562'
  },
  {
    'id': 5,
    'image': 'assets/images/p5.png',
    'title': 'เติมคุณประโยชน์ทุกเช้ากับโฟร์โมสต์!',
    'description': 'เปิดดีลดีลดีอร่อยครบ คุณประโยชน์พร้อม 🍖 ฟรี! ชุดโอเมก้าปาร์ตี้บาร์บีคิว bitlyเพิ่มโอกาสการเรียนรู้ควบคู่ความสนุกในทุกกิจกรรมกับโฟร์โมสต์ 🥛',
    'date': 'ตั้งแต่วันที่ 1 ก.ย. – 14 ก.ย. 66'
  },
  {
    'id': 6,
    'image': 'assets/images/p6.png',
    'title': 'ยกขบวนสินค้า ลดราคา สุดปัง!',
    'description': 'โปรโมชั่นส่งเสริมการขายนี้สำหรับสมาชิก แม็คโคร โฮเรก้า อคาเดมี ผู้ประกอบการประเภทอาหาร และเครื่องดื่ม ที่สมัครสมาชิก แม็คโคร โฮเรก้า อคาเดมี สำเร็จก่อนวันที่ 15 ก.พ. 2566 เท่านั้น (วันที่ลูกค้าทำการสมัครสมาชิก  ยึดจากฐานข้อมูลของบริษัท สยาม แม็คโคร จำกัด เท่านั้น)',
    'date': 'ระยะเวลาโปรโมชั่น : 8 มี.ค. – 18 เม.ย. 2566'
  },
];

const List<Map<String, dynamic>> notifications = [
  {
    'id': 1,
    'no': 'P1000131',
    'title': 'สั่งซื้อสินค้าสำเร็จ',
    'description': 'คำสั่งซื้อ P1000131 สำเร็จแล้ว',
    'date': '5 ม.ค. 65'
  },
  {
    'id': 2,
    'no': 'P1000133',
    'title': 'สั่งซื้อสินค้าสำเร็จ',
    'description': 'คำสั่งซื้อ P1000133 สำเร็จแล้ว',
    'date': '5 ม.ค. 65'
  },
  {
    'id': 3,
    'no': 'P1000133',
    'title': 'สั่งซื้อสินค้าสำเร็จ',
    'description': 'คำสั่งซื้อ P1000133 สำเร็จแล้ว',
    'date': '5 ม.ค. 65'
  },
  {
    'id': 4,
    'no': 'P1000134',
    'title': 'สั่งซื้อสินค้าสำเร็จ',
    'description': 'คำสั่งซื้อ P1000134 สำเร็จแล้ว',
    'date': '5 ม.ค. 65'
  },
  {
    'id': 5,
    'no': 'P1000135',
    'title': 'สั่งซื้อสินค้าสำเร็จ',
    'description': 'คำสั่งซื้อ P1000135 สำเร็จแล้ว',
    'date': '5 ม.ค. 65'
  },
  {
    'id': 6,
    'no': 'P1000136',
    'title': 'สั่งซื้อสินค้าสำเร็จ',
    'description': 'คำสั่งซื้อ P1000136 สำเร็จแล้ว',
    'date': '5 ม.ค. 65'
  },
  {
    'id': 7,
    'no': 'P1000137',
    'title': 'สั่งซื้อสินค้าสำเร็จ',
    'description': 'คำสั่งซื้อ P1000137 สำเร็จแล้ว',
    'date': '5 ม.ค. 65'
  },
  {
    'id': 8,
    'no': 'P1000138',
    'title': 'สั่งซื้อสินค้าสำเร็จ',
    'description': 'คำสั่งซื้อ P1000138 สำเร็จแล้ว',
    'date': '5 ม.ค. 65'
  },
];

