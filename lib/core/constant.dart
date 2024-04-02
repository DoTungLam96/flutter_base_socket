class SubAction {
  static String kSubscribe = 'sub';
  static String kUnsubscribe = 'unsub';
}

class LimitKey {
  static List<String> kIndexRealtime = [
    "indexId",
    "indexValue",
    "totalQtty",
    "totalValue",
    "advances",
    "declines",
    "nochanges",
    "ceiling",
    "floor",
    "allQty",
    "allValue",
    "time",
    "vol",
    "timeTDW",
    "totalQttyPrevTDW",
    "chartOpen",
    "chartHigh",
    "chartLow",
    "change",
    "changePercent",
    "totalBidValuePT",
    "totalOfferValuePT",
    "totalQttyPT",
    "totalValuePT"
  ];

  static List<String> kStockRealtime = [
    'stockSymbol',
    'best1Bid',
    'best1BidVol',
    'best2Bid',
    'best2BidVol',
    'best3Bid',
    'best3BidVol',
    'best4Bid',
    'best4BidVol',
    'best5Bid',
    'best5BidVol',
    'best6Bid',
    'best6BidVol',
    'best7Bid',
    'best7BidVol',
    'best8Bid',
    'best8BidVol',
    'best9Bid',
    'best9BidVol',
    'best10Bid',
    'best10BidVol',
    'best1Offer',
    'best1OfferVol',
    'best2Offer',
    'best2OfferVol',
    'best3Offer',
    'best3OfferVol',
    'best4Offer',
    'best4OfferVol',
    'best5Offer',
    'best5OfferVol',
    'best6Offer',
    'best6OfferVol',
    'best7Offer',
    'best7OfferVol',
    'best8Offer',
    'best8OfferVol',
    'best9Offer',
    'best9OfferVol',
    'best10Offer',
    'best10OfferVol',
    'matchedPrice',
    'matchedVolume',
    'highest',
    'exchange',
    'lowest',
    'avgPrice',
    'buyForeignQtty',
    'buyForeignValue',
    'sellForeignQtty',
    'sellForeignValue',
    'priceChange',
    'priceChangePercent',
    'nmTotalTradedQty',
    'nmTotalTradedValue',
    'currentBidQty',
    'currentOfferQty',
    'openInterest',
    'ceiling',
    'floor',
    'refPrice',
    'maturityDate',
    'session',
    'caStatus',
    'remainForeignQtty',
    'stockType',
    'tradingStatus',
    'lastTradingDate',
    'coveredWarrantType',
    'underlyingSymbol',
    'exercisePrice',
    'listedShare',
    'issuerName',
    'issueDate',
    'openPrice',
    'lastMatchedPrice',
    'prevINAV',
    'iNAV',
    'iNAVChange',
    'iNAVChangePercent',
    'iIndex',
    'maturityTime',
    'ptBestBidPrice',
    'ptBestBidQtty',
    'ptTotalBidQtty',
    'ptBestOfferPrice',
    'ptBestOfferQtty',
    'ptMatchQtty',
    'ptMatchPrice',
    'ptMaxPrice',
    'ptMaxQtty',
    'ptMinPrice',
    'ptMinQtty',
    'ptTotalTradedQtty',
    'ptTotalTradedValue'
  ];

  static List<String> kLeTableKeys = [
    'stockNo',
    'price',
    'vol',
    'accumulatedVol',
    'time',
    'ref',
    'side',
    'priceChange',
    'priceChangePercent',
    'changeType',
  ];

  static List<String> kMatchedByPrice = [
    'stockSymbol',
    'price',
    'totalVol',
    'buyUpVol',
    'sellDownVol',
    'unknownVol',
    'weight',
    'changeType',
    'stockVol',
    'stockBUVol',
    'stockSDVol',
    'stockUnknownVol',
  ];
}

enum SystemStatusChangedStatus {
  /// Status to refresh stock realtime to switch from PRE session
  /// Using replace is isPreSessionPrice field status
  refreshStockOrder,

  /// Status to refresh all stock realtime
  /// Using get prices from Exchanges
  refresh
}

extension SystemStatusChangedStatusEx on SystemStatusChangedStatus {
  String? get status {
    if (this == SystemStatusChangedStatus.refresh) {
      return 'REFRESH';
    }
    if (this == SystemStatusChangedStatus.refreshStockOrder) {
      return 'REFRESH_STOCK_ORDER';
    }

    return null;
  }
}
