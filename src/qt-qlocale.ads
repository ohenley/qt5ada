--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014 ,2016                บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString; use Qt.QString;
with Interfaces.C; use Interfaces.C;
package Qt.QLocale is

type  QLocaleFormatType is (LongFormat, ShortFormat , NarrowFormat);
pragma convention (C,QLocaleFormatType);

type QLocaleQuotationStyle is (StandardQuotation, AlternateQuotation); 
pragma convention (C,QLocaleQuotationStyle);

subtype QLocaleMeasurementSystem is cardinal range 0 .. 2;

 MetricSystem     : constant QLocaleMeasurementSystem := 0;
 ImperialUSSystem : constant QLocaleMeasurementSystem := 1;
 ImperialUKSystem : constant QLocaleMeasurementSystem := 2;
 ImperialSystem   : constant QLocaleMeasurementSystem := ImperialUSSystem;

subtype QLocaleNumberOption  is cardinal range 1 .. 2;

 OmitGroupSeparator   : constant QLocaleNumberOption := 1;
 RejectGroupSeparator : constant QLocaleNumberOption := 2;

 type QLocaleCurrencySymbolFormat is (CurrencyIsoCode,CurrencySymbol,CurrencyDisplayName);
 pragma convention (C,QLocaleCurrencySymbolFormat); 

subtype QLocaleNumberOptions is cardinal;

QLocaleOmitGroupSeparator   : QLocaleNumberOption := 1;
QLocaleRejectGroupSeparator : QLocaleNumberOption := 2;

type QSystemLocaleQueryType is (
    QSystemLocaleLanguageId, QSystemLocaleCountryId, QSystemLocaleDecimalPoint, QSystemLocaleGroupSeparator, QSystemLocaleZeroDigit, QSystemLocaleNegativeSign, QSystemLocaleDateFormatLong, 
    QSystemLocaleDateFormatShort, QSystemLocaleTimeFormatLong, QSystemLocaleTimeFormatShort, QSystemLocaleDayNameLong, QSystemLocaleDayNameShort, QSystemLocaleMonthNameLong, QSystemLocaleMonthNameShort, 
    QSystemLocaleDateToStringLong, QSystemLocaleDateToStringShort, QSystemLocaleTimeToStringLong, QSystemLocaleTimeToStringShort );

