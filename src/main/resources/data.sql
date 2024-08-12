/** 01.内訳種別区分設定 */
INSERT INTO estimate_type (et_id, et_type_name) VALUES (10, '官庁提示設計書');
INSERT INTO estimate_type (et_id, et_type_name) VALUES (20, '施工業者見積書');
INSERT INTO estimate_type (et_id, et_type_name) VALUES (30, '補助金用設計書');
INSERT INTO estimate_type (et_id, et_type_name) VALUES (40, '実施設計概算書');

/** 02.内訳頭紙区分設定 */
INSERT INTO category_outline (co_id, co_type_name) VALUES (1010, '建築');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1020, '電気設備');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1030, '機械設備');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1040, '昇降機設備');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1050, '直接工事費');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1060, '共通仮設費');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1070, '現場管理費');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1080, '一般管理費費等');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1090, '共通費');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1100, '工事価格');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1110, '消費税相当額');
INSERT INTO category_outline (co_id, co_type_name) VALUES (1120, '工事費');

/** 03.内訳種目区分設定 */
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (101010, '新営工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (101020, '改修工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (101030, '外構工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (101040, 'とりこわし工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (102010, '新営工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (102020, '改修工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (102030, '外構工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (102040, 'とりこわし工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (103010, '新営工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (103020, '改修工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (103030, '外構工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (103040, 'とりこわし工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (104010, '新営工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (104020, '改修工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (104030, '外構工事');
INSERT INTO category_detail (cd_id, cd_type_name) VALUES (104040, 'とりこわし工事');

/** 04.用途概略区分設定 */
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (101, '住宅');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (102, '事務所');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (103, '店舗');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (104, '⽂化社会施設');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (105, '学校');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (106, '病院');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (107, '福祉厚⽣施設');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (108, '宿泊施設');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (109, 'スポーツ レジャー施設');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (110, '倉庫');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (111, '⼯場');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (112, 'その他');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (201, '外構');
INSERT INTO purpose_outline (po_id, po_type_name) VALUES (202, 'とりこわし');

/** 05.用途詳細区分設定 */
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10101, 101, '分譲マンション', '分譲マンション、分譲リゾートマンション');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10102, 101, '賃貸マンション', '賃貸マンション、公営住宅、ＵＲ賃貸住宅、アパート');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10103, 101, 'ワンルームマンション', 'ワンルームマンション、学⽣マンション、シェアハウス');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10104, 101, '社宅・家族寮', '社宅、家族寮、公務員宿舎、教職員住宅、職員住宅');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10105, 101, '独⾝寮', '独⾝寮、学⽣会館、学⽣交流館、学⽣寮、寄宿舎、⽣徒寮、選⼿寮、待機宿舎、隊舎');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10106, 101, '⼾建住宅', '個⼈住宅、併⽤住宅');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10201, 102, '⾃社ビル（⼀般事務所）', '⾃社ビル、庁舎、会館、警察署、公館、裁判所、消防署、放送局、スタジオ');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10202, 102, '貸事務所', '貸事務所、貸ビル、テナントビル');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10203, 102, '銀⾏・⾦融', '銀⾏、信⽤⾦庫、郵便局、農協');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10204, 102, '電算センター', '電算センター、データセンター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10205, 102, '管理事務所', '管理事務所、電気室・電気棟、電源局舎、ボイラー室、墓苑管理棟、無線局舎、訓練塔、管制塔、観測所、機械室・機械棟、気象レーダー局舎、訓練棟、ビジターセンター、交番、派出所、消防団詰所');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10206, 102, '研究施設', '研究所、研究センター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10207, 102, '研修施設', '研修施設');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10301, 103, '都市型店舗', '商業ビル、百貨店');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10302, 103, '⼤規模物販店', 'スーパー等の核テナントを中⼼としたショッピングセンター、アウトレットモール');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10303, 103, '各種専⾨店', '各種専⾨店（家電量販店、家具店、⾐料品店、ドラッグストア、調剤薬局、写真スタジオ、ガソリンスタンド、携帯ショップ等）');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10304, 103, 'スーパー・コンビニ', '⾷品スーパー専⾨店、コンビニエンスストア');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10305, 103, 'ホームセンター', 'ホームセンター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10306, 103, 'ショールーム', '⾃動⾞ショールーム、住設機器ショールーム');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10307, 103, '飲⾷店', '飲⾷店、飲⾷店ビル、カラオケ店');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10308, 103, 'パチンコ店', 'パチンコ店');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10401, 104, '市⺠会館・コミュニティセンター', '市⺠会館、コミュニティーセンター、イベントホール、⾳楽堂、会議場、カルチャーセンター、勤労福祉センター、区⺠館、劇場、公会堂、公⺠館、交流センター（交流館）、国際会議場、コンサートホール、コンベションセンター、市⺠センター、市⺠⽂化センター、集会所、集会場、⽣涯学習センター、多⽬的ホール');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10402, 104, '博物館・美術館', '博物館、美術館、科学館、記念館、ギャラリー、情報館、資料館、⽔族館、展⽰場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10403, 104, '結婚式場', '結婚式場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10404, 104, '宗教建築', '位牌堂、神楽殿、客殿、教会、庫裡、座禅堂、参集殿、寺院、司祭館、社務所、修道院、書院、神社、納⾻堂、本堂、礼拝堂、礼拝所');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10405, 104, '葬祭場', '葬祭場、葬儀場、斎場、セレモニーホール、⽕葬場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10406, 104, '図書館', '図書館');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10501, 105, '保育園・幼稚園', '保育園、保育所、幼稚園、こども園');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10502, 105, '校舎（⼩学校）', '⼩学校');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10503, 105, '校舎（中学・⾼校）', '中学校、⾼校、中⾼⼀貫校');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10504, 105, '校舎（⾼専・短⼤・⼤学）', '⾼等専⾨学校、短期⼤学、⼤学、⼤学院');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10505, 105, '校舎（専⾨学校）', '専⾨学校、学習塾、⾃動⾞教習所、職業訓練校、職業訓練センター、予備校');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10601, 106, '病院', '⼀般病院、総合病院、⼤学附属病院、介護⽀援系病院、リハビリテーション病院、療育センター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10602, 106, '医院・診療所', '医院、診療所、クリニック、動物病院');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10603, 106, '検診センター', '検診センター、医師会センター、市⺠健康センター、保健所、保健センター、保健福祉センター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10701, 107, '⾼齢者向け住宅', 'サービス付⾼齢者向け住宅、介護付⾼齢者住宅');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10702, 107, '⽼⼈ホーム', '⽼⼈ホーム、特別養護⽼⼈ホーム、有料⽼⼈ホーム、養護⽼⼈ホーム、ケアハウス、軽費⽼⼈ホーム、⾼齢者⽀援ハウス、⼩規模多機能介護施設、シルバーハウス、⽣活⽀援ハウス');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10703, 107, 'グループホーム', 'グループホーム');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10704, 107, 'デイサービス・ショートステイ', 'デイサービス、ショートステイ、障害者デイケア、通所介護施設、デイケアセンター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10705, 107, '⽼⼈保健施設', '介護⽼⼈保健施設');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10706, 107, '複合福祉施設', '複合福祉施設、福祉センター、総合サービス、福祉会館');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10707, 107, '児童福祉施設', '児童館、学童クラブ、放課後児童クラブ、児童センター、児童相談所、児童養護施設、特別⽀援学校、養護学校、乳児院');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10708, 107, '⾼齢者・障害者⽀援施設', '救護施設、就労⽀援施設、授産施設、障害者⽀援センター、障害者リハビリ施設、地域包括⽀援センター、在宅介護⽀援センター、知的障碍者更⽣施設、リハビリテーション施設');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10801, 108, 'シティホテル', 'シティホテル（宴会場を有するホテル）');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10802, 108, 'ビジネスホテル', 'ビジネスホテル、カプセルホテル');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10803, 108, 'リゾートホテル', 'リゾートホテル、レジャーホテル');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10804, 108, '旅館', '旅館、ゲストハウス');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10805, 108, '保養所', '保養所、合宿所、社員クラブ、研修所');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10901, 109, '体育館', '体育館、屋内運動場、講堂、学校の講堂、ダンスホール、武道場、空⼿道場、射撃場、屋内グラウンド、屋内スケート場、屋内スポーツ練習場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10902, 109, 'クラブハウス', 'クラブハウス、ゴルフ場クラブハウス、更⾐棟、部室');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10903, 109, '総合レジャー施設', '映画館、場外⾺・⾈・⾞券売り場、バッティングセンター、ボーリング場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10904, 109, 'フィットネスクラブ', 'フィットネスクラブ、スポーツジム、スポーツクラブ、トレーニングセンター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10905, 109, 'プール施設', 'プール');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10906, 109, '公衆浴場', '公衆浴場、温泉施設、温浴施設、健康ランド、スーパー銭湯');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (10907, 109, '屋外スタジアム', '屋外スタジアム、観覧席、競技場、競⾺場・競輪場スタンド、ボートレース場スタンド、野外ステージ、野球場、サッカー場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11001, 110, '流通センター', '流通センター、集配施設、配送センター、物流センター、郵便処理施設、ロジスティクスセンター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11002, 110, '⼀般倉庫', '⼀般倉庫、収蔵庫、⽂書保管倉庫');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11003, 110, '冷凍倉庫・冷蔵倉庫', '冷凍倉庫、冷蔵倉庫、低温倉庫、定温倉庫');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11004, 110, '⽴体倉庫', '⽴体倉庫、⾃動倉庫');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11005, 110, '特殊倉庫', '特殊倉庫、危険物倉庫、防災⽤備蓄倉庫、道路啓開基地');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11006, 110, '作業所', '作業所・作業場、市場、荷捌き場、陸揚げ場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11007, 110, '⾞庫・格納庫', '⾞庫、格納庫、バス・モノレール基地');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11101, 111, '⼯場（精密機械電気等）', '精密機械電気⼯場（精密機械⼯業、電⼦部品⼯場、半導体⼯場、IC⼯場など）');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11102, 111, '⼯場（⾃動⾞整備）', '⾃動⾞整備⼯場、⾞検場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11103, 111, '⼯場（⾷品）', '⾷品⼯場(パン⼯場、野菜加⼯⼯場、ビール⼯場、飲料製造⼯場、惣菜製造⼯場、弁当⼯場など）、給⾷センター');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11104, 111, '⼯場（医薬品）', '医薬品⼯場、医療品⼯場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11105, 111, '⼯場（機械電気・⾦属・その他）', '機械製作⼯場、機械組⽴⼯場、印刷⼯場、⽊材加⼯⼯場、プレス⼯場、溶接⼯場、⾦属加⼯⼯場、鋳物⼯場、塗装⼯場など');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11106, 111, '⼯場（化学）', '洗濯⼯場、化成品⼯場、製紙⼯場、化粧品⼯場、農薬⼯場、化学製品製造⼯場、塗料製造⼯場、ガラス⼯場、繊維⼯場、合成樹脂製品製造⼯場など');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11107, 111, '清掃・処理⼯場', '下⽔処理施設、浄化センター、排⽔処理施設、揚⽔機場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11108, 111, '農林⽔産関連施設', 'ライスセンター、精⽶⼯場、畜舎、温室、脱穀所、堆肥舎、果実選果場、教育施設農林⽔産関係実習施設');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11201, 112, '駐⾞場（屋外を除く）', '駐⾞場、駐輪場');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11202, 112, '駅舎', '駅舎');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11203, 112, '公衆トイレ', '公衆トイレ');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (11204, 112, '変電所', '変電所');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (20101, 201, '外構', '外構');
INSERT INTO purpose_detail (pd_id, pd_po_id, pd_type_name, pd_included_type) VALUES (20201, 202, 'とりこわし', 'とりこわし工事単独発注');

