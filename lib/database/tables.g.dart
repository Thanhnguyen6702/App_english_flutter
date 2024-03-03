// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables.dart';

// ignore_for_file: type=lint
class $TopicsTable extends Topics with TableInfo<$TopicsTable, Topic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TopicsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _topicMeta = const VerificationMeta('topic');
  @override
  late final GeneratedColumn<String> topic = GeneratedColumn<String>(
      'topic', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subtopicMeta =
      const VerificationMeta('subtopic');
  @override
  late final GeneratedColumn<String> subtopic = GeneratedColumn<String>(
      'subtopic', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, topic, subtopic, image];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'topics';
  @override
  VerificationContext validateIntegrity(Insertable<Topic> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('topic')) {
      context.handle(
          _topicMeta, topic.isAcceptableOrUnknown(data['topic']!, _topicMeta));
    } else if (isInserting) {
      context.missing(_topicMeta);
    }
    if (data.containsKey('subtopic')) {
      context.handle(_subtopicMeta,
          subtopic.isAcceptableOrUnknown(data['subtopic']!, _subtopicMeta));
    } else if (isInserting) {
      context.missing(_subtopicMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Topic map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Topic(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      topic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}topic'])!,
      subtopic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subtopic'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
    );
  }

  @override
  $TopicsTable createAlias(String alias) {
    return $TopicsTable(attachedDatabase, alias);
  }
}