subtype QLocaleLanguage is cardinal range 0 .. 314; 

 AnyLanguage               : constant QLocaleLanguage := 0;
 C                         : constant QLocaleLanguage := 1;
 Abkhazian                 : constant QLocaleLanguage := 2;
 Oromo                     : constant QLocaleLanguage := 3;
 Afar                      : constant QLocaleLanguage := 4;
 Afrikaans                 : constant QLocaleLanguage := 5;
 Albanian                  : constant QLocaleLanguage := 6;
 Amharic                   : constant QLocaleLanguage := 7;
 Arabic                    : constant QLocaleLanguage := 8;
 Armenian                  : constant QLocaleLanguage := 9;
 Assamese                  : constant QLocaleLanguage := 10;
 Aymara                    : constant QLocaleLanguage := 11;
 Azerbaijani               : constant QLocaleLanguage := 12;
 Bashkir                   : constant QLocaleLanguage := 13;
 Basque                    : constant QLocaleLanguage := 14;
 Bengali                   : constant QLocaleLanguage := 15;
 Dzongkha                  : constant QLocaleLanguage := 16;
 Bihari                    : constant QLocaleLanguage := 17;
 Bislama                   : constant QLocaleLanguage := 18;
 Breton                    : constant QLocaleLanguage := 19;
 Bulgarian                 : constant QLocaleLanguage := 20;
 Burmese                   : constant QLocaleLanguage := 21;
 Belarusian                : constant QLocaleLanguage := 22;
 Khmer                     : constant QLocaleLanguage := 23;
 Catalan                   : constant QLocaleLanguage := 24;
 Chinese                   : constant QLocaleLanguage := 25;
 Corsican                  : constant QLocaleLanguage := 26;
 Croatian                  : constant QLocaleLanguage := 27;
 Czech                     : constant QLocaleLanguage := 28;
 Danish                    : constant QLocaleLanguage := 29;
 Dutch                     : constant QLocaleLanguage := 30;
 English                   : constant QLocaleLanguage := 31;
 Esperanto                 : constant QLocaleLanguage := 32;
 Estonian                  : constant QLocaleLanguage := 33;
 Faroese                   : constant QLocaleLanguage := 34;
 Fijian                    : constant QLocaleLanguage := 35;
 Finnish                   : constant QLocaleLanguage := 36;
 French                    : constant QLocaleLanguage := 37;
 WesternFrisian            : constant QLocaleLanguage := 38;
 Gaelic                    : constant QLocaleLanguage := 39;
 Galician                  : constant QLocaleLanguage := 40;
 Georgian                  : constant QLocaleLanguage := 41;
 German                    : constant QLocaleLanguage := 42;
 Greek                     : constant QLocaleLanguage := 43;
 Greenlandic               : constant QLocaleLanguage := 44;
 Guarani                   : constant QLocaleLanguage := 45;
 Gujarati                  : constant QLocaleLanguage := 46;
 Hausa                     : constant QLocaleLanguage := 47;
 Hebrew                    : constant QLocaleLanguage := 48;
 Hindi                     : constant QLocaleLanguage := 49;
 Hungarian                 : constant QLocaleLanguage := 50;
 Icelandic                 : constant QLocaleLanguage := 51;
 Indonesian                : constant QLocaleLanguage := 52;
 Interlingua               : constant QLocaleLanguage := 53;
 Interlingue               : constant QLocaleLanguage := 54;
 Inuktitut                 : constant QLocaleLanguage := 55;
 Inupiak                   : constant QLocaleLanguage := 56;
 Irish                     : constant QLocaleLanguage := 57;
 Italian                   : constant QLocaleLanguage := 58;
 Japanese                  : constant QLocaleLanguage := 59;
 Javanese                  : constant QLocaleLanguage := 60;
 Kannada                   : constant QLocaleLanguage := 61;
 Kashmiri                  : constant QLocaleLanguage := 62;
 Kazakh                    : constant QLocaleLanguage := 63;
 Kinyarwanda               : constant QLocaleLanguage := 64;
 Kirghiz                   : constant QLocaleLanguage := 65;
 Korean                    : constant QLocaleLanguage := 66;
 Kurdish                   : constant QLocaleLanguage := 67;
 Rundi                     : constant QLocaleLanguage := 68;
 Lao                       : constant QLocaleLanguage := 69;
 Latin                     : constant QLocaleLanguage := 70;
 Latvian                   : constant QLocaleLanguage := 71;
 Lingala                   : constant QLocaleLanguage := 72;
 Lithuanian                : constant QLocaleLanguage := 73;
 Macedonian                : constant QLocaleLanguage := 74;
 Malagasy                  : constant QLocaleLanguage := 75;
 Malay                     : constant QLocaleLanguage := 76;
 Malayalam                 : constant QLocaleLanguage := 77;
 Maltese                   : constant QLocaleLanguage := 78;
 Maori                     : constant QLocaleLanguage := 79;
 Marathi                   : constant QLocaleLanguage := 80;
 Marshallese               : constant QLocaleLanguage := 81;
 Mongolian                 : constant QLocaleLanguage := 82;
 NauruLanguage             : constant QLocaleLanguage := 83;
 Nepali                    : constant QLocaleLanguage := 84;
 NorwegianBokmal           : constant QLocaleLanguage := 85;
 Occitan                   : constant QLocaleLanguage := 86;
 Oriya                     : constant QLocaleLanguage := 87;
 Pashto                    : constant QLocaleLanguage := 88;
 Persian                   : constant QLocaleLanguage := 89;
 Polish                    : constant QLocaleLanguage := 90;
 Portuguese                : constant QLocaleLanguage := 91;
 Punjabi                   : constant QLocaleLanguage := 92;
 Quechua                   : constant QLocaleLanguage := 93;
 Romansh                   : constant QLocaleLanguage := 94;
 Romanian                  : constant QLocaleLanguage := 95;
 Russian                   : constant QLocaleLanguage := 96;
 Samoan                    : constant QLocaleLanguage := 97;
 Sango                     : constant QLocaleLanguage := 98;
 Sanskrit                  : constant QLocaleLanguage := 99;
 Serbian                   : constant QLocaleLanguage := 100;
 Ossetic                   : constant QLocaleLanguage := 101;
 SouthernSotho             : constant QLocaleLanguage := 102;
 Tswana                    : constant QLocaleLanguage := 103;
 Shona                     : constant QLocaleLanguage := 104;
 Sindhi                    : constant QLocaleLanguage := 105;
 Sinhala                   : constant QLocaleLanguage := 106;
 Swati                     : constant QLocaleLanguage := 107;
 Slovak                    : constant QLocaleLanguage := 108;
 Slovenian                 : constant QLocaleLanguage := 109;
 Somali                    : constant QLocaleLanguage := 110;
 Spanish                   : constant QLocaleLanguage := 111;
 Sundanese                 : constant QLocaleLanguage := 112;
 Swahili                   : constant QLocaleLanguage := 113;
 Swedish                   : constant QLocaleLanguage := 114;
 Sardinian                 : constant QLocaleLanguage := 115;
 Tajik                     : constant QLocaleLanguage := 116;
 Tamil                     : constant QLocaleLanguage := 117;
 Tatar                     : constant QLocaleLanguage := 118;
 Telugu                    : constant QLocaleLanguage := 119;
 Thai                      : constant QLocaleLanguage := 120;
 Tibetan                   : constant QLocaleLanguage := 121;
 Tigrinya                  : constant QLocaleLanguage := 122;
 Tongan                    : constant QLocaleLanguage := 123;
 Tsonga                    : constant QLocaleLanguage := 124;
 Turkish                   : constant QLocaleLanguage := 125;
 Turkmen                   : constant QLocaleLanguage := 126;
 Tahitian                  : constant QLocaleLanguage := 127;
 Uighur                    : constant QLocaleLanguage := 128;
 Ukrainian                 : constant QLocaleLanguage := 129;
 Urdu                      : constant QLocaleLanguage := 130;
 Uzbek                     : constant QLocaleLanguage := 131;
 Vietnamese                : constant QLocaleLanguage := 132;
 Volapuk                   : constant QLocaleLanguage := 133;
 Welsh                     : constant QLocaleLanguage := 134;
 Wolof                     : constant QLocaleLanguage := 135;
 Xhosa                     : constant QLocaleLanguage := 136;
 Yiddish                   : constant QLocaleLanguage := 137;
 Yoruba                    : constant QLocaleLanguage := 138;
 Zhuang                    : constant QLocaleLanguage := 139;
 Zulu                      : constant QLocaleLanguage := 140;
 NorwegianNynorsk          : constant QLocaleLanguage := 141;
 Bosnian                   : constant QLocaleLanguage := 142;
 Divehi                    : constant QLocaleLanguage := 143;
 Manx                      : constant QLocaleLanguage := 144;
 Cornish                   : constant QLocaleLanguage := 145;
 Akan                      : constant QLocaleLanguage := 146;
 Konkani                   : constant QLocaleLanguage := 147;
 Ga                        : constant QLocaleLanguage := 148;
 Igbo                      : constant QLocaleLanguage := 149;
 Kamba                     : constant QLocaleLanguage := 150;
 Syriac                    : constant QLocaleLanguage := 151;
 Blin                      : constant QLocaleLanguage := 152;
 Geez                      : constant QLocaleLanguage := 153;
 Koro                      : constant QLocaleLanguage := 154;
 Sidamo                    : constant QLocaleLanguage := 155;
 Atsam                     : constant QLocaleLanguage := 156;
 Tigre                     : constant QLocaleLanguage := 157;
 Jju                       : constant QLocaleLanguage := 158;
 Friulian                  : constant QLocaleLanguage := 159;
 Venda                     : constant QLocaleLanguage := 160;
 Ewe                       : constant QLocaleLanguage := 161;
 Walamo                    : constant QLocaleLanguage := 162;
 Hawaiian                  : constant QLocaleLanguage := 163;
 Tyap                      : constant QLocaleLanguage := 164;
 Nyanja                    : constant QLocaleLanguage := 165;
 Filipino                  : constant QLocaleLanguage := 166;
 SwissGerman               : constant QLocaleLanguage := 167;
 SichuanYi                 : constant QLocaleLanguage := 168;
 Kpelle                    : constant QLocaleLanguage := 169;
 LowGerman                 : constant QLocaleLanguage := 170;
 SouthNdebele              : constant QLocaleLanguage := 171;
 NorthernSotho             : constant QLocaleLanguage := 172;
 NorthernSami              : constant QLocaleLanguage := 173;
 Taroko                    : constant QLocaleLanguage := 174;
 Gusii                     : constant QLocaleLanguage := 175;
 Taita                     : constant QLocaleLanguage := 176;
 Fulah                     : constant QLocaleLanguage := 177;
 Kikuyu                    : constant QLocaleLanguage := 178;
 Samburu                   : constant QLocaleLanguage := 179;
 Sena                      : constant QLocaleLanguage := 180;
 NorthNdebele              : constant QLocaleLanguage := 181;
 Rombo                     : constant QLocaleLanguage := 182;
 Tachelhit                 : constant QLocaleLanguage := 183;
 Kabyle                    : constant QLocaleLanguage := 184;
 Nyankole                  : constant QLocaleLanguage := 185;
 Bena                      : constant QLocaleLanguage := 186;
 Vunjo                     : constant QLocaleLanguage := 187;
 Bambara                   : constant QLocaleLanguage := 188;
 Embu                      : constant QLocaleLanguage := 189;
 Cherokee                  : constant QLocaleLanguage := 190;
 Morisyen                  : constant QLocaleLanguage := 191;
 Makonde                   : constant QLocaleLanguage := 192;
 Langi                     : constant QLocaleLanguage := 193;
 Ganda                     : constant QLocaleLanguage := 194;
 Bemba                     : constant QLocaleLanguage := 195;
 Kabuverdianu              : constant QLocaleLanguage := 196;
 Meru                      : constant QLocaleLanguage := 197;
 Kalenjin                  : constant QLocaleLanguage := 198;
 Nama                      : constant QLocaleLanguage := 199;
 Machame                   : constant QLocaleLanguage := 200;
 Colognian                 : constant QLocaleLanguage := 201;
 Masai                     : constant QLocaleLanguage := 202;
 Soga                      : constant QLocaleLanguage := 203;
 Luyia                     : constant QLocaleLanguage := 204;
 Asu                       : constant QLocaleLanguage := 205;
 Teso                      : constant QLocaleLanguage := 206;
 Saho                      : constant QLocaleLanguage := 207;
 KoyraChiini               : constant QLocaleLanguage := 208;
 Rwa                       : constant QLocaleLanguage := 209;
 Luo                       : constant QLocaleLanguage := 210;
 Chiga                     : constant QLocaleLanguage := 211;
 CentralMoroccoTamazight   : constant QLocaleLanguage := 212;
 KoyraboroSenni            : constant QLocaleLanguage := 213;
 Shambala                  : constant QLocaleLanguage := 214;
 Bodo                      : constant QLocaleLanguage := 215;
 Avaric                    : constant QLocaleLanguage := 216;
 Chamorro                  : constant QLocaleLanguage := 217;
 Chechen                   : constant QLocaleLanguage := 218;
 Church                    : constant QLocaleLanguage := 219;
 Chuvash                   : constant QLocaleLanguage := 220;
 Cree                      : constant QLocaleLanguage := 221;
 Haitian                   : constant QLocaleLanguage := 222;
 Herero                    : constant QLocaleLanguage := 223;
 HiriMotu                  : constant QLocaleLanguage := 224;
 Kanuri                    : constant QLocaleLanguage := 225;
 Komi                      : constant QLocaleLanguage := 226;
 Kongo                     : constant QLocaleLanguage := 227;
 Kwanyama                  : constant QLocaleLanguage := 228;
 Limburgish                : constant QLocaleLanguage := 229;
 LubaKatanga               : constant QLocaleLanguage := 230;
 Luxembourgish             : constant QLocaleLanguage := 231;
 Navaho                    : constant QLocaleLanguage := 232;
 Ndonga                    : constant QLocaleLanguage := 233;
 Ojibwa                    : constant QLocaleLanguage := 234;
 Pali                      : constant QLocaleLanguage := 235;
 Walloon                   : constant QLocaleLanguage := 236;
 Aghem                     : constant QLocaleLanguage := 237;
 Basaa                     : constant QLocaleLanguage := 238;
 Zarma                     : constant QLocaleLanguage := 239;
 Duala                     : constant QLocaleLanguage := 240;
 JolaFonyi                 : constant QLocaleLanguage := 241;
 Ewondo                    : constant QLocaleLanguage := 242;
 Bafia                     : constant QLocaleLanguage := 243;
 MakhuwaMeetto             : constant QLocaleLanguage := 244;
 Mundang                   : constant QLocaleLanguage := 245;
 Kwasio                    : constant QLocaleLanguage := 246;
 Nuer                      : constant QLocaleLanguage := 247;
 Sakha                     : constant QLocaleLanguage := 248;
 Sangu                     : constant QLocaleLanguage := 249;
 CongoSwahili              : constant QLocaleLanguage := 250;
 Tasawaq                   : constant QLocaleLanguage := 251;
 Vai                       : constant QLocaleLanguage := 252;
 Walser                    : constant QLocaleLanguage := 253;
 Yangben                   : constant QLocaleLanguage := 254;
 Avestan                   : constant QLocaleLanguage := 255;
 Asturian                  : constant QLocaleLanguage := 256;
 Ngomba                    : constant QLocaleLanguage := 257;
 Kako                      : constant QLocaleLanguage := 258;
 Meta                      : constant QLocaleLanguage := 259;
 Ngiemboon                 : constant QLocaleLanguage := 260;
 Aragonese                 : constant QLocaleLanguage := 261;
 Akkadian                  : constant QLocaleLanguage := 262;
 AncientEgyptian           : constant QLocaleLanguage := 263;
 AncientGreek              : constant QLocaleLanguage := 264;
 Aramaic                   : constant QLocaleLanguage := 265;
 Balinese                  : constant QLocaleLanguage := 266;
 Bamun                     : constant QLocaleLanguage := 267;
 BatakToba                 : constant QLocaleLanguage := 268;
 Buginese                  : constant QLocaleLanguage := 269;
 Buhid                     : constant QLocaleLanguage := 270;
 Carian                    : constant QLocaleLanguage := 271;
 Chakma                    : constant QLocaleLanguage := 272;
 ClassicalMandaic          : constant QLocaleLanguage := 273;
 Coptic                    : constant QLocaleLanguage := 274;
 Dogri                     : constant QLocaleLanguage := 275;
 EasternCham               : constant QLocaleLanguage := 276;
 EasternKayah              : constant QLocaleLanguage := 277;
 Etruscan                  : constant QLocaleLanguage := 278;
 Gothic                    : constant QLocaleLanguage := 279;
 Hanunoo                   : constant QLocaleLanguage := 280;
 Ingush                    : constant QLocaleLanguage := 281;
 LargeFloweryMiao          : constant QLocaleLanguage := 282;
 Lepcha                    : constant QLocaleLanguage := 283;
 Limbu                     : constant QLocaleLanguage := 284;
 Lisu                      : constant QLocaleLanguage := 285;
 Lu                        : constant QLocaleLanguage := 286;
 Lycian                    : constant QLocaleLanguage := 287;
 Lydian                    : constant QLocaleLanguage := 288;
 Mandingo                  : constant QLocaleLanguage := 289;
 Manipuri                  : constant QLocaleLanguage := 290;
 Meroitic                  : constant QLocaleLanguage := 291;
 NorthernThai              : constant QLocaleLanguage := 292;
 OldIrish                  : constant QLocaleLanguage := 293;
 OldNorse                  : constant QLocaleLanguage := 294;
 OldPersian                : constant QLocaleLanguage := 295;
 OldTurkish                : constant QLocaleLanguage := 296;
 Pahlavi                   : constant QLocaleLanguage := 297;
 Parthian                  : constant QLocaleLanguage := 298;
 Phoenician                : constant QLocaleLanguage := 299;
 PrakritLanguage           : constant QLocaleLanguage := 300;
 Rejang                    : constant QLocaleLanguage := 301;
 Sabaean                   : constant QLocaleLanguage := 302;
 Samaritan                 : constant QLocaleLanguage := 303;
 Santali                   : constant QLocaleLanguage := 304;
 Saurashtra                : constant QLocaleLanguage := 305;
 Sora                      : constant QLocaleLanguage := 306;
 Sylheti                   : constant QLocaleLanguage := 307;
 Tagbanwa                  : constant QLocaleLanguage := 308;
 TaiDam                    : constant QLocaleLanguage := 309;
 TaiNua                    : constant QLocaleLanguage := 310;
 Ugaritic                  : constant QLocaleLanguage := 311;
 Akoose                    : constant QLocaleLanguage := 312;
 Lakota                    : constant QLocaleLanguage := 313;
 StandardMoroccanTamazight : constant QLocaleLanguage := 314;
 Norwegian                 : constant QLocaleLanguage := NorwegianBokmal;
 Moldavian                 : constant QLocaleLanguage := Romanian;
 SerboCroatian             : constant QLocaleLanguage := Serbian;
 Tagalog                   : constant QLocaleLanguage := Filipino;
 Twi                       : constant QLocaleLanguage := Akan;
 Afan                      : constant QLocaleLanguage := Oromo;
 Byelorussian              : constant QLocaleLanguage := Belarusian;
 Bhutani                   : constant QLocaleLanguage := Dzongkha;
 Cambodian                 : constant QLocaleLanguage := Khmer;
 Kurundi                   : constant QLocaleLanguage := Rundi;
 RhaetoRomance             : constant QLocaleLanguage := Romansh;
 Chewa                     : constant QLocaleLanguage := Nyanja;
 Frisian                   : constant QLocaleLanguage := WesternFrisian;
 Uigur                     : constant QLocaleLanguage := Uighur;
 LastLanguage              : constant QLocaleLanguage := StandardMoroccanTamazight;

 subtype QLocaleScript is cardinal range 0 .. 104;

 AnyScript                   : constant QLocaleScript := 0;
 ArabicScript                : constant QLocaleScript := 1;
 CyrillicScript              : constant QLocaleScript := 2;
 DeseretScript               : constant QLocaleScript := 3;
 GurmukhiScript              : constant QLocaleScript := 4;
 SimplifiedHanScript         : constant QLocaleScript := 5;
 TraditionalHanScript        : constant QLocaleScript := 6;
 LatinScript                 : constant QLocaleScript := 7;
 MongolianScript             : constant QLocaleScript := 8;
 TifinaghScript              : constant QLocaleScript := 9;
 ArmenianScript              : constant QLocaleScript := 10;
 BengaliScript               : constant QLocaleScript := 11;
 CherokeeScript              : constant QLocaleScript := 12;
 DevanagariScript            : constant QLocaleScript := 13;
 EthiopicScript              : constant QLocaleScript := 14;
 GeorgianScript              : constant QLocaleScript := 15;
 GreekScript                 : constant QLocaleScript := 16;
 GujaratiScript              : constant QLocaleScript := 17;
 HebrewScript                : constant QLocaleScript := 18;
 JapaneseScript              : constant QLocaleScript := 19;
 KhmerScript                 : constant QLocaleScript := 20;
 KannadaScript               : constant QLocaleScript := 21;
 KoreanScript                : constant QLocaleScript := 22;
 LaoScript                   : constant QLocaleScript := 23;
 MalayalamScript             : constant QLocaleScript := 24;
 MyanmarScript               : constant QLocaleScript := 25;
 OriyaScript                 : constant QLocaleScript := 26;
 TamilScript                 : constant QLocaleScript := 27;
 TeluguScript                : constant QLocaleScript := 28;
 ThaanaScript                : constant QLocaleScript := 29;
 ThaiScript                  : constant QLocaleScript := 30;
 TibetanScript               : constant QLocaleScript := 31;
 SinhalaScript               : constant QLocaleScript := 32;
 SyriacScript                : constant QLocaleScript := 33;
 YiScript                    : constant QLocaleScript := 34;
 VaiScript                   : constant QLocaleScript := 35;
 AvestanScript               : constant QLocaleScript := 36;
 BalineseScript              : constant QLocaleScript := 37;
 BamumScript                 : constant QLocaleScript := 38;
 BatakScript                 : constant QLocaleScript := 39;
 BopomofoScript              : constant QLocaleScript := 40;
 BrahmiScript                : constant QLocaleScript := 41;
 BugineseScript              : constant QLocaleScript := 42;
 BuhidScript                 : constant QLocaleScript := 43;
 CanadianAboriginalScript    : constant QLocaleScript := 44;
 CarianScript                : constant QLocaleScript := 45;
 ChakmaScript                : constant QLocaleScript := 46;
 ChamScript                  : constant QLocaleScript := 47;
 CopticScript                : constant QLocaleScript := 48;
 CypriotScript               : constant QLocaleScript := 49;
 EgyptianHieroglyphsScript   : constant QLocaleScript := 50;
 FraserScript                : constant QLocaleScript := 51;
 GlagoliticScript            : constant QLocaleScript := 52;
 GothicScript                : constant QLocaleScript := 53;
 HanScript                   : constant QLocaleScript := 54;
 HangulScript                : constant QLocaleScript := 55;
 HanunooScript               : constant QLocaleScript := 56;
 ImperialAramaicScript       : constant QLocaleScript := 57;
 InscriptionalPahlaviScript  : constant QLocaleScript := 58;
 InscriptionalParthianScript : constant QLocaleScript := 59;
 JavaneseScript              : constant QLocaleScript := 60;
 KaithiScript                : constant QLocaleScript := 61;
 KatakanaScript              : constant QLocaleScript := 62;
 KayahLiScript               : constant QLocaleScript := 63;
 KharoshthiScript            : constant QLocaleScript := 64;
 LannaScript                 : constant QLocaleScript := 65;
 LepchaScript                : constant QLocaleScript := 66;
 LimbuScript                 : constant QLocaleScript := 67;
 LinearBScript               : constant QLocaleScript := 68;
 LycianScript                : constant QLocaleScript := 69;
 LydianScript                : constant QLocaleScript := 70;
 MandaeanScript              : constant QLocaleScript := 71;
 MeiteiMayekScript           : constant QLocaleScript := 72;
 MeroiticScript              : constant QLocaleScript := 73;
 MeroiticCursiveScript       : constant QLocaleScript := 74;
 NkoScript                   : constant QLocaleScript := 75;
 NewTaiLueScript             : constant QLocaleScript := 76;
 OghamScript                 : constant QLocaleScript := 77;
 OlChikiScript               : constant QLocaleScript := 78;
 OldItalicScript             : constant QLocaleScript := 79;
 OldPersianScript            : constant QLocaleScript := 80;
 OldSouthArabianScript       : constant QLocaleScript := 81;
 OrkhonScript                : constant QLocaleScript := 82;
 OsmanyaScript               : constant QLocaleScript := 83;
 PhagsPaScript               : constant QLocaleScript := 84;
 PhoenicianScript            : constant QLocaleScript := 85;
 PollardPhoneticScript       : constant QLocaleScript := 86;
 RejangScript                : constant QLocaleScript := 87;
 RunicScript                 : constant QLocaleScript := 88;
 SamaritanScript             : constant QLocaleScript := 89;
 SaurashtraScript            : constant QLocaleScript := 90;
 SharadaScript               : constant QLocaleScript := 91;
 ShavianScript               : constant QLocaleScript := 92;
 SoraSompengScript           : constant QLocaleScript := 93;
 CuneiformScript             : constant QLocaleScript := 94;
 SundaneseScript             : constant QLocaleScript := 95;
 SylotiNagriScript           : constant QLocaleScript := 96;
 TagalogScript               : constant QLocaleScript := 97;
 TagbanwaScript              : constant QLocaleScript := 98;
 TaiLeScript                 : constant QLocaleScript := 99;
 TaiVietScript               : constant QLocaleScript := 100;
 TakriScript                 : constant QLocaleScript := 101;
 UgariticScript              : constant QLocaleScript := 102;
 BrailleScript               : constant QLocaleScript := 103;
 HiraganaScript              : constant QLocaleScript := 104;
 SimplifiedChineseScript     : constant QLocaleScript := SimplifiedHanScript;
 TraditionalChineseScript    : constant QLocaleScript := TraditionalHanScript;
 LastScript                  : constant QLocaleScript := HiraganaScript; 


