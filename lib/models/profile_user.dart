class ProfileUser {
  bool? status;
  String? message;
  Data? data;

  ProfileUser({this.status, this.message, this.data});

  ProfileUser.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? uniqueId;
  String? referralCode;
  String? firstname;
  String? lastname;
  String? username;
  String? email;
  String? mobileNumber;
  String? countryCode;
  String? dob;
  String? gender;
  List<String>? interestIds;
  List<String>? purposeofjoinIds;
  String? educationId;
  String? physiqueId;
  String? religiousbeliefId;
  String? politicalviewId;
  List<int>? petId;
  String? workoutId;
  String? dietaryId;
  String? relationshipgoalId;
  String? isDelete;
  String? isBlocked;
  String? mobileVerify;
  String? emailVerify;
  String? emailVerifiedAt;
  String? visibility;
  String? latitude;
  String? longitude;
  String? aboutMe;
  String? smoking;
  String? height;
  String? sexualOrientation;
  String? children;
  String? alcohol;
  String? jobTittle;
  String? company;
  List<String>? educations;
  String? livingIn;
  String? instagram;
  String? luv;
  String? zodiacSign;
  String? isChat;
  String? isLike;
  String? isMatch;
  String? isLuvReceived;
  String? profileVerifyStatus;
  String? timezone;
  String? createdAt;
  String? updatedAt;
  String? tierstatus;
  String? deletedAt;
  String? profileImage;
  List<Intrests>? intrests;
  List<PurposeOfJoin>? purposeOfJoin;
  List<Intrests>? education;
  List<Intrests>? physique;
  List<Intrests>? religiousBelief;
  List<Intrests>? politicalView;
  List<Intrests>? pet;
  List<Intrests>? workout;
  List<Intrests>? dietary;
  List<Intrests>? relationshipGoal;
  String? globalPot;

  Data(
      {this.id,
      this.uniqueId,
      this.referralCode,
      this.firstname,
      this.lastname,
      this.username,
      this.email,
      this.mobileNumber,
      this.countryCode,
      this.dob,
      this.gender,
      this.interestIds,
      this.purposeofjoinIds,
      this.educationId,
      this.physiqueId,
      this.religiousbeliefId,
      this.politicalviewId,
      this.petId,
      this.workoutId,
      this.dietaryId,
      this.relationshipgoalId,
      this.isDelete,
      this.isBlocked,
      this.mobileVerify,
      this.emailVerify,
      this.emailVerifiedAt,
      this.visibility,
      this.latitude,
      this.longitude,
      this.aboutMe,
      this.smoking,
      this.height,
      this.sexualOrientation,
      this.children,
      this.alcohol,
      this.jobTittle,
      this.company,
      this.educations,
      this.livingIn,
      this.instagram,
      this.luv,
      this.zodiacSign,
      this.isChat,
      this.isLike,
      this.isMatch,
      this.isLuvReceived,
      this.profileVerifyStatus,
      this.timezone,
      this.createdAt,
      this.updatedAt,
      this.tierstatus,
      this.deletedAt,
      this.profileImage,
      this.intrests,
      this.purposeOfJoin,
      this.education,
      this.physique,
      this.religiousBelief,
      this.politicalView,
      this.pet,
      this.workout,
      this.dietary,
      this.relationshipGoal,
      this.globalPot});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uniqueId = json['unique_id'];
    referralCode = json['referral_code'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    username = json['username'];
    email = json['email'];
    mobileNumber = json['mobile_number'];
    countryCode = json['country_code'];
    dob = json['dob'];
    gender = json['gender'];
    interestIds = json['interest_ids'].cast<String>();
    purposeofjoinIds = json['purposeofjoin_ids'].cast<String>();
    educationId = json['education_id'];
    physiqueId = json['physique_id'];
    religiousbeliefId = json['religiousbelief_id'];
    politicalviewId = json['politicalview_id'];
    petId = json['pet_id'].cast<int>();
    workoutId = json['workout_id'];
    dietaryId = json['dietary_id'];
    relationshipgoalId = json['relationshipgoal_id'];
    isDelete = json['is_delete'];
    isBlocked = json['is_blocked'];
    mobileVerify = json['mobile_verify'];
    emailVerify = json['email_verify'];
    emailVerifiedAt = json['email_verified_at'];
    visibility = json['visibility'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    aboutMe = json['about_me'];
    smoking = json['smoking'];
    height = json['height'];
    sexualOrientation = json['sexual_orientation'];
    children = json['children'];
    alcohol = json['alcohol'];
    jobTittle = json['job_tittle'];
    company = json['company'];
    educations = json['educations'].cast<String>();
    livingIn = json['living_in'];
    instagram = json['instagram'];
    luv = json['luv'];
    zodiacSign = json['zodiac_sign'];
    isChat = json['is_chat'];
    isLike = json['is_like'];
    isMatch = json['is_match'];
    isLuvReceived = json['is_luv_received'];
    profileVerifyStatus = json['profile_verify_status'];
    timezone = json['timezone'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    tierstatus = json['tierstatus'];
    deletedAt = json['deleted_at'];
    profileImage = json['profileImage'];
    if (json['intrests'] != null) {
      intrests = <Intrests>[];
      json['intrests'].forEach((v) {
        intrests!.add(Intrests.fromJson(v));
      });
    }
    if (json['purpose_of_join'] != null) {
      purposeOfJoin = <PurposeOfJoin>[];
      json['purpose_of_join'].forEach((v) {
        purposeOfJoin!.add(PurposeOfJoin.fromJson(v));
      });
    }
    if (json['education'] != null) {
      education = <Intrests>[];
      json['education'].forEach((v) {
        education!.add(Intrests.fromJson(v));
      });
    }
    if (json['physique'] != null) {
      physique = <Intrests>[];
      json['physique'].forEach((v) {
        physique!.add(Intrests.fromJson(v));
      });
    }
    if (json['religious_belief'] != null) {
      religiousBelief = <Intrests>[];
      json['religious_belief'].forEach((v) {
        religiousBelief!.add(Intrests.fromJson(v));
      });
    }
    if (json['political_view'] != null) {
      politicalView = <Intrests>[];
      json['political_view'].forEach((v) {
        politicalView!.add(Intrests.fromJson(v));
      });
    }
    if (json['pet'] != null) {
      pet = <Intrests>[];
      json['pet'].forEach((v) {
        pet!.add(Intrests.fromJson(v));
      });
    }
    if (json['workout'] != null) {
      workout = <Intrests>[];
      json['workout'].forEach((v) {
        workout!.add(Intrests.fromJson(v));
      });
    }
    if (json['dietary'] != null) {
      dietary = <Intrests>[];
      json['dietary'].forEach((v) {
        dietary!.add(Intrests.fromJson(v));
      });
    }
    if (json['relationship_goal'] != null) {
      relationshipGoal = <Intrests>[];
      json['relationship_goal'].forEach((v) {
        relationshipGoal!.add(Intrests.fromJson(v));
      });
    }
    globalPot = json['global_pot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['unique_id'] = uniqueId;
    data['referral_code'] = referralCode;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['username'] = username;
    data['email'] = email;
    data['mobile_number'] = mobileNumber;
    data['country_code'] = countryCode;
    data['dob'] = dob;
    data['gender'] = gender;
    data['interest_ids'] = interestIds;
    data['purposeofjoin_ids'] = purposeofjoinIds;
    data['education_id'] = educationId;
    data['physique_id'] = physiqueId;
    data['religiousbelief_id'] = religiousbeliefId;
    data['politicalview_id'] = politicalviewId;
    data['pet_id'] = petId;
    data['workout_id'] = workoutId;
    data['dietary_id'] = dietaryId;
    data['relationshipgoal_id'] = relationshipgoalId;
    data['is_delete'] = isDelete;
    data['is_blocked'] = isBlocked;
    data['mobile_verify'] = mobileVerify;
    data['email_verify'] = emailVerify;
    data['email_verified_at'] = emailVerifiedAt;
    data['visibility'] = visibility;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['about_me'] = aboutMe;
    data['smoking'] = smoking;
    data['height'] = height;
    data['sexual_orientation'] = sexualOrientation;
    data['children'] = children;
    data['alcohol'] = alcohol;
    data['job_tittle'] = jobTittle;
    data['company'] = company;
    data['educations'] = educations;
    data['living_in'] = livingIn;
    data['instagram'] = instagram;
    data['luv'] = luv;
    data['zodiac_sign'] = zodiacSign;
    data['is_chat'] = isChat;
    data['is_like'] = isLike;
    data['is_match'] = isMatch;
    data['is_luv_received'] = isLuvReceived;
    data['profile_verify_status'] = profileVerifyStatus;
    data['timezone'] = timezone;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['tierstatus'] = tierstatus;
    data['deleted_at'] = deletedAt;
    data['profileImage'] = profileImage;
    if (intrests != null) {
      data['intrests'] = intrests!.map((v) => v.toJson()).toList();
    }
    if (purposeOfJoin != null) {
      data['purpose_of_join'] = purposeOfJoin!.map((v) => v.toJson()).toList();
    }
    if (education != null) {
      data['education'] = education!.map((v) => v.toJson()).toList();
    }
    if (physique != null) {
      data['physique'] = physique!.map((v) => v.toJson()).toList();
    }
    if (religiousBelief != null) {
      data['religious_belief'] =
          religiousBelief!.map((v) => v.toJson()).toList();
    }
    if (politicalView != null) {
      data['political_view'] = politicalView!.map((v) => v.toJson()).toList();
    }
    if (pet != null) {
      data['pet'] = pet!.map((v) => v.toJson()).toList();
    }
    if (workout != null) {
      data['workout'] = workout!.map((v) => v.toJson()).toList();
    }
    if (dietary != null) {
      data['dietary'] = dietary!.map((v) => v.toJson()).toList();
    }
    if (relationshipGoal != null) {
      data['relationship_goal'] =
          relationshipGoal!.map((v) => v.toJson()).toList();
    }
    data['global_pot'] = globalPot;
    return data;
  }
}

class Intrests {
  int? id;
  String? name;

  Intrests({this.id, this.name});

  Intrests.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class PurposeOfJoin {
  String? id;
  String? name;

  PurposeOfJoin({this.id, this.name});

  PurposeOfJoin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
