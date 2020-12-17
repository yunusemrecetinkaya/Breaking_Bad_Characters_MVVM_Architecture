class BreakingBadModel {
  final char_id;
  final name;
  final birthday;
  final img;
  final status;
  final nickname;
  final portrayed;

  BreakingBadModel(
      {this.char_id,
      this.name,
      this.birthday,
      this.img,
      this.status,
      this.nickname,
      this.portrayed});

  factory BreakingBadModel.fromJson(Map<String, dynamic> map) {
    return BreakingBadModel(
      char_id: map['char_id'],
      name: map['name'],
      birthday: map['birthday'],
      img: map['img'],
      status: map['status'],
      nickname: map['nickname'],
      portrayed: map['portrayed'],
    );
  }
}