subtype  QLocaleCountry is cardinal range 0 .. 257;

 AnyCountry                             : constant QLocaleCountry := 0;
 Afghanistan                            : constant QLocaleCountry := 1;
 Albania                                : constant QLocaleCountry := 2;
 Algeria                                : constant QLocaleCountry := 3;
 AmericanSamoa                          : constant QLocaleCountry := 4;
 Andorra                                : constant QLocaleCountry := 5;
 Angola                                 : constant QLocaleCountry := 6;
 Anguilla                               : constant QLocaleCountry := 7;
 Antarctica                             : constant QLocaleCountry := 8;
 AntiguaAndBarbuda                      : constant QLocaleCountry := 9;
 Argentina                              : constant QLocaleCountry := 10;
 Armenia                                : constant QLocaleCountry := 11;
 Aruba                                  : constant QLocaleCountry := 12;
 Australia                              : constant QLocaleCountry := 13;
 Austria                                : constant QLocaleCountry := 14;
 Azerbaijan                             : constant QLocaleCountry := 15;
 Bahamas                                : constant QLocaleCountry := 16;
 Bahrain                                : constant QLocaleCountry := 17;
 Bangladesh                             : constant QLocaleCountry := 18;
 Barbados                               : constant QLocaleCountry := 19;
 Belarus                                : constant QLocaleCountry := 20;
 Belgium                                : constant QLocaleCountry := 21;
 Belize                                 : constant QLocaleCountry := 22;
 Benin                                  : constant QLocaleCountry := 23;
 Bermuda                                : constant QLocaleCountry := 24;
 Bhutan                                 : constant QLocaleCountry := 25;
 Bolivia                                : constant QLocaleCountry := 26;
 BosniaAndHerzegowina                   : constant QLocaleCountry := 27;
 Botswana                               : constant QLocaleCountry := 28;
 BouvetIsland                           : constant QLocaleCountry := 29;
 Brazil                                 : constant QLocaleCountry := 30;
 BritishIndianOceanTerritory            : constant QLocaleCountry := 31;
 Brunei                                 : constant QLocaleCountry := 32;
 Bulgaria                               : constant QLocaleCountry := 33;
 BurkinaFaso                            : constant QLocaleCountry := 34;
 Burundi                                : constant QLocaleCountry := 35;
 Cambodia                               : constant QLocaleCountry := 36;
 Cameroon                               : constant QLocaleCountry := 37;
 Canada                                 : constant QLocaleCountry := 38;
 CapeVerde                              : constant QLocaleCountry := 39;
 CaymanIslands                          : constant QLocaleCountry := 40;
 CentralAfricanRepublic                 : constant QLocaleCountry := 41;
 Chad                                   : constant QLocaleCountry := 42;
 Chile                                  : constant QLocaleCountry := 43;
 China                                  : constant QLocaleCountry := 44;
 ChristmasIsland                        : constant QLocaleCountry := 45;
 CocosIslands                           : constant QLocaleCountry := 46;
 Colombia                               : constant QLocaleCountry := 47;
 Comoros                                : constant QLocaleCountry := 48;
 CongoKinshasa                          : constant QLocaleCountry := 49;
 CongoBrazzaville                       : constant QLocaleCountry := 50;
 CookIslands                            : constant QLocaleCountry := 51;
 CostaRica                              : constant QLocaleCountry := 52;
 IvoryCoast                             : constant QLocaleCountry := 53;
 Croatia                                : constant QLocaleCountry := 54;
 Cuba                                   : constant QLocaleCountry := 55;
 Cyprus                                 : constant QLocaleCountry := 56;
 CzechRepublic                          : constant QLocaleCountry := 57;
 Denmark                                : constant QLocaleCountry := 58;
 Djibouti                               : constant QLocaleCountry := 59;
 Dominica                               : constant QLocaleCountry := 60;
 DominicanRepublic                      : constant QLocaleCountry := 61;
 EastTimor                              : constant QLocaleCountry := 62;
 Ecuador                                : constant QLocaleCountry := 63;
 Egypt                                  : constant QLocaleCountry := 64;
 ElSalvador                             : constant QLocaleCountry := 65;
 EquatorialGuinea                       : constant QLocaleCountry := 66;
 Eritrea                                : constant QLocaleCountry := 67;
 Estonia                                : constant QLocaleCountry := 68;
 Ethiopia                               : constant QLocaleCountry := 69;
 FalklandIslands                        : constant QLocaleCountry := 70;
 FaroeIslands                           : constant QLocaleCountry := 71;
 Fiji                                   : constant QLocaleCountry := 72;
 Finland                                : constant QLocaleCountry := 73;
 France                                 : constant QLocaleCountry := 74;
 Guernsey                               : constant QLocaleCountry := 75;
 FrenchGuiana                           : constant QLocaleCountry := 76;
 FrenchPolynesia                        : constant QLocaleCountry := 77;
 FrenchSouthernTerritories              : constant QLocaleCountry := 78;
 Gabon                                  : constant QLocaleCountry := 79;
 Gambia                                 : constant QLocaleCountry := 80;
 Georgia                                : constant QLocaleCountry := 81;
 Germany                                : constant QLocaleCountry := 82;
 Ghana                                  : constant QLocaleCountry := 83;
 Gibraltar                              : constant QLocaleCountry := 84;
 Greece                                 : constant QLocaleCountry := 85;
 Greenland                              : constant QLocaleCountry := 86;
 Grenada                                : constant QLocaleCountry := 87;
 Guadeloupe                             : constant QLocaleCountry := 88;
 Guam                                   : constant QLocaleCountry := 89;
 Guatemala                              : constant QLocaleCountry := 90;
 Guinea                                 : constant QLocaleCountry := 91;
 GuineaBissau                           : constant QLocaleCountry := 92;
 Guyana                                 : constant QLocaleCountry := 93;
 Haiti                                  : constant QLocaleCountry := 94;
 HeardAndMcDonaldIslands                : constant QLocaleCountry := 95;
 Honduras                               : constant QLocaleCountry := 96;
 HongKong                               : constant QLocaleCountry := 97;
 Hungary                                : constant QLocaleCountry := 98;
 Iceland                                : constant QLocaleCountry := 99;
 India                                  : constant QLocaleCountry := 100;
 Indonesia                              : constant QLocaleCountry := 101;
 Iran                                   : constant QLocaleCountry := 102;
 Iraq                                   : constant QLocaleCountry := 103;
 Ireland                                : constant QLocaleCountry := 104;
 Israel                                 : constant QLocaleCountry := 105;
 Italy                                  : constant QLocaleCountry := 106;
 Jamaica                                : constant QLocaleCountry := 107;
 Japan                                  : constant QLocaleCountry := 108;
 Jordan                                 : constant QLocaleCountry := 109;
 Kazakhstan                             : constant QLocaleCountry := 110;
 Kenya                                  : constant QLocaleCountry := 111;
 Kiribati                               : constant QLocaleCountry := 112;
 NorthKorea                             : constant QLocaleCountry := 113;
 SouthKorea                             : constant QLocaleCountry := 114;
 Kuwait                                 : constant QLocaleCountry := 115;
 Kyrgyzstan                             : constant QLocaleCountry := 116;
 Laos                                   : constant QLocaleCountry := 117;
 Latvia                                 : constant QLocaleCountry := 118;
 Lebanon                                : constant QLocaleCountry := 119;
 Lesotho                                : constant QLocaleCountry := 120;
 Liberia                                : constant QLocaleCountry := 121;
 Libya                                  : constant QLocaleCountry := 122;
 Liechtenstein                          : constant QLocaleCountry := 123;
 Lithuania                              : constant QLocaleCountry := 124;
 Luxembourg                             : constant QLocaleCountry := 125;
 Macau                                  : constant QLocaleCountry := 126;
 Macedonia                              : constant QLocaleCountry := 127;
 Madagascar                             : constant QLocaleCountry := 128;
 Malawi                                 : constant QLocaleCountry := 129;
 Malaysia                               : constant QLocaleCountry := 130;
 Maldives                               : constant QLocaleCountry := 131;
 Mali                                   : constant QLocaleCountry := 132;
 Malta                                  : constant QLocaleCountry := 133;
 MarshallIslands                        : constant QLocaleCountry := 134;
 Martinique                             : constant QLocaleCountry := 135;
 Mauritania                             : constant QLocaleCountry := 136;
 Mauritius                              : constant QLocaleCountry := 137;
 Mayotte                                : constant QLocaleCountry := 138;
 Mexico                                 : constant QLocaleCountry := 139;
 Micronesia                             : constant QLocaleCountry := 140;
 Moldova                                : constant QLocaleCountry := 141;
 Monaco                                 : constant QLocaleCountry := 142;
 Mongolia                               : constant QLocaleCountry := 143;
 Montserrat                             : constant QLocaleCountry := 144;
 Morocco                                : constant QLocaleCountry := 145;
 Mozambique                             : constant QLocaleCountry := 146;
 Myanmar                                : constant QLocaleCountry := 147;
 Namibia                                : constant QLocaleCountry := 148;
 NauruCountry                           : constant QLocaleCountry := 149;
 Nepal                                  : constant QLocaleCountry := 150;
 Netherlands                            : constant QLocaleCountry := 151;
 CuraSao                                : constant QLocaleCountry := 152;
 NewCaledonia                           : constant QLocaleCountry := 153;
 NewZealand                             : constant QLocaleCountry := 154;
 Nicaragua                              : constant QLocaleCountry := 155;
 Niger                                  : constant QLocaleCountry := 156;
 Nigeria                                : constant QLocaleCountry := 157;
 Niue                                   : constant QLocaleCountry := 158;
 NorfolkIsland                          : constant QLocaleCountry := 159;
 NorthernMarianaIslands                 : constant QLocaleCountry := 160;
 Norway                                 : constant QLocaleCountry := 161;
 Oman                                   : constant QLocaleCountry := 162;
 Pakistan                               : constant QLocaleCountry := 163;
 Palau                                  : constant QLocaleCountry := 164;
 PalestinianTerritories                 : constant QLocaleCountry := 165;
 Panama                                 : constant QLocaleCountry := 166;
 PapuaNewGuinea                         : constant QLocaleCountry := 167;
 Paraguay                               : constant QLocaleCountry := 168;
 Peru                                   : constant QLocaleCountry := 169;
 Philippines                            : constant QLocaleCountry := 170;
 Pitcairn                               : constant QLocaleCountry := 171;
 Poland                                 : constant QLocaleCountry := 172;
 Portugal                               : constant QLocaleCountry := 173;
 PuertoRico                             : constant QLocaleCountry := 174;
 Qatar                                  : constant QLocaleCountry := 175;
 Reunion                                : constant QLocaleCountry := 176;
 Romania                                : constant QLocaleCountry := 177;
 Russia                                 : constant QLocaleCountry := 178;
 Rwanda                                 : constant QLocaleCountry := 179;
 SaintKittsAndNevis                     : constant QLocaleCountry := 180;
 SaintLucia                             : constant QLocaleCountry := 181;
 SaintVincentAndTheGrenadines           : constant QLocaleCountry := 182;
 Samoa                                  : constant QLocaleCountry := 183;
 SanMarino                              : constant QLocaleCountry := 184;
 SaoTomeAndPrincipe                     : constant QLocaleCountry := 185;
 SaudiArabia                            : constant QLocaleCountry := 186;
 Senegal                                : constant QLocaleCountry := 187;
 Seychelles                             : constant QLocaleCountry := 188;
 SierraLeone                            : constant QLocaleCountry := 189;
 Singapore                              : constant QLocaleCountry := 190;
 Slovakia                               : constant QLocaleCountry := 191;
 Slovenia                               : constant QLocaleCountry := 192;
 SolomonIslands                         : constant QLocaleCountry := 193;
 Somalia                                : constant QLocaleCountry := 194;
 SouthAfrica                            : constant QLocaleCountry := 195;
 SouthGeorgiaAndTheSouthSandwichIslands : constant QLocaleCountry := 196;
 Spain                                  : constant QLocaleCountry := 197;
 SriLanka                               : constant QLocaleCountry := 198;
 SaintHelena                            : constant QLocaleCountry := 199;
 SaintPierreAndMiquelon                 : constant QLocaleCountry := 200;
 Sudan                                  : constant QLocaleCountry := 201;
 Suriname                               : constant QLocaleCountry := 202;
 SvalbardAndJanMayenIslands             : constant QLocaleCountry := 203;
 Swaziland                              : constant QLocaleCountry := 204;
 Sweden                                 : constant QLocaleCountry := 205;
 Switzerland                            : constant QLocaleCountry := 206;
 Syria                                  : constant QLocaleCountry := 207;
 Taiwan                                 : constant QLocaleCountry := 208;
 Tajikistan                             : constant QLocaleCountry := 209;
 Tanzania                               : constant QLocaleCountry := 210;
 Thailand                               : constant QLocaleCountry := 211;
 Togo                                   : constant QLocaleCountry := 212;
 Tokelau                                : constant QLocaleCountry := 213;
 Tonga                                  : constant QLocaleCountry := 214;
 TrinidadAndTobago                      : constant QLocaleCountry := 215;
 Tunisia                                : constant QLocaleCountry := 216;
 Turkey                                 : constant QLocaleCountry := 217;
 Turkmenistan                           : constant QLocaleCountry := 218;
 TurksAndCaicosIslands                  : constant QLocaleCountry := 219;
 Tuvalu                                 : constant QLocaleCountry := 220;
 Uganda                                 : constant QLocaleCountry := 221;
 Ukraine                                : constant QLocaleCountry := 222;
 UnitedArabEmirates                     : constant QLocaleCountry := 223;
 UnitedKingdom                          : constant QLocaleCountry := 224;
 UnitedStates                           : constant QLocaleCountry := 225;
 UnitedStatesMinorOutlyingIslands       : constant QLocaleCountry := 226;
 Uruguay                                : constant QLocaleCountry := 227;
 Uzbekistan                             : constant QLocaleCountry := 228;
 Vanuatu                                : constant QLocaleCountry := 229;
 VaticanCityState                       : constant QLocaleCountry := 230;
 Venezuela                              : constant QLocaleCountry := 231;
 Vietnam                                : constant QLocaleCountry := 232;
 BritishVirginIslands                   : constant QLocaleCountry := 233;
 UnitedStatesVirginIslands              : constant QLocaleCountry := 234;
 WallisAndFutunaIslands                 : constant QLocaleCountry := 235;
 WesternSahara                          : constant QLocaleCountry := 236;
 Yemen                                  : constant QLocaleCountry := 237;
 CanaryIslands                          : constant QLocaleCountry := 238;
 Zambia                                 : constant QLocaleCountry := 239;
 Zimbabwe                               : constant QLocaleCountry := 240;
 ClippertonIsland                       : constant QLocaleCountry := 241;
 Montenegro                             : constant QLocaleCountry := 242;
 Serbia                                 : constant QLocaleCountry := 243;
 SaintBarthelemy                        : constant QLocaleCountry := 244;
 SaintMartin                            : constant QLocaleCountry := 245;
 LatinAmericaAndTheCaribbean            : constant QLocaleCountry := 246;
 AscensionIsland                        : constant QLocaleCountry := 247;
 AlandIslands                           : constant QLocaleCountry := 248;
 DiegoGarcia                            : constant QLocaleCountry := 249;
 CeutaAndMelilla                        : constant QLocaleCountry := 250;
 IsleOfMan                              : constant QLocaleCountry := 251;
 Jersey                                 : constant QLocaleCountry := 252;
 TristanDaCunha                         : constant QLocaleCountry := 253;
 SouthSudan                             : constant QLocaleCountry := 254;
 Bonaire                                : constant QLocaleCountry := 255;
 SintMaarten                            : constant QLocaleCountry := 256;
 Kosovo                                 : constant QLocaleCountry := 257;
 DemocraticRepublicOfCongo              : constant QLocaleCountry := CongoKinshasa;
 PeoplesRepublicOfCongo                 : constant QLocaleCountry := CongoBrazzaville;
 DemocraticRepublicOfKorea              : constant QLocaleCountry := NorthKorea;
 RepublicOfKorea                        : constant QLocaleCountry := SouthKorea;
 RussianFederation                      : constant QLocaleCountry := Russia;
 SyrianArabRepublic                     : constant QLocaleCountry := Syria;
 LastCountry                            : constant QLocaleCountry := Kosovo; 


