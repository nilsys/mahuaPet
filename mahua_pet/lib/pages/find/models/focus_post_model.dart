// To parse this JSON data, do
//
//     final focusPostModel = focusPostModelFromJson(jsonString);

import 'dart:convert';

FocusPostModel focusPostModelFromJson(String str) => FocusPostModel.fromJson(json.decode(str));

String focusPostModelToJson(FocusPostModel data) => json.encode(data.toJson());

class FocusPostModel {
    FocusPostModel({
        this.messageId,
        this.userId,
        this.messageType,
        this.messageInfo,
        this.cntComment,
        this.cntAgree,
        this.cntRead,
        this.fileCount,
        this.followStatus,
        this.isSelf,
        this.level,
        this.agreeStatus,
        this.createTime,
        this.ctime,
        this.fileList,
        this.userInfo,
        this.messageLabel,
        this.atusers,
        this.commentList,
    });

    int messageId;
    int userId;
    String messageType;
    String messageInfo;
    int cntComment;
    int cntAgree;
    int cntRead;
    int fileCount;
    String followStatus;
    String isSelf;
    String level;
    String agreeStatus;
    String createTime;
    String ctime;
    List<FileList> fileList;
    UserInfo userInfo;
    MessageLabel messageLabel;
    List<dynamic> atusers;
    List<CommentList> commentList;

    factory FocusPostModel.fromJson(Map<String, dynamic> json) => FocusPostModel(
        messageId: json["messageId"],
        userId: json["userId"],
        messageType: json["messageType"],
        messageInfo: json["messageInfo"],
        cntComment: json["cntComment"],
        cntAgree: json["cntAgree"],
        cntRead: json["cntRead"],
        fileCount: json["fileCount"],
        followStatus: json["followStatus"],
        isSelf: json["isSelf"],
        level: json["level"],
        agreeStatus: json["agreeStatus"],
        createTime: json["createTime"],
        ctime: json["ctime"],
        fileList: List<FileList>.from(json["fileList"].map((x) => FileList.fromJson(x))),
        userInfo: UserInfo.fromJson(json["userInfo"]),
        messageLabel: MessageLabel.fromJson(json["messageLabel"] ?? {}),
        atusers: List<dynamic>.from(json["atusers"].map((x) => x)),
        commentList: List<CommentList>.from(json["commentList"].map((x) => CommentList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "messageId": messageId,
        "userId": userId,
        "messageType": messageType,
        "messageInfo": messageInfo,
        "cntComment": cntComment,
        "cntAgree": cntAgree,
        "cntRead": cntRead,
        "fileCount": fileCount,
        "followStatus": followStatus,
        "isSelf": isSelf,
        "level": level,
        "agreeStatus": agreeStatus,
        "createTime": createTime,
        "ctime": ctime,
        "fileList": List<dynamic>.from(fileList.map((x) => x.toJson())),
        "userInfo": userInfo.toJson(),
        "messageLabel": messageLabel.toJson(),
        "atusers": List<dynamic>.from(atusers.map((x) => x)),
        "commentList": List<dynamic>.from(commentList.map((x) => x.toJson())),
    };
}

class CommentList {
    CommentList({
        this.commentId,
        this.commentInfo,
        this.userId,
        this.messageId,
        this.nickname,
        this.atUsers,
    });

    int commentId;
    String commentInfo;
    int userId;
    int messageId;
    String nickname;
    List<dynamic> atUsers;

    factory CommentList.fromJson(Map<String, dynamic> json) => CommentList(
        commentId: json["commentId"],
        commentInfo: json["commentInfo"],
        userId: json["userId"],
        messageId: json["messageId"],
        nickname: json["nickname"],
        atUsers: List<dynamic>.from(json["atUsers"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "commentId": commentId,
        "commentInfo": commentInfo,
        "userId": userId,
        "messageId": messageId,
        "nickname": nickname,
        "atUsers": List<dynamic>.from(atUsers.map((x) => x)),
    };
}

class FileList {
    FileList({
        this.fileId,
        this.fileUrl,
        this.fileType,
        this.height,
        this.width,
    });

    int fileId;
    String fileUrl;
    String fileType;
    String height;
    String width;

    factory FileList.fromJson(Map<String, dynamic> json) => FileList(
        fileId: json["fileId"],
        fileUrl: json["fileUrl"],
        fileType: json["fileType"],
        height: json["height"],
        width: json["width"],
    );

    Map<String, dynamic> toJson() => {
        "fileId": fileId,
        "fileUrl": fileUrl,
        "fileType": fileType,
        "height": height,
        "width": width,
    };
}

class MessageLabel {
    MessageLabel({
        this.labelId,
        this.labelName,
    });

    int labelId;
    String labelName;

    factory MessageLabel.fromJson(Map<String, dynamic> json) => MessageLabel(
        labelId: json["labelId"] ?? 0,
        labelName: json["labelName"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "labelId": labelId,
        "labelName": labelName,
    };
}

class UserInfo {
    UserInfo({
        this.userId,
        this.headImg,
        this.nickname,
        this.city
    });

    int userId;
    String headImg;
    String nickname;
    String city;

    factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        userId: json["userId"],
        headImg: json["headImg"],
        nickname: json["nickname"],
        city: json["city"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "headImg": headImg,
        "nickname": nickname,
        'city': city
    };
}