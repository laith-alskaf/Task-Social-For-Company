// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostModelAdapter extends TypeAdapter<PostModel> {
  @override
  final int typeId = 3;

  @override
  PostModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostModel(
      time: fields[0] as String?,
      likes: fields[1] as int?,
      comments: (fields[2] as List?)?.cast<CommentModel>(),
      user: fields[3] as UserModel?,
      images: (fields[4] as List?)?.cast<String>(),
      body: fields[5] as String?,
      localOffers: (fields[6] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PostModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.time)
      ..writeByte(1)
      ..write(obj.likes)
      ..writeByte(2)
      ..write(obj.comments)
      ..writeByte(3)
      ..write(obj.user)
      ..writeByte(4)
      ..write(obj.images)
      ..writeByte(5)
      ..write(obj.body)
      ..writeByte(6)
      ..write(obj.localOffers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