function QLocale_create return  QLocaleH;   
pragma Import(C,QLocale_create,"QLocale_create");

procedure QLocale_destroy(handle: not null  QLocaleH);  
pragma Import(C,QLocale_destroy,"QLocale_destroy");

function QLocale_create2(name: QStringH) return  QLocaleH;
pragma Import(C,QLocale_create2,"QLocale_create2");

function QLocale_create3(language: QLocaleLanguage; country: QLocaleCountry := AnyCountry) return  QLocaleH;
pragma Import(C,QLocale_create3,"QLocale_create3");

function QLocale_create4(other: QLocaleH) return  QLocaleH;
pragma Import(C,QLocale_create4,"QLocale_create4");

function QLocale_language(handle: not null  QLocaleH) return  QLocaleLanguage;  
pragma Import(C,QLocale_language,"QLocale_language");

function QLocale_country(handle: not null  QLocaleH) return  QLocaleCountry;  
pragma Import(C,QLocale_country,"QLocale_country");

function  QLocale_name(handle: not null  QLocaleH) return QStringH;
pragma Import(C,QLocale_name,"QLocale_name");

function QLocale_toShort(handle: not null  QLocaleH; s: QStringH; ok: PBoolean := null) return Short_Integer;
pragma Import(C,QLocale_toShort,"QLocale_toShort");

