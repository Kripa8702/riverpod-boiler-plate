///Dummy enum for flavors with key and value
enum HomeStatus {
  approved('APPROVED'),
  disapproved('DISAPPROVED'),
  pending('PENDING'),
  jobApplied('JOB_APPLIED'),
  jobStarted('JOB_STARTED');

  final String value;

  const HomeStatus(this.value);

}

getEnumFromString(String value) {
  HomeStatus enumStatus = HomeStatus.pending;
  if (value == HomeStatus.approved.value) {
    enumStatus = HomeStatus.approved;
  } else if (value == HomeStatus.disapproved.value) {
    enumStatus = HomeStatus.disapproved;
  } else if (value == HomeStatus.jobApplied.value) {
    enumStatus = HomeStatus.jobApplied;
  } else if (value == HomeStatus.jobStarted.value) {
    enumStatus = HomeStatus.jobStarted;
  }
  return enumStatus;
}