class Topic extends DataClass implements Insertable<Topic> {
  final int id;
  final String topic;
  final String subtopic;
  final String image;
  const Topic(
      {required this.id,
      required this.topic,
      required this.subtopic,
      required this.image});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['topic'] = Variable<String>(topic);
    map['subtopic'] = Variable<String>(subtopic);
    map['image'] = Variable<String>(image);
    return map;
  }

  TopicsCompanion toCompanion(bool nullToAbsent) {
    return TopicsCompanion(
      id: Value(id),
      topic: Value(topic),
      subtopic: Value(subtopic),
      image: Value(image),
    );
  }

  factory Topic.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Topic(
      id: serializer.fromJson<int>(json['id']),
      topic: serializer.fromJson<String>(json['topic']),
      subtopic: serializer.fromJson<String>(json['subtopic']),
      image: serializer.fromJson<String>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'topic': serializer.toJson<String>(topic),
      'subtopic': serializer.toJson<String>(subtopic),
      'image': serializer.toJson<String>(image),
    };
  }

  Topic copyWith({int? id, String? topic, String? subtopic, String? image}) =>
      Topic(
        id: id ?? this.id,
        topic: topic ?? this.topic,
        subtopic: subtopic ?? this.subtopic,
        image: image ?? this.image,
      );
  @override
  String toString() {
    return (StringBuffer('Topic(')
          ..write('id: $id, ')
          ..write('topic: $topic, ')
          ..write('subtopic: $subtopic, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, topic, subtopic, image);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Topic &&
          other.id == this.id &&
          other.topic == this.topic &&
          other.subtopic == this.subtopic &&
          other.image == this.image);
}

class TopicsCompanion extends UpdateCompanion<Topic> {
  final Value<int> id;
  final Value<String> topic;
  final Value<String> subtopic;
  final Value<String> image;
  const TopicsCompanion({
    this.id = const Value.absent(),
    this.topic = const Value.absent(),
    this.subtopic = const Value.absent(),
    this.image = const Value.absent(),
  });
  TopicsCompanion.insert({
    this.id = const Value.absent(),
    required String topic,
    required String subtopic,
    required String image,
  })  : topic = Value(topic),
        subtopic = Value(subtopic),
        image = Value(image);
  static Insertable<Topic> custom({
    Expression<int>? id,
    Expression<String>? topic,
    Expression<String>? subtopic,
    Expression<String>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (topic != null) 'topic': topic,
      if (subtopic != null) 'subtopic': subtopic,
      if (image != null) 'image': image,
    });
  }

  TopicsCompanion copyWith(
      {Value<int>? id,
      Value<String>? topic,
      Value<String>? subtopic,
      Value<String>? image}) {
    return TopicsCompanion(
      id: id ?? this.id,
      topic: topic ?? this.topic,
      subtopic: subtopic ?? this.subtopic,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (topic.present) {
      map['topic'] = Variable<String>(topic.value);
    }
    if (subtopic.present) {
      map['subtopic'] = Variable<String>(subtopic.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TopicsCompanion(')
          ..write('id: $id, ')
          ..write('topic: $topic, ')
          ..write('subtopic: $subtopic, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $VocabulariesTable extends Vocabularies
    with TableInfo<$VocabulariesTable, Vocabulary> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VocabulariesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _vietnameseMeta =
      const VerificationMeta('vietnamese');
  @override
  late final GeneratedColumn<String> vietnamese = GeneratedColumn<String>(
      'vietnamese', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _englishMeta =
      const VerificationMeta('english');
  @override
  late final GeneratedColumn<String> english = GeneratedColumn<String>(
      'english', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pronunciationMeta =
      const VerificationMeta('pronunciation');
  @override
  late final GeneratedColumn<String> pronunciation = GeneratedColumn<String>(
      'pronunciation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _id_topicMeta =
      const VerificationMeta('id_topic');
  @override
  late final GeneratedColumn<int> id_topic = GeneratedColumn<int>(
      'id_topic', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES topics (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, vietnamese, english, pronunciation, id_topic];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vocabularies';
  @override
  VerificationContext validateIntegrity(Insertable<Vocabulary> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('vietnamese')) {
      context.handle(
          _vietnameseMeta,
          vietnamese.isAcceptableOrUnknown(
              data['vietnamese']!, _vietnameseMeta));
    } else if (isInserting) {
      context.missing(_vietnameseMeta);
    }
    if (data.containsKey('english')) {
      context.handle(_englishMeta,
          english.isAcceptableOrUnknown(data['english']!, _englishMeta));
    } else if (isInserting) {
      context.missing(_englishMeta);
    }
    if (data.containsKey('pronunciation')) {
      context.handle(
          _pronunciationMeta,
          pronunciation.isAcceptableOrUnknown(
              data['pronunciation']!, _pronunciationMeta));
    } else if (isInserting) {
      context.missing(_pronunciationMeta);
    }
    if (data.containsKey('id_topic')) {
      context.handle(_id_topicMeta,
          id_topic.isAcceptableOrUnknown(data['id_topic']!, _id_topicMeta));
    } else if (isInserting) {
      context.missing(_id_topicMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Vocabulary map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Vocabulary(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      vietnamese: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vietnamese'])!,
      english: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}english'])!,
      pronunciation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pronunciation'])!,
      id_topic: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_topic'])!,
    );
  }

  @override
  $VocabulariesTable createAlias(String alias) {
    return $VocabulariesTable(attachedDatabase, alias);
  }
}

class Vocabulary extends DataClass implements Insertable<Vocabulary> {
  final int id;
  final String vietnamese;
  final String english;
  final String pronunciation;
  final int id_topic;
  const Vocabulary(
      {required this.id,
      required this.vietnamese,
      required this.english,
      required this.pronunciation,
      required this.id_topic});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['vietnamese'] = Variable<String>(vietnamese);
    map['english'] = Variable<String>(english);
    map['pronunciation'] = Variable<String>(pronunciation);
    map['id_topic'] = Variable<int>(id_topic);
    return map;
  }

  VocabulariesCompanion toCompanion(bool nullToAbsent) {
    return VocabulariesCompanion(
      id: Value(id),
      vietnamese: Value(vietnamese),
      english: Value(english),
      pronunciation: Value(pronunciation),
      id_topic: Value(id_topic),
    );
  }

  factory Vocabulary.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Vocabulary(
      id: serializer.fromJson<int>(json['id']),
      vietnamese: serializer.fromJson<String>(json['vietnamese']),
      english: serializer.fromJson<String>(json['english']),
      pronunciation: serializer.fromJson<String>(json['pronunciation']),
      id_topic: serializer.fromJson<int>(json['id_topic']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'vietnamese': serializer.toJson<String>(vietnamese),
      'english': serializer.toJson<String>(english),
      'pronunciation': serializer.toJson<String>(pronunciation),
      'id_topic': serializer.toJson<int>(id_topic),
    };
  }

  Vocabulary copyWith(
          {int? id,
          String? vietnamese,
          String? english,
          String? pronunciation,
          int? id_topic}) =>
      Vocabulary(
        id: id ?? this.id,
        vietnamese: vietnamese ?? this.vietnamese,
        english: english ?? this.english,
        pronunciation: pronunciation ?? this.pronunciation,
        id_topic: id_topic ?? this.id_topic,
      );
  @override
  String toString() {
    return (StringBuffer('Vocabulary(')
          ..write('id: $id, ')
          ..write('vietnamese: $vietnamese, ')
          ..write('english: $english, ')
          ..write('pronunciation: $pronunciation, ')
          ..write('id_topic: $id_topic')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, vietnamese, english, pronunciation, id_topic);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Vocabulary &&
          other.id == this.id &&
          other.vietnamese == this.vietnamese &&
          other.english == this.english &&
          other.pronunciation == this.pronunciation &&
          other.id_topic == this.id_topic);
}

class VocabulariesCompanion extends UpdateCompanion<Vocabulary> {
  final Value<int> id;
  final Value<String> vietnamese;
  final Value<String> english;
  final Value<String> pronunciation;
  final Value<int> id_topic;
  const VocabulariesCompanion({
    this.id = const Value.absent(),
    this.vietnamese = const Value.absent(),
    this.english = const Value.absent(),
    this.pronunciation = const Value.absent(),
    this.id_topic = const Value.absent(),
  });
  VocabulariesCompanion.insert({
    this.id = const Value.absent(),
    required String vietnamese,
    required String english,
    required String pronunciation,
    required int id_topic,
  })  : vietnamese = Value(vietnamese),
        english = Value(english),
        pronunciation = Value(pronunciation),
        id_topic = Value(id_topic);
  static Insertable<Vocabulary> custom({
    Expression<int>? id,
    Expression<String>? vietnamese,
    Expression<String>? english,
    Expression<String>? pronunciation,
    Expression<int>? id_topic,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (vietnamese != null) 'vietnamese': vietnamese,
      if (english != null) 'english': english,
      if (pronunciation != null) 'pronunciation': pronunciation,
      if (id_topic != null) 'id_topic': id_topic,
    });
  }

  VocabulariesCompanion copyWith(
      {Value<int>? id,
      Value<String>? vietnamese,
      Value<String>? english,
      Value<String>? pronunciation,
      Value<int>? id_topic}) {
    return VocabulariesCompanion(
      id: id ?? this.id,
      vietnamese: vietnamese ?? this.vietnamese,
      english: english ?? this.english,
      pronunciation: pronunciation ?? this.pronunciation,
      id_topic: id_topic ?? this.id_topic,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (vietnamese.present) {
      map['vietnamese'] = Variable<String>(vietnamese.value);
    }
    if (english.present) {
      map['english'] = Variable<String>(english.value);
    }
    if (pronunciation.present) {
      map['pronunciation'] = Variable<String>(pronunciation.value);
    }
    if (id_topic.present) {
      map['id_topic'] = Variable<int>(id_topic.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VocabulariesCompanion(')
          ..write('id: $id, ')
          ..write('vietnamese: $vietnamese, ')
          ..write('english: $english, ')
          ..write('pronunciation: $pronunciation, ')
          ..write('id_topic: $id_topic')
          ..write(')'))
        .toString();
  }
}

class $StatisticTable extends Statistic
    with TableInfo<$StatisticTable, StatisticData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StatisticTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _unlearnedMeta =
      const VerificationMeta('unlearned');
  @override
  late final GeneratedColumn<int> unlearned = GeneratedColumn<int>(
      'unlearned', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _learningMeta =
      const VerificationMeta('learning');
  @override
  late final GeneratedColumn<int> learning = GeneratedColumn<int>(
      'learning', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _masteredMeta =
      const VerificationMeta('mastered');
  @override
  late final GeneratedColumn<int> mastered = GeneratedColumn<int>(
      'mastered', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _id_vocabMeta =
      const VerificationMeta('id_vocab');
  @override
  late final GeneratedColumn<int> id_vocab = GeneratedColumn<int>(
      'id_vocab', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES vocabularies (id)'));
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<int> score = GeneratedColumn<int>(
      'score', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, unlearned, learning, mastered, id_vocab, score];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'statistic';
  @override
  VerificationContext validateIntegrity(Insertable<StatisticData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('unlearned')) {
      context.handle(_unlearnedMeta,
          unlearned.isAcceptableOrUnknown(data['unlearned']!, _unlearnedMeta));
    } else if (isInserting) {
      context.missing(_unlearnedMeta);
    }
    if (data.containsKey('learning')) {
      context.handle(_learningMeta,
          learning.isAcceptableOrUnknown(data['learning']!, _learningMeta));
    } else if (isInserting) {
      context.missing(_learningMeta);
    }
    if (data.containsKey('mastered')) {
      context.handle(_masteredMeta,
          mastered.isAcceptableOrUnknown(data['mastered']!, _masteredMeta));
    } else if (isInserting) {
      context.missing(_masteredMeta);
    }
    if (data.containsKey('id_vocab')) {
      context.handle(_id_vocabMeta,
          id_vocab.isAcceptableOrUnknown(data['id_vocab']!, _id_vocabMeta));
    } else if (isInserting) {
      context.missing(_id_vocabMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
          _scoreMeta, score.isAcceptableOrUnknown(data['score']!, _scoreMeta));
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StatisticData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StatisticData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      unlearned: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unlearned'])!,
      learning: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}learning'])!,
      mastered: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mastered'])!,
      id_vocab: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_vocab'])!,
      score: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}score'])!,
    );
  }

  @override
  $StatisticTable createAlias(String alias) {
    return $StatisticTable(attachedDatabase, alias);
  }
}

class StatisticData extends DataClass implements Insertable<StatisticData> {
  final int id;
  final int unlearned;
  final int learning;
  final int mastered;
  final int id_vocab;
  final int score;
  const StatisticData(
      {required this.id,
      required this.unlearned,
      required this.learning,
      required this.mastered,
      required this.id_vocab,
      required this.score});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['unlearned'] = Variable<int>(unlearned);
    map['learning'] = Variable<int>(learning);
    map['mastered'] = Variable<int>(mastered);
    map['id_vocab'] = Variable<int>(id_vocab);
    map['score'] = Variable<int>(score);
    return map;
  }

  StatisticCompanion toCompanion(bool nullToAbsent) {
    return StatisticCompanion(
      id: Value(id),
      unlearned: Value(unlearned),
      learning: Value(learning),
      mastered: Value(mastered),
      id_vocab: Value(id_vocab),
      score: Value(score),
    );
  }

  factory StatisticData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StatisticData(
      id: serializer.fromJson<int>(json['id']),
      unlearned: serializer.fromJson<int>(json['unlearned']),
      learning: serializer.fromJson<int>(json['learning']),
      mastered: serializer.fromJson<int>(json['mastered']),
      id_vocab: serializer.fromJson<int>(json['id_vocab']),
      score: serializer.fromJson<int>(json['score']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'unlearned': serializer.toJson<int>(unlearned),
      'learning': serializer.toJson<int>(learning),
      'mastered': serializer.toJson<int>(mastered),
      'id_vocab': serializer.toJson<int>(id_vocab),
      'score': serializer.toJson<int>(score),
    };
  }

  StatisticData copyWith(
          {int? id,
          int? unlearned,
          int? learning,
          int? mastered,
          int? id_vocab,
          int? score}) =>
      StatisticData(
        id: id ?? this.id,
        unlearned: unlearned ?? this.unlearned,
        learning: learning ?? this.learning,
        mastered: mastered ?? this.mastered,
        id_vocab: id_vocab ?? this.id_vocab,
        score: score ?? this.score,
      );
  @override
  String toString() {
    return (StringBuffer('StatisticData(')
          ..write('id: $id, ')
          ..write('unlearned: $unlearned, ')
          ..write('learning: $learning, ')
          ..write('mastered: $mastered, ')
          ..write('id_vocab: $id_vocab, ')
          ..write('score: $score')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, unlearned, learning, mastered, id_vocab, score);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StatisticData &&
          other.id == this.id &&
          other.unlearned == this.unlearned &&
          other.learning == this.learning &&
          other.mastered == this.mastered &&
          other.id_vocab == this.id_vocab &&
          other.score == this.score);
}

class StatisticCompanion extends UpdateCompanion<StatisticData> {
  final Value<int> id;
  final Value<int> unlearned;
  final Value<int> learning;
  final Value<int> mastered;
  final Value<int> id_vocab;
  final Value<int> score;
  const StatisticCompanion({
    this.id = const Value.absent(),
    this.unlearned = const Value.absent(),
    this.learning = const Value.absent(),
    this.mastered = const Value.absent(),
    this.id_vocab = const Value.absent(),
    this.score = const Value.absent(),
  });
  StatisticCompanion.insert({
    this.id = const Value.absent(),
    required int unlearned,
    required int learning,
    required int mastered,
    required int id_vocab,
    required int score,
  })  : unlearned = Value(unlearned),
        learning = Value(learning),
        mastered = Value(mastered),
        id_vocab = Value(id_vocab),
        score = Value(score);
  static Insertable<StatisticData> custom({
    Expression<int>? id,
    Expression<int>? unlearned,
    Expression<int>? learning,
    Expression<int>? mastered,
    Expression<int>? id_vocab,
    Expression<int>? score,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (unlearned != null) 'unlearned': unlearned,
      if (learning != null) 'learning': learning,
      if (mastered != null) 'mastered': mastered,
      if (id_vocab != null) 'id_vocab': id_vocab,
      if (score != null) 'score': score,
    });
  }

  StatisticCompanion copyWith(
      {Value<int>? id,
      Value<int>? unlearned,
      Value<int>? learning,
      Value<int>? mastered,
      Value<int>? id_vocab,
      Value<int>? score}) {
    return StatisticCompanion(
      id: id ?? this.id,
      unlearned: unlearned ?? this.unlearned,
      learning: learning ?? this.learning,
      mastered: mastered ?? this.mastered,
      id_vocab: id_vocab ?? this.id_vocab,
      score: score ?? this.score,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (unlearned.present) {
      map['unlearned'] = Variable<int>(unlearned.value);
    }
    if (learning.present) {
      map['learning'] = Variable<int>(learning.value);
    }
    if (mastered.present) {
      map['mastered'] = Variable<int>(mastered.value);
    }
    if (id_vocab.present) {
      map['id_vocab'] = Variable<int>(id_vocab.value);
    }
    if (score.present) {
      map['score'] = Variable<int>(score.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StatisticCompanion(')
          ..write('id: $id, ')
          ..write('unlearned: $unlearned, ')
          ..write('learning: $learning, ')
          ..write('mastered: $mastered, ')
          ..write('id_vocab: $id_vocab, ')
          ..write('score: $score')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $TopicsTable topics = $TopicsTable(this);
  late final $VocabulariesTable vocabularies = $VocabulariesTable(this);
  late final $StatisticTable statistic = $StatisticTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [topics, vocabularies, statistic];
}