function QLocale_toUShort(handle: not null  QLocaleH; s: QStringH; ok: PBoolean := null) return Word;  
pragma Import(C,QLocale_toUShort,"QLocale_toUShort");

function QLocale_toInt(handle: not null  QLocaleH; s: QStringH; ok: PBoolean := null ) return Integer;  
pragma Import(C,QLocale_toInt,"QLocale_toInt");

function QLocale_toUInt(handle: not null  QLocaleH; s: QStringH; ok: PBoolean := null) return LongWord;  
pragma Import(C,QLocale_toUInt,"QLocale_toUInt");

function QLocale_toLongLong(handle: not null  QLocaleH; s: QStringH; ok: PBoolean := null) return int64;  
pragma Import(C,QLocale_toLongLong,"QLocale_toLongLong");

function QLocale_toULongLong(handle: not null  QLocaleH; s: QStringH; ok: PBoolean := null) return int64;  
pragma Import(C,QLocale_toULongLong,"QLocale_toULongLong");

function QLocale_toFloat(handle: not null  QLocaleH; s: QStringH; ok: PBoolean := null) return Single;  
pragma Import(C,QLocale_toFloat,"QLocale_toFloat");

function QLocale_toDouble(handle: not null  QLocaleH; s: QStringH; ok: PBoolean := null) return Double;  
pragma Import(C,QLocale_toDouble,"QLocale_toDouble");

