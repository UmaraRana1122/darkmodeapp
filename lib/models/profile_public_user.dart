class PublicProfileUsers {
  bool? status;
  String? message;
  Data? data;

  PublicProfileUsers({this.status, this.message, this.data});

  PublicProfileUsers.fromJson(Map<String, dynamic> json) {
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
  List<Users>? adminUsers;
  List<Users>? users;
  List<Users>? normalUsers;
  int? total;

  Data({this.users, this.adminUsers, this.total});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['admin_users'] != null) {
      adminUsers = <Users>[];
      json['admin_users'].forEach((v) {
        adminUsers!.add(Users.fromJson(v));
      });
    }
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(Users.fromJson(v));
      });
    }
    if (json['users'] != null) {
      normalUsers = <Users>[];
      json['users'].forEach((v) {
        normalUsers!.add(Users.fromJson(v));
      });
    }
    users?.addAll(adminUsers ?? []);
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (adminUsers != null) {
      data['admin_users'] = adminUsers!.map((v) => v.toJson()).toList();
    }
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    return data;
  }
}

class Users {
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
  String? livingInLatitude;
  String? livingInLongitude;
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
  String? distance;
  String? tierstatus;
  String? age;
  List<Profileimages>? profileimages;
  List<Interests>? interests;
  List<Purposeofjoining>? purposeofjoining;
  List<Interests>? education;
  List<Interests>? physique;
  List<ReligiousBeliefs>? religiousBeliefs;
  List<Interests>? politicalView;
  List<Interests>? pet;
  List<Interests>? workout;
  List<Interests>? dietary;
  List<Interests>? relationshipGoal;
  String? likedyouStatus;
  String? boostStatus;

  Users(
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
      this.livingInLatitude,
      this.livingInLongitude,
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
      this.distance,
      this.tierstatus,
      this.age,
      this.profileimages,
      this.interests,
      this.purposeofjoining,
      this.education,
      this.physique,
      this.religiousBeliefs,
      this.politicalView,
      this.pet,
      this.workout,
      this.dietary,
      this.relationshipGoal,
      this.likedyouStatus,
      this.boostStatus});

  Users.fromJson(Map<String, dynamic> json) {
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
    livingInLatitude = json['living_in_latitude'];
    livingInLongitude = json['living_in_longitude'];
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
    distance = json['distance'];
    tierstatus = json['tierstatus'];
    age = json['age'];
    if (json['profileimages'] != null) {
      profileimages = <Profileimages>[];
      json['profileimages'].forEach((v) {
        profileimages!.add(Profileimages.fromJson(v));
      });
    }
    if (json['interests'] != null) {
      interests = <Interests>[];
      json['interests'].forEach((v) {
        interests!.add(Interests.fromJson(v));
      });
    }
    if (json['purposeofjoining'] != null) {
      purposeofjoining = <Purposeofjoining>[];
      json['purposeofjoining'].forEach((v) {
        purposeofjoining!.add(Purposeofjoining.fromJson(v));
      });
    }
    if (json['education'] != null) {
      education = <Interests>[];
      json['education'].forEach((v) {
        education!.add(Interests.fromJson(v));
      });
    }
    if (json['physique'] != null) {
      physique = <Interests>[];
      json['physique'].forEach((v) {
        physique!.add(Interests.fromJson(v));
      });
    }
    if (json['religious_beliefs'] != null) {
      religiousBeliefs = <ReligiousBeliefs>[];
      json['religious_beliefs'].forEach((v) {
        religiousBeliefs!.add(ReligiousBeliefs.fromJson(v));
      });
    }
    if (json['political_view'] != null) {
      politicalView = <Interests>[];
      json['political_view'].forEach((v) {
        politicalView!.add(Interests.fromJson(v));
      });
    }
    if (json['pet'] != null) {
      pet = <Interests>[];
      json['pet'].forEach((v) {
        pet!.add(Interests.fromJson(v));
      });
    }
    if (json['workout'] != null) {
      workout = <Interests>[];
      json['workout'].forEach((v) {
        workout!.add(Interests.fromJson(v));
      });
    }
    if (json['dietary'] != null) {
      dietary = <Interests>[];
      json['dietary'].forEach((v) {
        dietary!.add(Interests.fromJson(v));
      });
    }
    if (json['relationship_goal'] != null) {
      relationshipGoal = <Interests>[];
      json['relationship_goal'].forEach((v) {
        relationshipGoal!.add(Interests.fromJson(v));
      });
    }
    likedyouStatus = json['likedyou_status'];
    boostStatus = json['boost_status'];
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
    data['living_in_latitude'] = livingInLatitude;
    data['living_in_longitude'] = livingInLongitude;
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
    data['distance'] = distance;
    data['tierstatus'] = tierstatus;
    data['age'] = age;
    if (profileimages != null) {
      data['profileimages'] = profileimages!.map((v) => v.toJson()).toList();
    }
    if (interests != null) {
      data['interests'] = interests!.map((v) => v.toJson()).toList();
    }
    if (purposeofjoining != null) {
      data['purposeofjoining'] =
          purposeofjoining!.map((v) => v.toJson()).toList();
    }
    if (education != null) {
      data['education'] = education!.map((v) => v.toJson()).toList();
    }
    if (physique != null) {
      data['physique'] = physique!.map((v) => v.toJson()).toList();
    }
    if (religiousBeliefs != null) {
      data['religious_beliefs'] =
          religiousBeliefs!.map((v) => v.toJson()).toList();
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
    data['likedyou_status'] = likedyouStatus;
    data['boost_status'] = boostStatus;
    return data;
  }
}

class Profileimages {
  int? id;
  String? userId;
  String? images;

  Profileimages({this.id, this.userId, this.images});

  Profileimages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    images = json['images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['images'] = images;
    return data;
  }
}

class Interests {
  int? id;
  String? name;
  String? icon;

  Interests({this.id, this.name, this.icon});

  Interests.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['icon'] = icon;
    return data;
  }
}

class Purposeofjoining {
  String? id;
  String? name;

  Purposeofjoining({this.id, this.name});

  Purposeofjoining.fromJson(Map<String, dynamic> json) {
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

class ReligiousBeliefs {
  int? id;
  String? name;

  ReligiousBeliefs({this.id, this.name});

  ReligiousBeliefs.fromJson(Map<String, dynamic> json) {
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
