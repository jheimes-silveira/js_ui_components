// GENERATED CODE - DO NOT MODIFY BY HAND

part of paginator;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservablePaginator<T> on _ObservablePaginatorBase<T>, Store {
  final _$dataAtom = Atom(name: '_ObservablePaginatorBase.data');

  @override
  ObservableList<dynamic> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<dynamic> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$currentPageAtom = Atom(name: '_ObservablePaginatorBase.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$firstPageUrlAtom =
      Atom(name: '_ObservablePaginatorBase.firstPageUrl');

  @override
  String get firstPageUrl {
    _$firstPageUrlAtom.reportRead();
    return super.firstPageUrl;
  }

  @override
  set firstPageUrl(String value) {
    _$firstPageUrlAtom.reportWrite(value, super.firstPageUrl, () {
      super.firstPageUrl = value;
    });
  }

  final _$fromAtom = Atom(name: '_ObservablePaginatorBase.from');

  @override
  int get from {
    _$fromAtom.reportRead();
    return super.from;
  }

  @override
  set from(int value) {
    _$fromAtom.reportWrite(value, super.from, () {
      super.from = value;
    });
  }

  final _$lastPageAtom = Atom(name: '_ObservablePaginatorBase.lastPage');

  @override
  bool get lastPage {
    _$lastPageAtom.reportRead();
    return super.lastPage;
  }

  @override
  set lastPage(bool value) {
    _$lastPageAtom.reportWrite(value, super.lastPage, () {
      super.lastPage = value;
    });
  }

  final _$lastPageUrlAtom = Atom(name: '_ObservablePaginatorBase.lastPageUrl');

  @override
  String get lastPageUrl {
    _$lastPageUrlAtom.reportRead();
    return super.lastPageUrl;
  }

  @override
  set lastPageUrl(String value) {
    _$lastPageUrlAtom.reportWrite(value, super.lastPageUrl, () {
      super.lastPageUrl = value;
    });
  }

  final _$nextPageUrlAtom = Atom(name: '_ObservablePaginatorBase.nextPageUrl');

  @override
  String get nextPageUrl {
    _$nextPageUrlAtom.reportRead();
    return super.nextPageUrl;
  }

  @override
  set nextPageUrl(String value) {
    _$nextPageUrlAtom.reportWrite(value, super.nextPageUrl, () {
      super.nextPageUrl = value;
    });
  }

  final _$pathAtom = Atom(name: '_ObservablePaginatorBase.path');

  @override
  String get path {
    _$pathAtom.reportRead();
    return super.path;
  }

  @override
  set path(String value) {
    _$pathAtom.reportWrite(value, super.path, () {
      super.path = value;
    });
  }

  final _$perPageAtom = Atom(name: '_ObservablePaginatorBase.perPage');

  @override
  int get perPage {
    _$perPageAtom.reportRead();
    return super.perPage;
  }

  @override
  set perPage(int value) {
    _$perPageAtom.reportWrite(value, super.perPage, () {
      super.perPage = value;
    });
  }

  final _$prevPageUrlAtom = Atom(name: '_ObservablePaginatorBase.prevPageUrl');

  @override
  String get prevPageUrl {
    _$prevPageUrlAtom.reportRead();
    return super.prevPageUrl;
  }

  @override
  set prevPageUrl(String value) {
    _$prevPageUrlAtom.reportWrite(value, super.prevPageUrl, () {
      super.prevPageUrl = value;
    });
  }

  final _$toAtom = Atom(name: '_ObservablePaginatorBase.to');

  @override
  int get to {
    _$toAtom.reportRead();
    return super.to;
  }

  @override
  set to(int value) {
    _$toAtom.reportWrite(value, super.to, () {
      super.to = value;
    });
  }

  final _$totalAtom = Atom(name: '_ObservablePaginatorBase.total');

  @override
  int get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(int value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$sortAtom = Atom(name: '_ObservablePaginatorBase.sort');

  @override
  String get sort {
    _$sortAtom.reportRead();
    return super.sort;
  }

  @override
  set sort(String value) {
    _$sortAtom.reportWrite(value, super.sort, () {
      super.sort = value;
    });
  }

  final _$ascAtom = Atom(name: '_ObservablePaginatorBase.asc');

  @override
  bool get asc {
    _$ascAtom.reportRead();
    return super.asc;
  }

  @override
  set asc(bool value) {
    _$ascAtom.reportWrite(value, super.asc, () {
      super.asc = value;
    });
  }

  final _$termAtom = Atom(name: '_ObservablePaginatorBase.term');

  @override
  String get term {
    _$termAtom.reportRead();
    return super.term;
  }

  @override
  set term(String value) {
    _$termAtom.reportWrite(value, super.term, () {
      super.term = value;
    });
  }

  final _$_ObservablePaginatorBaseActionController =
      ActionController(name: '_ObservablePaginatorBase');

  @override
  dynamic merge(ObservablePaginator<dynamic> page) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.merge');
    try {
      return super.merge(page);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setData(ObservableList<dynamic> data) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setData');
    try {
      return super.setData(data);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dataAdd(dynamic item) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.dataAdd');
    try {
      return super.dataAdd(item);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dataInsert(int index, dynamic item) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.dataInsert');
    try {
      return super.dataInsert(index, item);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCurrentPage(int currentPage) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setCurrentPage');
    try {
      return super.setCurrentPage(currentPage);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFirstPageUrl(String firstPageUrl) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setFirstPageUrl');
    try {
      return super.setFirstPageUrl(firstPageUrl);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFrom(int from) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setFrom');
    try {
      return super.setFrom(from);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLastPage(bool lastPage) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setLastPage');
    try {
      return super.setLastPage(lastPage);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLastPageUrl(String lastPageUrl) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setLastPageUrl');
    try {
      return super.setLastPageUrl(lastPageUrl);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNextPageUrl(String nextPageUrl) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setNextPageUrl');
    try {
      return super.setNextPageUrl(nextPageUrl);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPath(String path) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setPath');
    try {
      return super.setPath(path);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPerPage(int perPage) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setPerPage');
    try {
      return super.setPerPage(perPage);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPrevPageUrl(String prevPageUrl) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setPrevPageUrl');
    try {
      return super.setPrevPageUrl(prevPageUrl);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTo(int to) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setTo');
    try {
      return super.setTo(to);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTotal(int total) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setTotal');
    try {
      return super.setTotal(total);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSort(String sort) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setSort');
    try {
      return super.setSort(sort);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAsc(bool asc) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setAsc');
    try {
      return super.setAsc(asc);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTerm(String term) {
    final _$actionInfo = _$_ObservablePaginatorBaseActionController.startAction(
        name: '_ObservablePaginatorBase.setTerm');
    try {
      return super.setTerm(term);
    } finally {
      _$_ObservablePaginatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data},
currentPage: ${currentPage},
firstPageUrl: ${firstPageUrl},
from: ${from},
lastPage: ${lastPage},
lastPageUrl: ${lastPageUrl},
nextPageUrl: ${nextPageUrl},
path: ${path},
perPage: ${perPage},
prevPageUrl: ${prevPageUrl},
to: ${to},
total: ${total},
sort: ${sort},
asc: ${asc},
term: ${term}
    ''';
  }
}