function  QLocale_toString(handle: not null  QLocaleH;i: int64) return QStringH;
pragma Import(C,QLocale_toString,"QLocale_toString");

function  QLocale_toString2(handle: not null  QLocaleH;i: qword) return QStringH;
pragma Import(C,QLocale_toString2,"QLocale_toString2");

function  QLocale_toString3(handle: not null  QLocaleH;i: Short_Integer) return QStringH;
pragma Import(C,QLocale_toString3,"QLocale_toString3");

function  QLocale_toString4(handle: not null  QLocaleH;i: Word) return  QStringH;
pragma Import(C,QLocale_toString4,"QLocale_toString4");

function  QLocale_toString5(handle: not null  QLocaleH; i: Integer) return QStringH;
pragma Import(C,QLocale_toString5,"QLocale_toString5");

function  QLocale_toString6(handle: not null  QLocaleH;i: LongWord) return QStringH;
pragma Import(C,QLocale_toString6,"QLocale_toString6");

function  QLocale_toString7(handle: not null  QLocaleH;i: Double; f: char; prec: Integer := 6)  return QStringH;
pragma Import(C,QLocale_toString7,"QLocale_toString7");

function  QLocale_toString8(handle: not null  QLocaleH;i: Single; f: char; prec: Integer := 6) return QStringH;
pragma Import(C,QLocale_toString8,"QLocale_toString8");

