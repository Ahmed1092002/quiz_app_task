class DataModel {
  List<Levels>? levels;

  DataModel({this.levels});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['levels'] != null) {
      levels = <Levels>[];
      json['levels'].forEach((v) {
        levels!.add(new Levels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.levels != null) {
      data['levels'] = this.levels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Levels {
  int? score;
  List<Questions>? questions;

  Levels({this.score, this.questions});

  Levels.fromJson(Map<String, dynamic> json) {
    score = json['Score'];
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Score'] = this.score;
    if (this.questions != null) {
      data['questions'] = this.questions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  int? key;
  String? question;
  Answers? answers;

  Questions({this.key, this.question, this.answers});

  Questions.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    question = json['question '];
    answers =
    json['answers'] != null ? new Answers.fromJson(json['answers']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['question '] = this.question;
    if (this.answers != null) {
      data['answers'] = this.answers!.toJson();
    }
    return data;
  }
}

class Answers {
  bool? b1;
  bool? b3;
  bool? b12;
  bool? b5007;
  bool? whenItCaresForItsKittens;
  bool? whenItNeedsConfort;
  bool? whenItFeelsContent;
  bool? allOfTheAbove;
  bool? b1To2;
  bool? b3To5;
  bool? b8To10;
  bool? b12To14;
  bool? b2;
  bool? b4;
  bool? b8;
  bool? theRedPlanet;
  bool? theDustyPlanet;
  bool? theHotPlanet;
  bool? theSmellyPlanet;
  bool? threeDays;
  bool? aMonth;
  bool? eightMonths;
  bool? twoYears;
  bool? fire;
  bool? love;
  bool? agriculture;
  bool? war;
  bool? secon;
  bool? third;
  bool? fourth;
  bool? sixth;
  bool? parisFrance;
  bool? bostonMassachusetts;
  bool? kittyHawkNorthCarolina;
  bool? tokyouJapan;
  bool? unitedStates;
  bool? sovietUnionNowRussia;
  bool? china;
  bool? rocketonia;

  Answers(
      {this.b1,
        this.b3,
        this.b12,
        this.b5007,
        this.whenItCaresForItsKittens,
        this.whenItNeedsConfort,
        this.whenItFeelsContent,
        this.allOfTheAbove,
        this.b1To2,
        this.b3To5,
        this.b8To10,
        this.b12To14,
        this.b2,
        this.b4,
        this.b8,
        this.theRedPlanet,
        this.theDustyPlanet,
        this.theHotPlanet,
        this.theSmellyPlanet,
        this.threeDays,
        this.aMonth,
        this.eightMonths,
        this.twoYears,
        this.fire,
        this.love,
        this.agriculture,
        this.war,
        this.secon,
        this.third,
        this.fourth,
        this.sixth,
        this.parisFrance,
        this.bostonMassachusetts,
        this.kittyHawkNorthCarolina,
        this.tokyouJapan,
        this.unitedStates,
        this.sovietUnionNowRussia,
        this.china,
        this.rocketonia});

  Answers.fromJson(Map<String, dynamic> json) {
    b1 = json['1'];
    b3 = json['3'];
    b12 = json['12'];
    b5007 = json['5,007'];
    whenItCaresForItsKittens = json['When it cares for its kittens'];
    whenItNeedsConfort = json['When it needs confort'];
    whenItFeelsContent = json['When it feels content'];
    allOfTheAbove = json['All of the above'];
    b1To2 = json['1 to 2'];
    b3To5 = json['3 to 5'];
    b8To10 = json['8 to 10'];
    b12To14 = json['12 to 14'];
    b2 = json['2'];
    b4 = json['4'];
    b8 = json['8'];
    theRedPlanet = json['The red planet'];
    theDustyPlanet = json['The dusty planet'];
    theHotPlanet = json['The hot planet'];
    theSmellyPlanet = json['The smelly planet'];
    threeDays = json['Three days'];
    aMonth = json['A month'];
    eightMonths = json['Eight months'];
    twoYears = json['Two years'];
    fire = json['Fire'];
    love = json['Love'];
    agriculture = json['Agriculture'];
    war = json['War'];
    secon = json['Secon'];
    third = json['Third'];
    fourth = json['Fourth'];
    sixth = json['Sixth'];
    parisFrance = json['Paris, France'];
    bostonMassachusetts = json['Boston, Massachusetts'];
    kittyHawkNorthCarolina = json['Kitty Hawk, North Carolina'];
    tokyouJapan = json['Tokyou, Japan'];
    unitedStates = json['United States'];
    sovietUnionNowRussia = json['Soviet Union (now Russia)'];
    china = json['China'];
    rocketonia = json['Rocketonia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.b1;
    data['3'] = this.b3;
    data['12'] = this.b12;
    data['5,007'] = this.b5007;
    data['When it cares for its kittens'] = this.whenItCaresForItsKittens;
    data['When it needs confort'] = this.whenItNeedsConfort;
    data['When it feels content'] = this.whenItFeelsContent;
    data['All of the above'] = this.allOfTheAbove;
    data['1 to 2'] = this.b1To2;
    data['3 to 5'] = this.b3To5;
    data['8 to 10'] = this.b8To10;
    data['12 to 14'] = this.b12To14;
    data['2'] = this.b2;
    data['4'] = this.b4;
    data['8'] = this.b8;
    data['The red planet'] = this.theRedPlanet;
    data['The dusty planet'] = this.theDustyPlanet;
    data['The hot planet'] = this.theHotPlanet;
    data['The smelly planet'] = this.theSmellyPlanet;
    data['Three days'] = this.threeDays;
    data['A month'] = this.aMonth;
    data['Eight months'] = this.eightMonths;
    data['Two years'] = this.twoYears;
    data['Fire'] = this.fire;
    data['Love'] = this.love;
    data['Agriculture'] = this.agriculture;
    data['War'] = this.war;
    data['Secon'] = this.secon;
    data['Third'] = this.third;
    data['Fourth'] = this.fourth;
    data['Sixth'] = this.sixth;
    data['Paris, France'] = this.parisFrance;
    data['Boston, Massachusetts'] = this.bostonMassachusetts;
    data['Kitty Hawk, North Carolina'] = this.kittyHawkNorthCarolina;
    data['Tokyou, Japan'] = this.tokyouJapan;
    data['United States'] = this.unitedStates;
    data['Soviet Union (now Russia)'] = this.sovietUnionNowRussia;
    data['China'] = this.china;
    data['Rocketonia'] = this.rocketonia;
    return data;
  }
}