class FindPath {
  String pathname;
  String heading;
  String? parentPath;
  String? description;

  FindPath(
      {required this.pathname,
      required this.heading,
      this.parentPath,
      this.description});
}

List<FindPath> pathList = [FindPath(pathname: '/', heading: 'Demo')];