function  QLocale_toString9(handle: not null  QLocaleH;date: QDateH; formatStr: QStringH) return QStringH;
pragma Import(C,QLocale_toString9,"QLocale_toString9");

function  QLocale_toString10(handle: not null  QLocaleH;date: QDateH; format: QLocaleFormatType := LongFormat) return QStringH;
pragma Import(C,QLocale_toString10,"QLocale_toString10");

function  QLocale_toString11(handle: not null  QLocaleH;time: QTimeH; formatStr: QStringH) return QStringH;
pragma Import(C,QLocale_toString11,"QLocale_toString11");

function  QLocale_toString12(handle: not null  QLocaleH;time: QTimeH; format: QLocaleFormatType := LongFormat) return QStringH;
pragma Import(C,QLocale_toString12,"QLocale_toString12");

function  QLocale_dateFormat(handle: not null  QLocaleH;format: QLocaleFormatType := LongFormat) return QStringH;
pragma Import(C,QLocale_dateFormat,"QLocale_dateFormat");

function  QLocale_timeFormat(handle: not null  QLocaleH;format: QLocaleFormatType := LongFormat) return  QStringH;
pragma Import(C,QLocale_timeFormat,"QLocale_timeFormat");

function  QLocale_decimalPoint(handle: not null  QLocaleH) return QCharH;
pragma Import(C,QLocale_decimalPoint,"QLocale_decimalPoint");

function  QLocale_groupSeparator(handle: not null  QLocaleH) return QCharH;
pragma Import(C,QLocale_groupSeparator,"QLocale_groupSeparator");

function  QLocale_percent(handle: not null  QLocaleH) return QCharH;
pragma Import(C,QLocale_percent,"QLocale_percent");

function  QLocale_zeroDigit(handle: not null  QLocaleH) return QCharH;
pragma Import(C,QLocale_zeroDigit,"QLocale_zeroDigit");

function  QLocale_negativeSign(handle: not null  QLocaleH) return QCharH;
pragma Import(C,QLocale_negativeSign,"QLocale_negativeSign");

function  QLocale_exponential(handle: not null  QLocaleH) return QCharH;
pragma Import(C,QLocale_exponential,"QLocale_exponential");

function  QLocale_monthName(handle: not null  QLocaleH;p1: Integer; format: QLocaleFormatType := LongFormat) return QStringH;
pragma Import(C,QLocale_monthName,"QLocale_monthName");

function  QLocale_dayName(handle: not null  QLocaleH;p1: Integer; format: QLocaleFormatType := LongFormat) return QStringH;
pragma Import(C,QLocale_dayName,"QLocale_dayName");

function  QLocale_languageToString(language: QLocaleLanguage) return QStringH;
pragma Import(C,QLocale_languageToString,"QLocale_languageToString");

function  QLocale_countryToString(country: QLocaleCountry) return QStringH;
pragma Import(C,QLocale_countryToString,"QLocale_countryToString");

procedure QLocale_setDefault(locale: QLocaleH);  
pragma Import(C,QLocale_setDefault,"QLocale_setDefault");

function  QLocale_c return QLocaleH;
pragma Import(C,QLocale_c,"QLocale_c");

function  QLocale_system return QLocaleH;
pragma Import(C,QLocale_system,"QLocale_system");

procedure QLocale_setNumberOptions(handle: not null  QLocaleH; options: QLocaleNumberOptions);  
pragma Import(C,QLocale_setNumberOptions,"QLocale_setNumberOptions");

