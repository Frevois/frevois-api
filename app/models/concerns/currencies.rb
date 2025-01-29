# frozen_string_literal: true

module Currencies
  extend ActiveSupport::Concern

  ACCEPTED_CURRENCIES = {
    AED: 'United Arab Emirates Dirham',
    AFN: 'Afghan Afghani',
    ALL: 'Albanian Lek',
    AMD: 'Armenian Dram',
    ANG: 'Netherlands Antillean Gulden',
    AOA: 'Angolan Kwanza',
    ARS: 'Argentine Peso',
    AUD: 'Australian Dollar',
    AWG: 'Aruban Florin',
    AZN: 'Azerbaijani Manat',
    BAM: 'Bosnia and Herzegovina Convertible Mark',
    BBD: 'Barbadian Dollar',
    BDT: 'Bangladeshi Taka',
    BGN: 'Bulgarian Lev',
    BHD: 'Bahraini Dinar',
    BIF: 'Burundian Franc',
    BMD: 'Bermudian Dollar',
    BND: 'Brunei Dollar',
    BOB: 'Bolivian Boliviano',
    BRL: 'Brazilian Real',
    BSD: 'Bahamian Dollar',
    BTC: 'Bitcoin',
    BWP: 'Botswana Pula',
    BYN: 'Belarusian Ruble',
    BZD: 'Belize Dollar',
    CAD: 'Canadian Dollar',
    CDF: 'Congolese Franc',
    CHF: 'Swiss Franc',
    CLF: 'Unidad de Fomento',
    CLP: 'Chilean Peso',
    CNY: 'Chinese Renminbi Yuan',
    COP: 'Colombian Peso',
    CRC: 'Costa Rican Colón',
    CVE: 'Cape Verdean Escudo',
    CZK: 'Czech Koruna',
    DJF: 'Djiboutian Franc',
    DKK: 'Danish Krone',
    DOP: 'Dominican Peso',
    DZD: 'Algerian Dinar',
    EGP: 'Egyptian Pound',
    ETB: 'Ethiopian Birr',
    EUR: 'Euro',
    FJD: 'Fijian Dollar',
    FKP: 'Falkland Pound',
    GBP: 'British Pound',
    GEL: 'Georgian Lari',
    GIP: 'Gibraltar Pound',
    GMD: 'Gambian Dalasi',
    GNF: 'Guinean Franc',
    GTQ: 'Guatemalan Quetzal',
    GYD: 'Guyanese Dollar',
    HKD: 'Hong Kong Dollar',
    HNL: 'Honduran Lempira',
    HRK: 'Croatian Kuna',
    HTG: 'Haitian Gourde',
    HUF: 'Hungarian Forint',
    IDR: 'Indonesian Rupiah',
    ILS: 'Israeli New Sheqel',
    INR: 'Indian Rupee',
    IRR: 'Iranian Rial',
    ISK: 'Icelandic Króna',
    JMD: 'Jamaican Dollar',
    JOD: 'Jordanian Dinar',
    JPY: 'Japanese Yen',
    KES: 'Kenyan Shilling',
    KGS: 'Kyrgyzstani Som',
    KHR: 'Cambodian Riel',
    KMF: 'Comorian Franc',
    KRW: 'South Korean Won',
    KWD: 'Kuwaiti Dinar',
    KYD: 'Cayman Islands Dollar',
    KZT: 'Kazakhstani Tenge',
    LAK: 'Lao Kip',
    LBP: 'Lebanese Pound',
    LKR: 'Sri Lankan Rupee',
    LRD: 'Liberian Dollar',
    LSL: 'Lesotho Loti',
    MAD: 'Moroccan Dirham',
    MDL: 'Moldovan Leu',
    MGA: 'Malagasy Ariary',
    MKD: 'Macedonian Denar',
    MMK: 'Myanmar Kyat',
    MNT: 'Mongolian Tögrög',
    MOP: 'Macanese Pataca',
    MRO: 'Mauritanian Ouguiya',
    MUR: 'Mauritian Rupee',
    MVR: 'Maldivian Rufiyaa',
    MWK: 'Malawian Kwacha',
    MXN: 'Mexican Peso',
    MYR: 'Malaysian Ringgit',
    MZN: 'Mozambican Metical',
    NAD: 'Namibian Dollar',
    NGN: 'Nigerian Naira',
    NIO: 'Nicaraguan Córdoba',
    NOK: 'Norwegian Krone',
    NPR: 'Nepalese Rupee',
    NZD: 'New Zealand Dollar',
    PAB: 'Panamanian Balboa',
    PEN: 'Peruvian Sol',
    PGK: 'Papua New Guinean Kina',
    PHP: 'Philippine Peso',
    PKR: 'Pakistani Rupee',
    PLN: 'Polish Złoty',
    PYG: 'Paraguayan Guaraní',
    QAR: 'Qatari Riyal',
    RON: 'Romanian Leu',
    RSD: 'Serbian Dinar',
    RUB: 'Russian Ruble',
    RWF: 'Rwandan Franc',
    SAR: 'Saudi Riyal',
    SBD: 'Solomon Islands Dollar',
    SCR: 'Seychellois Rupee',
    SEK: 'Swedish Krona',
    SGD: 'Singapore Dollar',
    SHP: 'Saint Helenian Pound',
    SLL: 'Sierra Leonean Leone',
    SOS: 'Somali Shilling',
    SRD: 'Surinamese Dollar',
    STD: 'São Tomé and Príncipe Dobra',
    SZL: 'Swazi Lilangeni',
    THB: 'Thai Baht',
    TJS: 'Tajikistani Somoni',
    TOP: 'Tongan Paʻanga',
    TRY: 'Turkish Lira',
    TTD: 'Trinidad and Tobago Dollar',
    TWD: 'New Taiwan Dollar',
    TZS: 'Tanzanian Shilling',
    UAH: 'Ukrainian Hryvnia',
    UGX: 'Ugandan Shilling',
    USD: 'United States Dollar',
    UYU: 'Uruguayan Peso',
    UZS: 'Uzbekistan Som',
    VND: 'Vietnamese Đồng',
    VUV: 'Vanuatu Vatu',
    WST: 'Samoan Tala',
    XAF: 'Central African Cfa Franc',
    XCD: 'East Caribbean Dollar',
    XOF: 'West African Cfa Franc',
    XPF: 'Cfp Franc',
    YER: 'Yemeni Rial',
    ZAR: 'South African Rand',
    ZMW: 'Zambian Kwacha'
  }.freeze

  included do
    def self.currency_list
      ACCEPTED_CURRENCIES.keys.map(&:to_s).map(&:upcase)
    end
  end
end
