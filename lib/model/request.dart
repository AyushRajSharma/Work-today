
class RequestWorker{
  String workerName;
  String workerID;
  String requestID;
  String location;
  String email;
  String phoneNo;
  String job;
  int amount;
  bool isAccepted;

  RequestWorker({required this.workerName, required this.workerID, required this.requestID,required this.phoneNo,required this.email, required this.job, required this.location, required this.amount, required this.isAccepted});
}

class RequestHirer{
  String hirerName;
  String hirerID;
  String requestID;
  String location;
  String email;
  String phoneNo;
  String job;
  int amount;
  bool isAccepted;

  RequestHirer({required this.hirerName, required this.hirerID, required this.requestID, required this.job,required this.email, required this.phoneNo, required this.location, required this.amount, required this.isAccepted});
}