import 'package:flutter/material.dart';

import '../models/live_info_model.dart';

class LiveList extends StatefulWidget {
  const LiveList({ Key? key, required this.liveListTitle }) : super(key: key);

  final String liveListTitle;

  @override
  State<LiveList> createState() => _LiveListState();
}

class _LiveListState extends State<LiveList> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final liveInfo = LiveInfo.getLiveInfo();
    
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 32,
            child: Text(
              widget.liveListTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: LiveInfo.getLiveInfo().length,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          liveInfo[index].thumbnail.toString(),
                        )
                      ),
                      Container(
                        width: size.width,
                        height: 20,
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          liveInfo[index].title.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                      SizedBox(
                        width: size.width,
                        height: 20,
                        child: Text(
                          liveInfo[index].channel.toString(),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: 20,
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.only(right: 8),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle
                              ),
                            ),
                            Text(liveInfo[index].views.toString())
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}