/** 06.内訳情報区分設定 */
INSERT INTO information_item (ii_id, ii_item_name) VALUES (101, '種目別 建築（円）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (102, '構造種別');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (103, '地下階数（階）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (104, '地上階数（階）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (105, '塔屋階数（階）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (106, '最高高さ（ｍ）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (107, '軒の高さ（ｍ）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (108, '根切り体積（m3）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (109, '埋戻し体積（m3）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (110, '発生土処分体積（m3）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (111, '土量計算メモ');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (112, '鉄筋重量（ｔ）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (113, 'コンクリート体積（m3）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (114, '型枠面積（m2）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (115, '本体鉄骨（ｔ）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (116, '階段鉄骨（ｔ）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (117, '昇降機用鉄骨（ｔ）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (118, 'その他雑鉄骨（ｔ）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (201, '種目別 電気設備（円）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (301, '種目別 機械設備（円）');
INSERT INTO information_item (ii_id, ii_item_name) VALUES (401, '種目別 昇降機設備（円）');

/** 07.内訳科目区分設定 */
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101010, 1010, 101010, '直仮-直接仮設');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101020, 1010, 101010, '土工-土工');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101030, 1010, 101010, '地業-地業');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101040, 1010, 101010, '躯体-鉄筋');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101050, 1010, 101010, '躯体-コンクリート');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101060, 1010, 101010, '躯体-型枠');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101070, 1010, 101010, '躯体-鉄骨');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101080, 1010, 101010, '躯体-木（仕上除く）');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101090, 1010, 101010, '躯体-免震構造');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101100, 1010, 101010, '躯体-ＰＣ構造');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101110, 1010, 101010, '躯体-特殊工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101120, 1010, 101010, '仕上-既製コンクリート');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101130, 1010, 101010, '仕上-防水');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101140, 1010, 101010, '仕上-石');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101150, 1010, 101010, '仕上-タイル');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101160, 1010, 101010, '仕上-木（躯体除く）');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101170, 1010, 101010, '仕上-屋根及びとい');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101180, 1010, 101010, '仕上-金属');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101190, 1010, 101010, '仕上-左官（吹付含む）');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101200, 1010, 101010, '仕上-建具（ガラス含む）');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101210, 1010, 101010, '仕上-塗装（吹付除く）');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101220, 1010, 101010, '仕上-内外装');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101230, 1010, 101010, '仕上-ユニット及びその他（サイン除く）');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101240, 1010, 101010, '仕上-サイン');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101250, 1010, 101010, '仕上-特殊工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10101260, 1010, 101010, '処理-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102010, 1010, 101020, '改修-直接仮設');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102020, 1010, 101020, '改修-防水改修');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102030, 1010, 101020, '改修-外壁改修');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102040, 1010, 101020, '改修-建具改修');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102050, 1010, 101020, '改修-内装改修');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102060, 1010, 101020, '改修-塗装改修');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102070, 1010, 101020, '改修-耐震（躯体）改修');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102080, 1010, 101020, '改修-環境配慮改修');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102090, 1010, 101020, '改修-サイン');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102100, 1010, 101020, '改修-特殊工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10102110, 1010, 101020, '改修-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10103010, 1010, 101030, '外構-囲障');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10103020, 1010, 101030, '外構-構内舗装');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10103030, 1010, 101030, '外構-屋外排水');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10103040, 1010, 101030, '外構-植栽');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10103050, 1010, 101030, '外構-工作物');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10103060, 1010, 101030, '外構-サイン');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10103070, 1010, 101030, '外構-特殊工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10103080, 1010, 101030, '外構-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10104010, 1010, 101040, 'とりこわし工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201010, 1020, 102010, '新営-電灯設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201020, 1020, 102010, '新営-動力設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201030, 1020, 102010, '新営-電気自動車用充電設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201040, 1020, 102010, '新営-電熱設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201050, 1020, 102010, '新営-雷保護設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201060, 1020, 102010, '新営-受変電設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201070, 1020, 102010, '新営-電力貯蔵設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201080, 1020, 102010, '新営-発電設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201090, 1020, 102010, '新営-構内情報通信網設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201100, 1020, 102010, '新営-構内交換設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201110, 1020, 102010, '新営-情報表示設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201120, 1020, 102010, '新営-映像・音響設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201130, 1020, 102010, '新営-拡声設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201140, 1020, 102010, '新営-誘導支援設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201150, 1020, 102010, '新営-テレビ共同受信設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201160, 1020, 102010, '新営-監視カメラ設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201170, 1020, 102010, '新営-駐車場管制設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201180, 1020, 102010, '新営-防犯・入退室管理設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201190, 1020, 102010, '新営-火災報知設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201200, 1020, 102010, '新営-中央監視制御設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201210, 1020, 102010, '新営-特殊電気設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201220, 1020, 102010, '新営-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10201230, 1020, 102010, '新営-テレビ電波障害防除設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202010, 1020, 102020, '改修-電灯設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202020, 1020, 102020, '改修-動力設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202030, 1020, 102020, '改修-電気自動車用充電設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202040, 1020, 102020, '改修-電熱設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202050, 1020, 102020, '改修-雷保護設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202060, 1020, 102020, '改修-受変電設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202070, 1020, 102020, '改修-電力貯蔵設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202080, 1020, 102020, '改修-発電設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202090, 1020, 102020, '改修-構内情報通信網設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202100, 1020, 102020, '改修-構内交換設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202110, 1020, 102020, '改修-情報表示設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202120, 1020, 102020, '改修-映像・音響設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202130, 1020, 102020, '改修-拡声設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202140, 1020, 102020, '改修-誘導支援設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202150, 1020, 102020, '改修-テレビ共同受信設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202160, 1020, 102020, '改修-監視カメラ設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202170, 1020, 102020, '改修-駐車場管制設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202180, 1020, 102020, '改修-防犯・入退室管理設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202190, 1020, 102020, '改修-火災報知設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202200, 1020, 102020, '改修-中央監視制御設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202210, 1020, 102020, '改修-特殊電気設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202220, 1020, 102020, '改修-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10202230, 1020, 102020, '改修-テレビ電波障害防除設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10203010, 1020, 102030, '外構-構内配電線路');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10203020, 1020, 102030, '外構-構内通信線路');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10203030, 1020, 102030, '外構-特殊電気設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10203040, 1020, 102030, '外構-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10204010, 1020, 102040, 'とりこわし工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301010, 1030, 103010, '新営-空気調和設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301020, 1030, 103010, '新営-換気設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301030, 1030, 103010, '新営-排煙設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301040, 1030, 103010, '新営-自動制御設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301050, 1030, 103010, '新営-衛生器具設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301060, 1030, 103010, '新営-給水設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301070, 1030, 103010, '新営-排水設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301080, 1030, 103010, '新営-給湯設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301090, 1030, 103010, '新営-消火設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301100, 1030, 103010, '新営-ガス設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301110, 1030, 103010, '新営-厨房機器設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301120, 1030, 103010, '新営-雨水利用設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301130, 1030, 103010, '新営-特殊機械設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301140, 1030, 103010, '新営-撤去工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10301150, 1030, 103010, '新営-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302010, 1030, 103020, '改修-空気調和設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302020, 1030, 103020, '改修-換気設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302030, 1030, 103020, '改修-排煙設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302040, 1030, 103020, '改修-自動制御設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302050, 1030, 103020, '改修-衛生器具設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302060, 1030, 103020, '改修-給水設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302070, 1030, 103020, '改修-排水設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302080, 1030, 103020, '改修-給湯設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302090, 1030, 103020, '改修-消火設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302100, 1030, 103020, '改修-ガス設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302110, 1030, 103020, '改修-厨房機器設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302120, 1030, 103020, '改修-雨水利用設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302130, 1030, 103020, '改修-特殊機械設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302140, 1030, 103020, '改修-撤去工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10302150, 1030, 103020, '改修-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10303010, 1030, 103030, '外構-給水設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10303020, 1030, 103030, '外構-排水設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10303030, 1030, 103030, '外構-ガス設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10303040, 1030, 103030, '外構-浄化槽設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10303050, 1030, 103030, '外構-特殊機械設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10303060, 1030, 103030, '外構-撤去工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10303070, 1030, 103030, '外構-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10304010, 1030, 103040, 'とりこわし工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10401010, 1040, 104010, '新営-エレベーター設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10401020, 1040, 104010, '新営-小荷物専用昇降機設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10401030, 1040, 104010, '新営-エスカレーター設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10401040, 1040, 104010, '新営-特殊昇降機設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10401050, 1040, 104010, '新営-撤去工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10401060, 1040, 104010, '新営-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10402010, 1040, 104020, '改修-エレベーター設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10402020, 1040, 104020, '改修-小荷物専用昇降機設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10402030, 1040, 104020, '改修-エスカレーター設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10402040, 1040, 104020, '改修-特殊昇降機設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10402050, 1040, 104020, '改修-撤去工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10402060, 1040, 104020, '改修-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10403010, 1040, 104030, '外構-エレベーター設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10403020, 1040, 104030, '外構-小荷物専用昇降機設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10403030, 1040, 104030, '外構-エスカレーター設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10403040, 1040, 104030, '外構-特殊昇降機設備');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10403050, 1040, 104030, '外構-撤去工事');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10403060, 1040, 104030, '外構-発生材処理');
INSERT INTO category_subject (cs_id, cs_co_id, cs_cd_id, cs_type_name) VALUES (10404010, 1040, 104040, 'とりこわし工事');

