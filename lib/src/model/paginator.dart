library paginator;

class Paginator<T> {
  List<T>? data;
  int? currentPage;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;
  String? sort;
  bool? asc;
  String? term;

  Paginator({
    this.currentPage = 0,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage = 1,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage = 20,
    this.prevPageUrl,
    this.to,
    this.total = 0,
    this.sort,
    this.asc,
    this.term,
  }) {
    if (data == null) {
      data = <T>[];
    }
  }

  Paginator.fromJson(Map<String, dynamic> json, List<T> data) {
    this.data = data;

    currentPage = json['current_page'];
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  merge(Paginator<T> page) {
    page.data!.forEach((element) {
      this.data!.add(element);
    });

    currentPage = page.currentPage;
    firstPageUrl = page.firstPageUrl;
    from = page.from;
    lastPage = page.lastPage;
    lastPageUrl = page.lastPageUrl;
    nextPageUrl = page.nextPageUrl;
    path = page.path;
    perPage = page.perPage;
    prevPageUrl = page.prevPageUrl;
    to = page.to;
    total = page.total;
  }

  String request() {
    String params = "";
    
    if (perPage != null) {
      params += "${params.isEmpty ? '?' : '&'}per_page=$perPage";
    }

    if (currentPage != null) {
      params += "${params.isEmpty ? '?' : '&'}page=$currentPage";
    }

    if (sort != null) {
      params += "${params.isEmpty ? '?' : '&'}sort=$sort";
    }

    if (asc != null) {
      params += "${params.isEmpty ? '?' : '&'}asc=$asc";
    }

    if (term != null) {
      params += "${params.isEmpty ? '?' : '&'}term=$term";
    }

    return params;
  }
}
