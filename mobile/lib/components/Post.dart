import 'package:LinguaQuest/core/utils/statuses.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Post extends StatefulWidget {
  final String userAvatar;
  final String user;
  bool isPostPublic;
  String? image;
  String? title;
  String? description;
  final int status;
  final bool like;
  Post(
      {required this.userAvatar,
      required this.user,
      this.title,
      this.image,
      required this.like,
      this.description,
      required this.status,
      this.isPostPublic = false});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;
  @override
  void initState() {
    isLiked = widget.like;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onDoubleTap: () {
          setState(() {
            isLiked = true;
          });
        },
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          // shape: S,
          elevation: 2,
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const ClipRRect(
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(widget.user)
                    ],
                  ),
                ),
                widget.isPostPublic
                    ? const SizedBox()
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: statusColor(widget.status),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5),
                            child: Text(
                              status(widget.status),
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                widget.isPostPublic
                    ? const SizedBox()
                    : const SizedBox(
                        height: 10,
                      ),
                GestureDetector(
                  onTap: () {
                    showImageViewer(context, Image.network(widget.image!).image,
                        swipeDismissible: true, doubleTapZoomable: true);
                  },
                  child: Container(
                      width: context.width,
                      height: widget.image != null ? context.width : null,
                      child: widget.image != null
                          ? CachedNetworkImage(
                              imageUrl: widget.image!,
                              fit: BoxFit.cover,
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(widget.description!, maxLines: 5, overflow: TextOverflow.ellipsis,),
                            )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked ? Colors.red : Colors.black45,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
