import 'package:flutter/material.dart';

import '../models/popular_streamers.dart';

class PopularStreamers extends StatefulWidget {
  const PopularStreamers({ Key? key }) : super(key: key);

  @override
  State<PopularStreamers> createState() => _PopularStreamersState();
}

class _PopularStreamersState extends State<PopularStreamers> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final popularStreamers = PopularStreamersModel.getPopularStreamersModel();

    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 32,
            child: const Text(
              'Popular Streams',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                  color: const Color(0xFF2a2939),
                  borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.greenAccent,
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: NetworkImage(popularStreamers[index].avatar.toString()),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popularStreamers[index].channel.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text('${popularStreamers[index].totalFollowers.toString()} followers')
                        ],
                      )
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