/** 11.従業員テーブル */
INSERT INTO employee (code, first_name, last_name, password, role, created_at, updated_at, delete_flg)
VALUES ('775', '浩明', '山本', '$2a$10$KnfWut5vjLSI1RPlss6xZuukP9NFk3AM/13tS14kdVc1Cs8UHNnue', 'ADMIN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);
INSERT INTO employee (code, first_name, last_name, password, role, created_at, updated_at, delete_flg)
VALUES ('TestEditor', '編集者', 'テスト', '$2a$10$z3pHxdzG752sSKejkOc9nuzhU.gBjtPf4hh5dJ/Vuz49kHHwDu5Le', 'EDITOR', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);
INSERT INTO employee (code, first_name, last_name, password, role, created_at, updated_at, delete_flg)
VALUES ('TestUser', 'ユーザー', 'テスト', '$2a$10$xL1oADCQD39UQ0JLVQRyBu/UyEyx77iYzWn/.7lk1fRFbTmm8YswW', 'GENERAL', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);

/** 21.設計契約テーブル */
INSERT INTO design_contract (contract_number, contract_name, customer_name, dc_created_at, dc_updated_at, dc_latest_editor, dc_delete_flg)
VALUES ('X2024-001', 'T再開発事業に係る施設建築物実施設計等業務', 'T市街地再開発組合', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO design_contract (contract_number, contract_name, customer_name, dc_created_at, dc_updated_at, dc_latest_editor, dc_delete_flg)
VALUES ('X2024-002', 'G警察署庁舎実施設計', 'A警察本部', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

/** 22.工事契約テーブル */
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (1, 30, '2019年', '8月', '1期', 'T再開発事業に係る解体工事', 'T地内', 15325.53, '再開発事業', 446400000, 408000000, 'O社', 'O社内訳は2019.7.31時点、設計書は2019.8.26時点', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (1, 30, '2020年', '11月', '2期', 'T再開発事業', 'T地内', 15325.53, '解体工事', 12980000000, 12735000000, 'O社', '・RIBC内訳書ではサインは大項目で計上されているが、ここでは各棟と外構に分けて計上する。\r\n・2020年3月23日当時の設計書から追加VE(2億円以上)を行うとしてO社と契約した。このコストデータはその追加VEを反映したものであり、結果落札率は98.11%となっている。', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (2, 10, '2018年', '3月', '1期', 'G警察暑車庫棟取壊し等工事【RIBC復元】', 'G地内', 4744.64, '霊安室棟オーバースライダー(2期建築に移動)', 27460000, 24710000, 'K社', '・RIBC内訳のため、RIBC単価は仮単価\r\n・解体撤去工事詳細\r\n　車庫棟解体　1式　2,021,165円\r\n　危険物貯蔵所解体　1式　632,811円\r\n　倉庫解体　1式　541,920円\r\n　駐輪場解体　1式　209,322円\r\n　外構解体　1式　1,902,111円\r\n　電気設備解体　1式　78,145円\r\n　機械設備解体　1式　5,682,056円\r\n　計　5,682,056円', '決まり次第更新' ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (2, 10, '2018年', '5月', '2期-1', 'G警察署庁舎建築工事【RIBC復元】', 'G地内', 4744.64, '電気、空調、管、エレベーター、外構', 919000000, 919000000, 'S社', '・RIBC内訳のため、RIBC単価は仮単価\r\n・解体撤去工事詳細\r\n　庁舎階段解体　1式　112,634円\r\n　外構解体　1式　2,841,840円\r\n計　2,954,474円\r\n', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (2, 10, '2018年', '5月', '2期-2', 'G警察署庁舎電気工事', 'G地内', 4744.64, '建築、空調、管、エレベーター、外構', 198600000, 178700000, 'I社', '・入札結果のみ（内訳不明）', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (2, 10, '2018年', '5月', '2期-3', 'G警察署庁舎空調工事', 'G地内', 4744.64, '建築、電気、管、エレベーター、外構', 134400000, 120960000, 'I社', '・入札結果のみ（内訳不明）', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (2, 10, '2018年', '5月', '2期-4', 'G警察署庁舎管工事', 'G地内', 4744.64, '建築、電気、空調、エレベーター、外構', 91410000, 82260000, 'H社', '・入札結果のみ（内訳不明）\r\n・1回目予定価格86,260,000円で不調、2回目で落札', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (2, 10, '2018年', '5月', '2期-5', 'G警察署庁舎エレベーター工事', 'G地内', 4744.64, '建築、電気、空調、管、外構', 27840000, 25050000, 'M社', '・入札結果のみ（内訳不明）', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (2, 10, '2019年', '9月', '2期-6', 'G警察暑庁舎外構工事【RIBC復元】', 'G地内', 4744.64, '建築、電気、空調、管、エレベーター', 38520000, 38500000, 'S社', '・RIBC内訳のため、RIBC単価は仮単価', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor, cc_delete_flg)
VALUES (2, 10, '2020年', '3月', '3期', 'G警察署環境整備等工事【RIBC復元】', 'G地内', 4744.64, '無し', 149800000, 135950000, 'S社', '・RIBC内訳のため、RIBC単価は仮単価\r\n・解体建物面積　内部面積参考1358㎡　17,975円/床面積', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

/** 23.内訳頭紙テーブル */
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (1, 1100, 446400000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (1, 1110, 44640000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (1, 1120, 491040000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1010, 7869945465, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1020, 1173200155, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1030, 1407556595, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1040, 164101900, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1050, 10614804115, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1060, 724062762, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1070, 638300787, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1080, 1002832336, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1090, 2365195885, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1100, 12980000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1110, 1298000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (2, 1120, 14278000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1010, 15374959, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1020, 369150, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1030, 1896006, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1050, 17640115, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1060, 3972667, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1090, 9819885, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1100, 27460000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1110, 2196800, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (3, 1120, 29656800, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (4, 1010, 732113706, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (4, 1050, 732113706, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (4, 1060, 41013562, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (4, 1090, 186886294, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (4, 1100, 919000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (4, 1110, 73520000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (4, 1120, 992520000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (9, 1010, 28990916, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (9, 1050, 28990916, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (9, 1060, 1036284, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (9, 1090, 9199084, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (9, 1100, 38190000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (9, 1110, 3819000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (9, 1120, 42009000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1010, 108577496, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1020, 2397380, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1030, 482150, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1050, 111457026, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1060, 8205342, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1070, 12051603, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1080, 16786029, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1090, 37042974, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1100, 148500000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1110, 14850000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor, bco_delete_flg)
VALUES (10, 1120, 163350000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

/** 24.内訳種目テーブル */
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (1, 101040, 202, 20201, 1, 'とりこわし', 446400000, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 101, 10101, 1, '住宅棟', 4268599717, 1144.67, 23448.21, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 112, 11201, 2, '渡り廊下棟', 138652833, 299.02, 235.96, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 103, 10302, 3, '商業業務棟', 2218205789, 4866.14, 10829.98, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 112, 11201, 4, '駐車場棟', 951467187, 2914.29, 14044.49, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 110, 11002, 5, 'ごみ置き場', 10117123, 48.76, 48.76, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 112, 11201, 6, '屋外駐輪場1', 2710514, 17.30, 28.83, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 112, 11201, 7, '屋外駐輪場2', 3624272, 24.60, 41.00, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 112, 11201, 8, '屋外駐輪場3', 1304093, 7.82, 13.03, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101010, 102, 10205, 9, '駐車場管理室', 7139467, 16.80, 16.80, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (4, 101030, 201, 20101, 10, '外構', 268124470, 0, 0, 0, 5986.13, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (16, 101040, 202, 20201, 1, 'とりこわし', 5682056, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (16, 101010, 102, 10201, 2, '霊安室棟', 9085903, 61.79, 60.99, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (16, 101010, 102, 10201, 3, '仮設倉庫', 607000, 44.64, 44.64, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (25, 101010, 102, 10201, 1, '庁舎棟', 685734193, 714.41, 3650.99, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (25, 101010, 102, 10201, 2, '車庫棟', 40414814, 306.58, 306.58, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (25, 101010, 102, 10201, 3, '霊安室棟シャッター', 924656, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (25, 101010, 102, 10201, 4, '庁舎仮設階段', 1165695, 6.50, 6.50, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (25, 101010, 102, 10201, 5, '既設待機寮改修', 40954, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (25, 101010, 201, 20101, 6, '外構', 878920, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (25, 101010, 202, 20201, 7, '庁舎階段解体', 112634, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (25, 101010, 202, 20201, 8, '外構解体', 2841840, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (32, 101030, 201, 20101, 1, '外構', 28990916, 0, 0, 0, 1436.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (39, 101040, 202, 20201, 1, 'とりこわし', 24410363, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (39, 101030, 201, 20101, 2, '外構（新庁舎南側）', 76993404, 0, 0, 0, 2334.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (39, 101010, 102, 10201, 3, '庁舎エントランス庇', 7131229, 69.00, 69.00, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cd (bcd_bco_id, bcd_cd_id, bcd_po_id, bcd_pd_id, bcd_order,bcd_type_name, bcd_price, bcd_area_building, bcd_area_totalfloor, bcd_area_renovation, bcd_area_exterior, bcd_created_at, bcd_updated_at, bcd_latest_editor, bcd_delete_flg)
VALUES (39, 101040, 202, 20201, 4, '仮設倉庫撤去', 42500, 0, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

/** 25.内訳情報テーブル */
SET @serch_bcd_id = 2;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'RC造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 29, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 105, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 96.27, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 95.62, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 9889, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 9327, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 562, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切9889m3=埋戻9327m3+残土処分562m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 1618, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 10609.4, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 11429, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量（SRC部分）', 40.9, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 116, '設計数量', 77.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 562265290, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 301, '', 0, 938637840, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 401, '', 0, 82940700, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 3;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 9.31, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 9.23, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 384, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 241, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 143, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切384m3=埋戻241m3+残土処分143m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 24.2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 241, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 798, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量', 35.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 118, 'アルミハニカム庇下地', 10.3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 4720200, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 301, '', 0, 990000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 4;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 105, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 20.4, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 16.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 9954, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 4246, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 5184, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切9954m3=埋戻4246m3+盛土524m3+残土処分5184m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 635, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 5847.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 13588, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量', 1477, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 116, '設計数量', 40.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 118, 'デッキ庇Ａ下地', 1.9, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 451907258, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 301, '', 0, 437280657, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 401, '', 0, 59643000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 5;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 105, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 17.13, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 15.82, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 2825, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 1754, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 925, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切2825m3=埋戻1754m3+盛土146m3+残土処分925m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 149, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 2525.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 3127, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量', 1184, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 116, '設計数量', 9.1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 133652247, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 301, '', 0, 24456817, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 401, '', 0, 21518200, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 6;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 3.47, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 3.15, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 44.3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 28, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 16.3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切44.3m3=埋戻28m3+残土処分16.3m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 2.6, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 25, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 119, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量', 2.2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 950180, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 301, '', 0, 1504309, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 7;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 2.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 2.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 20, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 10.2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 9.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切20m3=埋戻10.2m3+残土処分9.8m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 0.4, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 6.9, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 12.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 1180970, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 8;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 2.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 2.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 26.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 13.1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 13.7, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切26.8m3=埋戻13.1m3+残土処分13.7m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 0.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 9.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 16, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 452050, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 9;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 2.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 2.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 9.9, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 5.4, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 4.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切9.9m3=埋戻5.4m3+残土処分4.5m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 0.2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 3.2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 6.7, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 352860, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 10;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 3.9, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 3.4, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 24.3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 15.3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 9, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切24.3m3=埋戻15.3m3+残土処分9m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 1.3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 10.7, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 59.2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量', 1.3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 2222730, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 301, '', 0, 1189250, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 13;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'RC造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 4.345, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 3.835, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 64, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 36.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 27.1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切64.0m3=埋戻36.8m3+残土処分27.1m3', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 9.9, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 69.5, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 445, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 201, '', 0, 369150, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 301, '', 0, 1896006, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 15;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'SRC造、S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 6, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 105, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 28.31, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 25.41, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 1733, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 890, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 1733, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切1733.0m3=残土処分1733.0m3（場外全搬出、埋戻890.0m3は購入土）', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 285.7, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 2652, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 10171, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量（SRC造）', 256, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量（S造）', 218, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 116, '設計数量', 22.7, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 118, '設備架台鉄骨', 2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 118, '点検歩廊鉄骨', 1.2, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 16;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 4.235, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 3.985, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 108, '', 346, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 109, '', 195, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 110, '', 346, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 111, '根切346.0m3=残土処分346.0m3（場外全搬出、埋戻195.0m3は購入土）', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 112, '設計数量', 19.8, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 113, '設計数量', 178.4, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 114, '設計数量', 713, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '設計数量', 17.6, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 26;
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 101, '', 0, (SELECT  bcd_price FROM breakdown_cd JOIN breakdown_co ON breakdown_cd.bcd_bco_id = breakdown_co.bco_id WHERE bcd_id = @serch_bcd_id), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 102, 'S造（建築本体に庇を増築）', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 104, '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 106, '', 4.85, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 107, '', 4.45, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO information_db (idb_bcd_id, idb_ii_id, idb_data_text, idb_data_double, idb_data_bigint, idb_created_at, idb_updated_at, idb_latest_editor, idb_delete_flg)
VALUES (@serch_bcd_id, 115, '', 2.7, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

/** 26.内訳科目テーブル */
SET @serch_bcd_id = 2;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 128506610, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 79527070, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 3628668, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 420191740, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 245079365, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 57429088, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 75227861, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101090, '', 148820000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101100, '', 1176491420, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101120, '', 119844481, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 47988745, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101140, '', 132000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101150, '', 42809882, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101160, '', 138242836, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 12325352, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 225377353, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 63061034, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 473458359, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 5488938, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 420512119, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 372489776, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101240, '', 11967020, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 3;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 4369220, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 1340350, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 7063071, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 3267538, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 3433358, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 3318584, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 26771810, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101120, '', 7450466, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 3170413, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101150, '', 140580, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101160, '', 900000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 38943135, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 22647144, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 456884, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 2846278, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 3001992, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 2824470, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 6707540, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 4;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 103889364, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 122407870, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 64570550, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 83280534, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 77971975, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 59684072, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 581717780, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101120, '', 56798358, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 43837423, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101140, '', 1758240, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101150, '', 79167235, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101160, '', 9169232, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 63809463, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 331475467, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 20027697, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 271632577, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 18848134, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 79016770, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 114842468, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101240, '', 34300580, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 5;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 37933300, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 8410300, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 39971765, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 33129280, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 37653912, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 11631209, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 606610154, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101120, '', 31118110, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 8554950, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 7359068, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 29694758, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 12861409, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 24211746, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 2326560, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 3418980, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 35648486, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101240, '', 20933200, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 6;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 519744, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 407137, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 2541023, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 334974, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 530466, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 508224, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 1261177, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101120, '', 1071868, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 45503, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101160, '', 1341, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 1421296, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 705138, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 302760, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 340000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 11970, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 110564, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 3938, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 7;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 116352, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 124838, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 110326, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 49386, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 161796, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 48840, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 14976, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 2084000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 8;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 165640, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 168203, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 124369, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 61740, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 195180, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 60820, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 21320, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 2827000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 9;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 52520, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 61143, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 90674, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 20208, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 114288, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 25500, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 6760, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 933000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 10;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 342820, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 285342, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 1778548, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 161382, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 354456, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 254499, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 980156, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101120, '', 547260, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 33379, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 433239, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 635590, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 119646, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 680506, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 29390, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 254554, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 248700, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 11;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103010, '外構部分+造成部分', 69718348, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103020, '', 61459635, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103030, '外構部分+造成部分', 67930122, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103040, '', 17415835, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103050, '', 24762580, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103060, '', 24724100, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103070, '設備機器置場', 2113850, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 13;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 424700, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 254189, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 2044028, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 1215048, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 1248322, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 2121018, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 346981, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 24510, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 320242, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 353211, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 400000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 105388, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 164206, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 64060, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 15;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 20704546, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 15998560, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 64547864, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 37103434, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 43573317, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 52797782, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 158673583, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101120, '', 9527496, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 11465025, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101150, '', 1801220, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101160, '', 6042798, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 972135, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 27609868, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 10845317, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 98817552, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 13292627, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 73498045, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101230, '', 32727824, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101240, '', 5735200, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 16;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 1628250, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101020, '', 3053650, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101030, '', 4558122, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101040, '', 2355502, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101050, '', 2847700, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101060, '', 2912274, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 7015320, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 24192, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 5120952, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 884112, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 171974, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 9141000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 616386, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101220, '', 85380, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 17;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 5928, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101190, '', 13728, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101200, '', 905000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 20;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103050, '', 878920, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 23;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103010, '', 5291100, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103020, '', 6807399, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103030, '', 3854445, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103040, '', 122400, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103050, '', 12910748, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103080, '', 4824, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 25;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103010, '', 1810000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103020, '', 9292604, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103030, '', 9348530, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103040, '', 246750, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103050, '', 17012720, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103060, '', 6382800, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10103070, '地盤改良（砂杭）', 32900000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

SET @serch_bcd_id = 26;
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101010, '', 1002143, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101070, '', 1499086, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101130, '', 48840, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101170, '', 1632070, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101180, '', 2945310, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO breakdown_cs (bcs_bcd_id, bcs_cs_id, bcs_data_text, bcs_data_bigint, bcs_created_at, bcs_updated_at, bcs_latest_editor, bcs_delete_flg)
VALUES (@serch_bcd_id, 10101210, '', 3780, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

