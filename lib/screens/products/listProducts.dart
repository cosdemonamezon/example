class Products {
  final int id;
  final String title;
  final String subTitle;
  final String endTitle;
  final String imgae;

  const Products({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.endTitle,
    required this.imgae,
  });
}

final allProducts = [
  Products(
    id: 1,
    title: 'คาร์เนชัน ผลิตภัณฑ์นมสำหรับปรุงอาหารและเบเกอรี่ 1 กก.',
    subTitle:
        'เพิ่มความอร่อยด้วย คาร์เนชัน ผลิตภัณฑ์นมสำหรับปรุงอาหารและเบเกอรี่ ที่มีสีเหลืองนวลน่ารับประทาน และดีต่อสุขภาพ เพราะไม่มีคอเลสเตอรอล เหมาะสำหรับใช้ปรุงอาหารเพื่อเพิ่มความอร่อยกลมกล่อม ทั้งอาหารคาว หวาน เบเกอรี่ เครื่องดื่ม',
    endTitle: '฿64.00/ ถุง',
    imgae: 'assets/images/8858705609415_7_1.webp',
  ),
  Products(
    id: 2,
    title: 'จี 7 กาแฟสำเร็จรูป 3 อิน 1 ขนาด 352 ก.',
    subTitle:
        'กาแฟสำเร็จรูปคุณภาพดีจากเวียดนาม ที่นำเข้าเกรด Premium โดยคัดเฉพาะเมล็ดพันธุ์กาแฟจากแหล่งชั้นนำทั่วโลก มีกลิ่นหอมโดดเด่น กับรสชาติที่ลงตัว ถูกใจคอกาแฟมาแล้วทั่วโลก และยังเป็นกาแฟสำเร็จรูปที่ปราศจากคลอเรสตอรอล',
    endTitle: '฿79.00/ ถุง',
    imgae: 'assets/images/8935024153543_1-20230908152349-.webp',
  ),
  Products(
    id: 3,
    title: 'มิเนเร่ น้ำแร่ธรรมชาติ 330 มล. แพ็ค 12',
    subTitle:
        'มิเนเร่ น้ำแร่ธรรมชาติ 100% ที่ผ่านการกรองทางธรรมชาติ ซึ่งอุดมไปด้วยแร่ธาตุธรรมชาติที่มีประโยชน์หลายชนิด ผ่านกระบวนการผลิตที่ได้มาตรฐานทุกขั้นตอน เพื่อให้ได้น้ำแร่ที่สะอาด และคุณภาพดี เหมาะสำหรับทุกเพศทุกวัย',
    endTitle: '฿85.00/ แพ็ค',
    imgae: 'assets/images/8850127063943_1-20230608101850-.webp',
  ),
  Products(
    id: 4,
    title: 'ทิปโก้ น้ำส้มแมนดาริน 100% ขนาด 1000 มล.',
    subTitle:
        'ทิปโก้ น้ำส้มแมนดาริน คุณค่าเต็มๆ จากผลไม้คุณภาพดีที่ถูกคัดสรรมาเป็นอย่างดีสู่ผู้บริโภค เป็นน้ำส้มคั้นสดแท้จากส้มสดๆ คัดสรรคุณภาพ อุดมไปด้วยวิตามินต่างๆ ที่จำเป็นต่อร่างกาย ไม่เติมน้ำตาล และไม่ใช้วัตถุกันเสีย',
    endTitle: '฿74.00/ กล่อง',
    imgae: 'assets/images/8851013771492_7.jpg',
  ),
  Products(
    id: 5,
    title: 'มิตรผล น้ำตาล ซองยาว ขนาด 6 กรัม 50 ซอง',
    subTitle: 'น้ำตาลทรายบริสุทธิ์ มิตรผล ชนิดซองยาว น้ำตาลที่ผลิตจากวัตถุดิบที่ได้คุณภาพ เป็นผลิตภัณฑ์ที่เชื่อถือได้',
    endTitle: '฿27.50/ ถุง',
    imgae: 'assets/images/8850256430074_1-20221209093942-.webp',
  ),
  Products(
    id: 6,
    title: 'สก๊อต รังนกแท้ รอเยล โกลด์ สูตรไซลิทอล 70 มล. แพ็ค 12',
    subTitle:
        'อร่อยพร้อมได้สุขภาพที่ดีไปกับ เครื่องดื่มรังนกแท้ สก๊อต รอเยล โกลด์ ไซลิทอล ผลิตจากรังนกแท้ซึ่งได้รับการยอมรับในเรื่องของคุณภาพที่มีความเป็นเอกลักษณ์ ผ่านกระบวนการผลิตที่ทันสมัย ทุกขวดผ่านการฆ่าเชื้อด้วยความร้อนสูง จึงเป็นเครื่องดื่มที่สะอาดและได้คุณภาพ',
    endTitle: '฿1,424.00/ แพ็ค',
    imgae: 'assets/images/8852007940337_1-20230815174327-.webp',
  ),
  // Products(
  //   title: 'คลีนิกหมอฟัน',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/delivery-to.png',
  // ),
  // Products(
  //   title: 'คลีนิกเสริม',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/image01.png',
  // ),
  // Products(
  //   title: 'สปาหน้า',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/Asset.png',
  // ),
  // Products(
  //   title: 'สปาตัว',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
  // Products(
  //   title: 'สปาขา',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
  // Products(
  //   title: 'สปาเท้า',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
  // Products(
  //   title: 'นวดแผนไทย 1',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
  // Products(
  //   title: 'นวดแผนไทย 2',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
  // Products(
  //   title: 'นวดแผนไทย 3',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
  // Products(
  //   title: 'นวดแผนไทย 4 ',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
  // Products(
  //   title: 'โรงพยาบาล 1',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
  // Products(
  //   title: 'โรงพยาบาล 2',
  //   subTitle: 'นพ. ... ....',
  //   endTitle: 'เลขที่ 123456789',
  //   imgae: 'assets/icons/hss_logo.png',
  // ),
];
