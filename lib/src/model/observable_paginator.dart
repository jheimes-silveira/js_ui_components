library paginator;

import 'package:mobx/mobx.dart';

part 'observable_paginator.g.dart';

class ObservablePaginator<T> = _ObservablePaginatorBase
    with _$ObservablePaginator;

abstract class _ObservablePaginatorBase<T> with Store {
  @observable
  ObservableList data;
  @observable
  int currentPage;
  @observable
  String firstPageUrl;
  @observable
  int from;
  @observable
  bool lastPage;
  @observable
  String lastPageUrl;
  @observable
  String nextPageUrl;
  @observable
  String path;
  @observable
  int perPage;
  @observable
  String prevPageUrl;
  @observable
  int to;
  @observable
  int total;
  @observable
  String sort;
  @observable
  bool asc;
  @observable
  String term;

  _ObservablePaginatorBase({
    this.currentPage = 0,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage = true,
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
      setData(ObservableList.of([]));
    }
  }

  _ObservablePaginatorBase.fromJson(
    Map<String, dynamic> json,
    ObservableList data,
  ) {
    this.setData(data);

    setCurrentPage(json['current_page']);
    setFirstPageUrl(json['first_page_url']);
    setFrom(json['from']);
    setLastPage(json['last_page']);
    setLastPageUrl(json['last_page_url']);
    setNextPageUrl(json['next_page_url']);
    setPath(json['path']);
    setPerPage(json['per_page']);
    setPrevPageUrl(json['prev_page_url']);
    setTo(json['to']);
    setTotal(json['total']);
  }

  @action
  merge(ObservablePaginator page) {
    if (page.currentPage == 0 || page.currentPage == 1) {
      data = page.data;
    } else {
      page.data.forEach((element) {
        this.data.add(element);
      });
    }

    setCurrentPage(page.currentPage);
    setFirstPageUrl(page.firstPageUrl);
    setFrom(page.from);
    setLastPage(page.lastPage);
    setLastPageUrl(page.lastPageUrl);
    setNextPageUrl(page.nextPageUrl);
    setPath(page.path);
    setPerPage(page.perPage);
    setPrevPageUrl(page.prevPageUrl);
    setTo(page.to);
    setTotal(page.total);
  }

  @action
  setData(ObservableList data) {
    this.data = data;
  }

  @action
  void dataAdd(item) {
    this.data.add(item);
    this.total++;
  }

  @action
  void dataInsert(int index, item) {
    this.data.insert(index, item);
    this.total++;
  }

  @action
  setCurrentPage(int currentPage) {
    this.currentPage = currentPage;
  }

  @action
  setFirstPageUrl(String firstPageUrl) {
    this.firstPageUrl = firstPageUrl;
  }

  @action
  setFrom(int from) {
    this.from = from;
  }

  @action
  setLastPage(bool lastPage) {
    try {
      this.lastPage = lastPage;
    } catch (e) {
      lastPage = true;
    }
  }

  @action
  setLastPageUrl(String lastPageUrl) {
    this.lastPageUrl = lastPageUrl;
  }

  @action
  setNextPageUrl(String nextPageUrl) {
    this.nextPageUrl = nextPageUrl;
  }

  @action
  setPath(String path) {
    this.path = path;
  }

  @action
  setPerPage(int perPage) {
    this.perPage = perPage;
  }

  @action
  setPrevPageUrl(String prevPageUrl) {
    this.prevPageUrl = prevPageUrl;
  }

  @action
  setTo(int to) {
    this.to = to;
  }

  @action
  setTotal(int total) {
    this.total = total;
  }

  @action
  setSort(String sort) {
    this.sort = sort;
  }

  @action
  setAsc(bool asc) {
    this.asc = asc;
  }

  @action
  setTerm(String term) {
    this.term = term;
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
