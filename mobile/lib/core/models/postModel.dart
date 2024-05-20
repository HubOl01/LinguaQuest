// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<PostModel> postsFromJson(String str) => List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String postsToJson(List<PostModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostModel {
    int? idPost;
    final String title;
    final String description;
    final bool isDraft;
    final String rejectionReason;
    DateTime? dateCreated;
    DateTime? dateUpdated;
    final int userId;
    int? publicationStatusId;

    PostModel({
        this.idPost,
        required this.title,
        required this.description,
        required this.isDraft,
        required this.rejectionReason,
        this.dateCreated,
        this.dateUpdated,
        required this.userId,
        this.publicationStatusId,
    });

    PostModel copyWith({
        int? idPost,
        String? title,
        String? description,
        bool? isDraft,
        String? rejectionReason,
        DateTime? dateCreated,
        DateTime? dateUpdated,
        int? userId,
        int? publicationStatusId,
    }) => 
        PostModel(
            idPost: idPost ?? this.idPost,
            title: title ?? this.title,
            description: description ?? this.description,
            isDraft: isDraft ?? this.isDraft,
            rejectionReason: rejectionReason ?? this.rejectionReason,
            dateCreated: dateCreated ?? this.dateCreated,
            dateUpdated: dateUpdated ?? this.dateUpdated,
            userId: userId ?? this.userId,
            publicationStatusId: publicationStatusId ?? this.publicationStatusId,
        );

    factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        idPost: json["idPost"],
        title: json["title"],
        description: json["description"],
        isDraft: json["isDraft"],
        rejectionReason: json["rejectionReason"],
        dateCreated: DateTime.parse(json["date_created"]),
        dateUpdated: DateTime.parse(json["date_updated"]),
        userId: json["userId"],
        publicationStatusId: json["publicationStatusId"],
    );

    Map<String, dynamic> toJson() => {
        "idPost": idPost,
        "title": title,
        "description": description,
        "isDraft": isDraft,
        // "rejectionReason": rejectionReason,
        // "date_created": dateCreated!.toIso8601String(),
        // "date_updated": dateUpdated!.toIso8601String(),
        "userId": userId,
        // "publicationStatusId": publicationStatusId ?? 3,
    };
}
