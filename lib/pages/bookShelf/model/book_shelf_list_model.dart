/// bid : "7076676"
/// bookname : "逆天神医"
/// introduction : "虽说卫国公除了身材极好、相貌甚佳、银子奇多、位高权重外几乎没有什么优点，但他依然是京城里最矜贵最抢手的钻石王老五。直到有一天，这万年单身汉忽然订了亲……京城一下子沸腾起来。成亲前的卫国公——名副其实的铁腕将军+冷血汉子成亲后的卫国公——真·无敌·宠妻狂魔。"
/// book_info : "虽说卫国公除了身材极好、相貌甚佳、银子奇多、位高权重外几乎没有什么优点，但他依然是京城里最矜贵最抢手的钻石王老五。直到有一天，这万年单身汉忽然订了亲……京城一下子沸腾起来。成亲前的卫国公——名副其实的铁腕将军+冷血汉子成亲后的卫国公——真·无敌·宠妻狂魔。"
/// chapterid : "843321"
/// topic : "番外"
/// topic_first : "第一章"
/// date_updated : 1545275931
/// author : "1614860"
/// author_name : "子醉今迷"
/// top_class : "502"
/// state : "2"
/// readCount : "0"
/// praiseCount : "0"
/// stat_name : "完结"
/// class : "254"
/// class_name : "宫斗宅斗"
/// size : "902865"
/// book_cover : "http://img-tailor.11222.cn/bcv/big/201901031812421599.jpg"
/// chapterid_first : "843210"
/// chargeMode : "3"
/// digest : "0"
/// price : "0.5"
/// tag : ["穿越","HE","宠文","宅斗家斗"]
/// is_new : 1
/// discountNum : 10
/// quick_price : 0
/// formats : "1"
/// audiobook_playCount : 0
/// chapterNum : "112"
/// isShortStory : false
/// userid : "0"
/// search_heat : 84
/// num_click : 741207
/// recommend_num : "691999"
/// first_cate_id : "19"
/// first_cate_name : "言情小说"
/// reason : ""
/// is_free : ""
/// is_hot : ""
/// smUptime : 0

class BookShelfListModel {
  String? bid;
  String? bookname;
  String? introduction;
  String? bookInfo;
  String? chapterid;
  String? topic;
  String? topicFirst;
  int? dateUpdated;
  String? author;
  String? authorName;
  String? topClass;
  String? state;
  String? readCount;
  String? praiseCount;
  String? statName;
  String? class1;
  String? className;
  String? size;
  String? bookCover;
  String? chapteridFirst;
  String? chargeMode;
  String? digest;
  String? price;
  List<String>? tag;
  int? discountNum;
  int? quickPrice;
  String? formats;
  int? audiobookPlayCount;
  String? chapterNum;
  bool? isShortStory;
  String? userid;
  int? searchHeat;
  int? numClick;
  String? recommendNum;
  String? firstCateId;
  String? firstCateName;
  String? reason;
  String? isFree;
  String? isHot;
  int? smUptime;

  BookShelfListModel({
      this.bid, 
      this.bookname, 
      this.introduction, 
      this.bookInfo, 
      this.chapterid, 
      this.topic, 
      this.topicFirst, 
      this.dateUpdated, 
      this.author, 
      this.authorName, 
      this.topClass, 
      this.state, 
      this.readCount, 
      this.praiseCount, 
      this.statName, 
      this.class1,
      this.className, 
      this.size, 
      this.bookCover, 
      this.chapteridFirst, 
      this.chargeMode, 
      this.digest, 
      this.price, 
      this.tag, 
      this.discountNum,
      this.quickPrice, 
      this.formats, 
      this.audiobookPlayCount, 
      this.chapterNum, 
      this.isShortStory, 
      this.userid, 
      this.searchHeat, 
      this.numClick, 
      this.recommendNum, 
      this.firstCateId, 
      this.firstCateName, 
      this.reason, 
      this.isFree, 
      this.isHot, 
      this.smUptime});

  BookShelfListModel.fromJson(dynamic json) {
    bid = json["bid"];
    bookname = json["bookname"];
    introduction = json["introduction"];
    bookInfo = json["book_info"];
    chapterid = json["chapterid"];
    topic = json["topic"];
    topicFirst = json["topic_first"];
    dateUpdated = json["date_updated"];
    author = json["author"];
    authorName = json["author_name"];
    topClass = json["top_class"];
    state = json["state"];
    readCount = json["readCount"];
    praiseCount = json["praiseCount"];
    statName = json["stat_name"];
    class1 = json["class"];
    className = json["class_name"];
    size = json["size"];
    bookCover = json["book_cover"];
    chapteridFirst = json["chapterid_first"];
    chargeMode = json["chargeMode"];
    digest = json["digest"];
    price = json["price"];
    tag = json["tag"] != null ? json["tag"].cast<String>() : [];
    discountNum = json["discountNum"];
    quickPrice = json["quick_price"];
    formats = json["formats"];
    audiobookPlayCount = json["audiobook_playCount"];
    chapterNum = json["chapterNum"];
    isShortStory = json["isShortStory"];
    userid = json["userid"];
    searchHeat = json["search_heat"];
    numClick = json["num_click"];
    recommendNum = json["recommend_num"];
    firstCateId = json["first_cate_id"];
    firstCateName = json["first_cate_name"];
    reason = json["reason"];
    isFree = json["is_free"];
    isHot = json["is_hot"];
    smUptime = json["smUptime"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["bid"] = bid;
    map["bookname"] = bookname;
    map["introduction"] = introduction;
    map["book_info"] = bookInfo;
    map["chapterid"] = chapterid;
    map["topic"] = topic;
    map["topic_first"] = topicFirst;
    map["date_updated"] = dateUpdated;
    map["author"] = author;
    map["author_name"] = authorName;
    map["top_class"] = topClass;
    map["state"] = state;
    map["readCount"] = readCount;
    map["praiseCount"] = praiseCount;
    map["stat_name"] = statName;
    map["class"] = class1;
    map["class_name"] = className;
    map["size"] = size;
    map["book_cover"] = bookCover;
    map["chapterid_first"] = chapteridFirst;
    map["chargeMode"] = chargeMode;
    map["digest"] = digest;
    map["price"] = price;
    map["tag"] = tag;
    map["discountNum"] = discountNum;
    map["quick_price"] = quickPrice;
    map["formats"] = formats;
    map["audiobook_playCount"] = audiobookPlayCount;
    map["chapterNum"] = chapterNum;
    map["isShortStory"] = isShortStory;
    map["userid"] = userid;
    map["search_heat"] = searchHeat;
    map["num_click"] = numClick;
    map["recommend_num"] = recommendNum;
    map["first_cate_id"] = firstCateId;
    map["first_cate_name"] = firstCateName;
    map["reason"] = reason;
    map["is_free"] = isFree;
    map["is_hot"] = isHot;
    map["smUptime"] = smUptime;
    return map;
  }

}