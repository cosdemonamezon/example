import 'package:example/screens/products/detailProducts.dart';
import 'package:example/screens/products/listProducts.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Column(
                children: List.generate(
                  allProducts.length,
                  (index) => Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 20, 0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailProducts(
                                    products: allProducts[index],
                                  ),
                                ));
                          },
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.grey, width: 2.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Image.asset(
                                      allProducts[index].imgae,
                                      //scale: 3,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Row(
                                        //   children: [
                                        //     Text(
                                        //       'เลขดำเนินการ: ',
                                        //       style: TextStyle(
                                        //         fontFamily: 'Prompt',
                                        //       ),
                                        //     ),
                                        //     Text(
                                        //       controller.allDoc?[index].code ?? '',
                                        //       style: TextStyle(
                                        //         fontFamily: 'Prompt',
                                        //         fontSize: 10,
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            // Text(
                                            //   'รายการ: ',
                                            //   style: TextStyle(
                                            //     fontFamily: 'Prompt',
                                            //     fontSize: 10,
                                            //     fontWeight: FontWeight.w500,
                                            //   ),
                                            // ),
                                            SizedBox(
                                              width: 190,
                                              child: Text(
                                                allProducts[index].title,
                                                style: TextStyle(
                                                  fontFamily: 'Prompt',
                                                  fontSize: 13,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.clip,
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Row(
                                        //   children: [
                                        //     Text(
                                        //       'สถานะ: ',
                                        //       style: TextStyle(
                                        //         fontFamily: 'Prompt',
                                        //       ),
                                        //     ),
                                        //     SizedBox(
                                        //       width: 140,
                                        //       child: Text(
                                        //         controller.allDoc?[index].doc_type_process?.name ?? "",
                                        //         style: TextStyle(
                                        //           fontFamily: 'Prompt',
                                        //           color: Colors.red,
                                        //           fontSize: 12,
                                        //           fontWeight: FontWeight.bold,
                                        //         ),
                                        //         maxLines: 2,
                                        //         overflow: TextOverflow.clip,
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                        Row(
                                          children: [
                                            // Text(
                                            //   'วันที่เริ่ม: ',
                                            //   style: TextStyle(
                                            //     fontFamily: 'Prompt',
                                            //   ),
                                            // ),
                                            Text(
                                              allProducts[index].endTitle,
                                              style: TextStyle(
                                                fontFamily: 'Prompt',
                                                fontSize: 13,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.clip,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'ดูรายละเอียดเพิ่มเติม',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontFamily: 'Prompt',
                                            color: Colors.red,
                                            decoration: TextDecoration.underline,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TrackList2 extends StatelessWidget {
  TrackList2({Key? key, this.title, this.subTitle, this.code, this.date, this.time, this.onTap, this.color, this.text})
      : super(key: key);
  String? title;
  String? code;
  String? subTitle;
  String? date;
  String? time;
  Color? color;
  String? text;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: color == null ? 190 : 210,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blue, width: 3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                code ?? '',
                style: TextStyle(
                  fontSize: 12,
                ),
                overflow: TextOverflow.fade,
                maxLines: 2,
              ),
              Text(
                date ?? '',
                style: TextStyle(
                  fontSize: 12,
                ),
                overflow: TextOverflow.fade,
                maxLines: 2,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title ?? '',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subTitle ?? '',
            style: TextStyle(
              fontSize: 12,
            ),
            overflow: TextOverflow.fade,
            maxLines: 2,
          ),
          SizedBox(
            height: 10,
          ),
          color == null
              ? SizedBox.shrink()
              : Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      text ?? '',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 112, 46, 227)),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(13)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ))),
              onPressed: onTap,
              child: Text("ดูอีกครั้ง", style: TextStyle(fontSize: 14)),
            ),
          )
        ],
      ),
    );
  }
}
