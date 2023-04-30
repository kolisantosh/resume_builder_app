// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// ignore_for_file: type=lint
class $ResumesTable extends Resumes with TableInfo<$ResumesTable, Resume> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResumesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _summaryMeta =
      const VerificationMeta('summary');
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
      'summary', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _experienceMeta =
      const VerificationMeta('experience');
  @override
  late final GeneratedColumn<String> experience = GeneratedColumn<String>(
      'experience', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _educationMeta =
      const VerificationMeta('education');
  @override
  late final GeneratedColumn<String> education = GeneratedColumn<String>(
      'education', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _creationDateMeta =
      const VerificationMeta('creationDate');
  @override
  late final GeneratedColumn<DateTime> creationDate = GeneratedColumn<DateTime>(
      'creation_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, email, phone, summary, experience, education, creationDate];
  @override
  String get aliasedName => _alias ?? 'resumes';
  @override
  String get actualTableName => 'resumes';
  @override
  VerificationContext validateIntegrity(Insertable<Resume> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('summary')) {
      context.handle(_summaryMeta,
          summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta));
    } else if (isInserting) {
      context.missing(_summaryMeta);
    }
    if (data.containsKey('experience')) {
      context.handle(
          _experienceMeta,
          experience.isAcceptableOrUnknown(
              data['experience']!, _experienceMeta));
    } else if (isInserting) {
      context.missing(_experienceMeta);
    }
    if (data.containsKey('education')) {
      context.handle(_educationMeta,
          education.isAcceptableOrUnknown(data['education']!, _educationMeta));
    } else if (isInserting) {
      context.missing(_educationMeta);
    }
    if (data.containsKey('creation_date')) {
      context.handle(
          _creationDateMeta,
          creationDate.isAcceptableOrUnknown(
              data['creation_date']!, _creationDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Resume map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Resume(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      summary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}summary'])!,
      experience: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}experience'])!,
      education: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}education'])!,
      creationDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}creation_date']),
    );
  }

  @override
  $ResumesTable createAlias(String alias) {
    return $ResumesTable(attachedDatabase, alias);
  }
}

class Resume extends DataClass implements Insertable<Resume> {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String summary;
  final String experience;
  final String education;
  final DateTime? creationDate;
  const Resume(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.summary,
      required this.experience,
      required this.education,
      this.creationDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['summary'] = Variable<String>(summary);
    map['experience'] = Variable<String>(experience);
    map['education'] = Variable<String>(education);
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    return map;
  }

  ResumesCompanion toCompanion(bool nullToAbsent) {
    return ResumesCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
      phone: Value(phone),
      summary: Value(summary),
      experience: Value(experience),
      education: Value(education),
      creationDate: creationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(creationDate),
    );
  }

  factory Resume.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Resume(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      summary: serializer.fromJson<String>(json['summary']),
      experience: serializer.fromJson<String>(json['experience']),
      education: serializer.fromJson<String>(json['education']),
      creationDate: serializer.fromJson<DateTime?>(json['creationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'summary': serializer.toJson<String>(summary),
      'experience': serializer.toJson<String>(experience),
      'education': serializer.toJson<String>(education),
      'creationDate': serializer.toJson<DateTime?>(creationDate),
    };
  }

  Resume copyWith(
          {int? id,
          String? name,
          String? email,
          String? phone,
          String? summary,
          String? experience,
          String? education,
          Value<DateTime?> creationDate = const Value.absent()}) =>
      Resume(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        summary: summary ?? this.summary,
        experience: experience ?? this.experience,
        education: education ?? this.education,
        creationDate:
            creationDate.present ? creationDate.value : this.creationDate,
      );
  @override
  String toString() {
    return (StringBuffer('Resume(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('summary: $summary, ')
          ..write('experience: $experience, ')
          ..write('education: $education, ')
          ..write('creationDate: $creationDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, email, phone, summary, experience, education, creationDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Resume &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.summary == this.summary &&
          other.experience == this.experience &&
          other.education == this.education &&
          other.creationDate == this.creationDate);
}

class ResumesCompanion extends UpdateCompanion<Resume> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> summary;
  final Value<String> experience;
  final Value<String> education;
  final Value<DateTime?> creationDate;
  const ResumesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.summary = const Value.absent(),
    this.experience = const Value.absent(),
    this.education = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  ResumesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String email,
    required String phone,
    required String summary,
    required String experience,
    required String education,
    this.creationDate = const Value.absent(),
  })  : name = Value(name),
        email = Value(email),
        phone = Value(phone),
        summary = Value(summary),
        experience = Value(experience),
        education = Value(education);
  static Insertable<Resume> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? summary,
    Expression<String>? experience,
    Expression<String>? education,
    Expression<DateTime>? creationDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (summary != null) 'summary': summary,
      if (experience != null) 'experience': experience,
      if (education != null) 'education': education,
      if (creationDate != null) 'creation_date': creationDate,
    });
  }

  ResumesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? email,
      Value<String>? phone,
      Value<String>? summary,
      Value<String>? experience,
      Value<String>? education,
      Value<DateTime?>? creationDate}) {
    return ResumesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      summary: summary ?? this.summary,
      experience: experience ?? this.experience,
      education: education ?? this.education,
      creationDate: creationDate ?? this.creationDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (experience.present) {
      map['experience'] = Variable<String>(experience.value);
    }
    if (education.present) {
      map['education'] = Variable<String>(education.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResumesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('summary: $summary, ')
          ..write('experience: $experience, ')
          ..write('education: $education, ')
          ..write('creationDate: $creationDate')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ResumesTable resumes = $ResumesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [resumes];
}
