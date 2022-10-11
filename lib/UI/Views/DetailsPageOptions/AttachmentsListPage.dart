import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../Utils/Constants.dart';

class AttachmentsListPage extends StatefulWidget {

  @override
  State<AttachmentsListPage> createState() => _AttachmentsListPageState();
}

class _AttachmentsListPageState extends State<AttachmentsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color2),
        title: Text(
          translate('attachments_page.attachments'),
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                SizedBox(height: 2,),
                ListTile(
                  trailing: Icon(Icons.cloud_download_outlined, color: Colors.grey, size: 30,),
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/doc.png")
                      )
                    ),
                  ),
                  title: AutoSizeText("Home-Attachment-Report",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      AutoSizeText("File size: ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      AutoSizeText("51 KB",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.grey.shade700,), //                           <-- Divider
              ],
            );
          },
        ),
      ),
    );
  }
}
