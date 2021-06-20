class Post {
  String id="";
  String userId="";
  String gstNumer="";
  //gst image
  String emailId="";
  String adhaarNo="";
  //adhaar image
  String panNo="";
  //pan image
  String firmName="";
  String phoneNo="";
  String status="";
  String createdBy="";
  String createdOn=""; // doubt
  String updated_by="";
  String updated_on="";

  Post(
      this.id,
      this.userId,
      this.gstNumer,
      this.emailId,
      this.adhaarNo,
      this.panNo,
      this.firmName,
      this.phoneNo,
      this.status,
      this.createdBy,
      this.createdOn,
      this.updated_by,
      this.updated_on);

  Post.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userId = json["userId"];
    gstNumer = json["gstNumer"];
    emailId = json["emailId"];
    adhaarNo = json["adhaarNo"];
    panNo = json["panNo"];
    firmName = json["firmName"];
    phoneNo = json["phoneNo"];
    status = json["status"];
    createdBy = json["createdBy"];
    createdOn = json["createdOn"];
    updated_by = json["updated_by"];
    updated_on = json["updated_on"];
  }
}