function QLocale_numberOptions(handle: not null  QLocaleH) return  QLocaleNumberOptions;  
pragma Import(C,QLocale_numberOptions,"QLocale_numberOptions");
------------------------------------------------------------------------
                                                                         function  QLocale_script(handle:QLocaleH) return QLocaleScript;
 pragma Import(C,QLocale_script, "QLocale_script");
 
 function  QLocale_bcp47Name(handle:QLocaleH) return QStringH;
 pragma Import(C,QLocale_bcp47Name, "QLocale_bcp47Name");
 
 function  QLocale_nativeLanguageName(handle:QLocaleH) return QStringH;
 pragma Import(C,QLocale_nativeLanguageName, "QLocale_nativeLanguageName");
 
 function  QLocale_nativeCountryName(handle:QLocaleH) return QStringH;
 pragma Import(C,QLocale_nativeCountryName, "QLocale_nativeCountryName");
 
 function  QLocale_dateTimeFormat(handle:QLocaleH;format:QLocaleFormatType := LongFormat) return QStringH;
 pragma Import(C,QLocale_dateTimeFormat, "QLocale_dateTimeFormat");
 
 function  QLocale_toDate2(handle:QLocaleH; str:QStringH; format:QLocaleFormatType := LongFormat) return QDateH;
 pragma Import(C,QLocale_toDate2, "QLocale_toDate2");
 
 function  QLocale_toTime2(handle:QLocaleH; str:QStringH; format:QLocaleFormatType := LongFormat) return QTimeH;
 pragma Import(C,QLocale_toTime2, "QLocale_toTime2");
 
 function  QLocale_toDateTime2(handle:QLocaleH; str:QStringH;format:QLocaleFormatType := LongFormat) return QDateTimeH;
 pragma Import(C,QLocale_toDateTime2, "QLocale_toDateTime2");
 
 function  QLocale_toDate(handle:QLocaleH; str:QStringH;format:QStringH) return QDateH;
 pragma Import(C,QLocale_toDate, "QLocale_toDate");
 
 function  QLocale_toTime(handle:QLocaleH; str:QStringH;format:QStringH) return QTimeH;
 pragma Import(C,QLocale_toTime, "QLocale_toTime");
 
 function  QLocale_toDateTime(handle:QLocaleH; str:QStringH;format:QStringH) return QDateTimeH;
 pragma Import(C,QLocale_toDateTime, "QLocale_toDateTime");
 
 function  QLocale_standaloneMonthName(handle:QLocaleH;data:integer; format:QLocaleFormatType := LongFormat) return QStringH;
 pragma Import(C,QLocale_standaloneMonthName, "QLocale_standaloneMonthName");
 
 function  QLocale_standaloneDayName(handle:QLocaleH;data:integer; format:QLocaleFormatType := LongFormat) return QStringH;
 pragma Import(C,QLocale_standaloneDayName, "QLocale_standaloneDayName");
 
 function  QLocale_firstDayOfWeek(handle:QLocaleH) return QtDayOfWeek;
 pragma Import(C,QLocale_firstDayOfWeek, "QLocale_firstDayOfWeek");
 
 function  QLocale_weekdays(handle:QLocaleH) return QIntListH;
 pragma Import(C,QLocale_weekdays, "QLocale_weekdays");
 
 function  QLocale_amText(handle:QLocaleH) return QStringH;
 pragma Import(C,QLocale_amText, "QLocale_amText");
 
 function  QLocale_pmText(handle:QLocaleH) return QStringH;
 pragma Import(C,QLocale_pmText, "QLocale_pmText");
 
 function  QLocale_measurementSystem(handle:QLocaleH) return QLocaleMeasurementSystem;
 pragma Import(C,QLocale_measurementSystem, "QLocale_measurementSystem");
 
 function  QLocale_textDirection(handle:QLocaleH) return QtLayoutDirection;
 pragma Import(C,QLocale_textDirection, "QLocale_textDirection");
 
 function  QLocale_toUpper(handle:QLocaleH; str:QStringH) return QStringH;
 pragma Import(C,QLocale_toUpper, "QLocale_toUpper");
 
 function  QLocale_toLower(handle:QLocaleH; str:QStringH) return QStringH;
 pragma Import(C,QLocale_toLower, "QLocale_toLower");
 
 function  QLocale_currencySymbol(handle:QLocaleH;format:QLocaleCurrencySymbolFormat := CurrencySymbol) return QStringH;
 pragma Import(C,QLocale_currencySymbol, "QLocale_currencySymbol");
 
 function  QLocale_toCurrencyString(handle:QLocaleH;data:long_long_integer; symbol: QStringH := QString_create) return QStringH;
 pragma Import(C,QLocale_toCurrencyString, "QLocale_toCurrencyString");
 
 function  QLocale_toCurrencyString2(handle:QLocaleH;data:quint64; symbol: QStringH := QString_create) return QStringH;      
 pragma Import(C,QLocale_toCurrencyString2, "QLocale_toCurrencyString2");
 
 function  QLocale_toCurrencyString3(handle:QLocaleH;data:short; symbol: QStringH := QString_create) return QStringH;       
 pragma Import(C,QLocale_toCurrencyString3, "QLocale_toCurrencyString3");
 
 function  QLocale_toCurrencyString4(handle:QLocaleH;data:unsigned_short;symbol: QStringH := QString_create) return QStringH;       
 pragma Import(C,QLocale_toCurrencyString4, "QLocale_toCurrencyString4");
 
 function  QLocale_toCurrencyString5(handle:QLocaleH;data:integer;symbol: QStringH := QString_create) return QStringH;       
 pragma Import(C,QLocale_toCurrencyString5, "QLocale_toCurrencyString5");
 
 function  QLocale_toCurrencyString6(handle:QLocaleH;data:quint;  symbol: QStringH := QString_create) return QStringH;       
 pragma Import(C,QLocale_toCurrencyString6, "QLocale_toCurrencyString6");
 
 function  QLocale_toCurrencyString7(handle:QLocaleH;data:double; symbol: QStringH := QString_create) return QStringH;       
 pragma Import(C,QLocale_toCurrencyString7, "QLocale_toCurrencyString7");
 
 function  QLocale_toCurrencyString8(handle:QLocaleH;data:float; symbol: QStringH := QString_create) return QStringH;       
 pragma Import(C,QLocale_toCurrencyString8, "QLocale_toCurrencyString8");
 
 function  QLocale_uiLanguages(handle:QLocaleH) return QStringListH;
 pragma Import(C,QLocale_uiLanguages, "QLocale_uiLanguages");
 
 function  QLocale_scriptToString(script:QLocaleScript) return QStringH;
 pragma Import(C,QLocale_scriptToString, "QLocale_scriptToString");
 
 function  QLocale_matchingLocales(language:QLocaleLanguage ; script:QLocaleScript; country :QLocaleCountry) return QObjectListH;
 pragma Import(C,QLocale_matchingLocales, "QLocale_matchingLocales");
 
 function  QLocale_countriesForLanguage(language:QLocaleLanguage) return QIntListH;
 pragma Import(C,QLocale_countriesForLanguage, "QLocale_countriesForLanguage");
 
 function  QLocale_quoteString(handle:QLocaleH; str:QStringH; style:QLocaleQuotationStyle := StandardQuotation) return QStringH;
 pragma Import(C,QLocale_quoteString, "QLocale_quoteString");
 
 function  QLocale_createSeparatedList(handle:QLocaleH; strl:QStringListH) return QStringH;
 pragma Import(C,QLocale_createSeparatedList, "QLocale_createSeparatedList");
 
 function  QLocale_countriesCountForLanguage(language:QLocaleLanguage) return integer;
 pragma Import(C,QLocale_countriesCountForLanguage, "QLocale_countriesCountForLanguage");
 
 function  QLocale_countryForLanguage(language:QLocaleLanguage;index:integer ) return QLocaleCountry;
 pragma Import(C,QLocale_countryForLanguage, "QLocale_countryForLanguage");

 function  QLocale_fromVector(locales: QObjectVectorH;index:integer) return QLocaleH;
 pragma Import(C,QLocale_fromVector, "QLocale_fromVector");
 
 function  QLocale_countFromVector(locales: QObjectVectorH) return integer;
 pragma Import(C,QLocale_countFromVector, "QLocale_countFromVector");
 
 
------------------------------------------------------------------------
 function QLocale_create(name: QStringH) return  QLocaleH;
 function QLocale_create(language: QLocaleLanguage; country: QLocaleCountry := AnyCountry) return  QLocaleH;
 function QLocale_create(other: QLocaleH) return  QLocaleH;
 function QLocale_toString(handle: not null  QLocaleH; i: Short_Integer) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; i: Word) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; i: Integer) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; i: LongWord) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; i: Double; f: char; prec: Integer := 6) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; i: Single; f: char; prec: Integer := 6) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; date: QDateH; formatStr: QStringH) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; date: QDateH; format: QLocaleFormatType := LongFormat) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; time: QTimeH; formatStr: QStringH) return QStringH;
 function QLocale_toString(handle: not null  QLocaleH; time: QTimeH; format: QLocaleFormatType := LongFormat) return QStringH;
 function  QLocale_toDate(handle:QLocaleH; str:QStringH; format:QLocaleFormatType := LongFormat) return QDateH;
 function  QLocale_toTime(handle:QLocaleH; str:QStringH; format:QLocaleFormatType := LongFormat) return QTimeH;
 function  QLocale_toDateTime(handle:QLocaleH; str:QStringH;format:QLocaleFormatType := LongFormat) return QDateTimeH;
 function  QLocale_toCurrencyString(handle:QLocaleH;data:quint64; symbol: QStringH := QString_create) return QStringH;      
 function  QLocale_toCurrencyString(handle:QLocaleH;data:short; symbol: QStringH := QString_create) return QStringH;       
 function  QLocale_toCurrencyString(handle:QLocaleH;data:unsigned_short;symbol: QStringH := QString_create) return QStringH;       
 function  QLocale_toCurrencyString(handle:QLocaleH;data:integer;symbol: QStringH := QString_create) return QStringH;       
 function  QLocale_toCurrencyString(handle:QLocaleH;data:quint;  symbol: QStringH := QString_create) return QStringH;       
 function  QLocale_toCurrencyString(handle:QLocaleH;data:double; symbol: QStringH := QString_create) return QStringH;       
 function  QLocale_toCurrencyString(handle:QLocaleH;data:float; symbol: QStringH := QString_create) return QStringH;       
 

end Qt.QLocale;
