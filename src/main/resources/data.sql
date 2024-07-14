/** 01.内訳種別区分設定 */
INSERT INTO estimate_type (et_id, type_name) VALUES (10, '官庁提示設計書');
INSERT INTO estimate_type (et_id, type_name) VALUES (20, '施工業者見積書');
INSERT INTO estimate_type (et_id, type_name) VALUES (30, '補助金用設計書');
INSERT INTO estimate_type (et_id, type_name) VALUES (40, '実施設計概算書');

/** 02.内訳頭紙区分設定 */
INSERT INTO category_outline (co_id, type_name) VALUES (1010, '建築');
INSERT INTO category_outline (co_id, type_name) VALUES (1020, '電気設備');
INSERT INTO category_outline (co_id, type_name) VALUES (1030, '機械設備');
INSERT INTO category_outline (co_id, type_name) VALUES (1040, '昇降機設備');
INSERT INTO category_outline (co_id, type_name) VALUES (1050, '直接工事費');
INSERT INTO category_outline (co_id, type_name) VALUES (1060, '共通仮設費');
INSERT INTO category_outline (co_id, type_name) VALUES (1070, '現場管理費');
INSERT INTO category_outline (co_id, type_name) VALUES (1080, '一般管理費費等');
INSERT INTO category_outline (co_id, type_name) VALUES (1090, '共通費');
INSERT INTO category_outline (co_id, type_name) VALUES (1100, '工事価格');
INSERT INTO category_outline (co_id, type_name) VALUES (1110, '消費税相当額');
INSERT INTO category_outline (co_id, type_name) VALUES (1120, '工事費');

/** 03.内訳種目区分設定 */
INSERT INTO category_detail (cd_id, type_name) VALUES (101010, '新営工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (101020, '改修工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (101030, '外構工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (101040, 'とりこわし工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (102010, '新営工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (102020, '改修工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (102030, '外構工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (102040, 'とりこわし工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (103010, '新営工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (103020, '改修工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (103030, '外構工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (103040, 'とりこわし工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (104010, '新営工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (104020, '改修工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (104030, '外構工事');
INSERT INTO category_detail (cd_id, type_name) VALUES (104040, 'とりこわし工事');

/** 04.用途概略区分設定 */
INSERT INTO purpose_outline (po_id, type_name) VALUES (101, '住宅');
INSERT INTO purpose_outline (po_id, type_name) VALUES (102, '事務所');
INSERT INTO purpose_outline (po_id, type_name) VALUES (103, '店舗');
INSERT INTO purpose_outline (po_id, type_name) VALUES (104, '⽂化社会施設');
INSERT INTO purpose_outline (po_id, type_name) VALUES (105, '学校');
INSERT INTO purpose_outline (po_id, type_name) VALUES (106, '病院');
INSERT INTO purpose_outline (po_id, type_name) VALUES (107, '福祉厚⽣施設');
INSERT INTO purpose_outline (po_id, type_name) VALUES (108, '宿泊施設');
INSERT INTO purpose_outline (po_id, type_name) VALUES (109, 'スポーツ レジャー施設');
INSERT INTO purpose_outline (po_id, type_name) VALUES (110, '倉庫');
INSERT INTO purpose_outline (po_id, type_name) VALUES (111, '⼯場');
INSERT INTO purpose_outline (po_id, type_name) VALUES (112, 'その他');
INSERT INTO purpose_outline (po_id, type_name) VALUES (201, '外構');
INSERT INTO purpose_outline (po_id, type_name) VALUES (202, 'とりこわし');

/** 05.用途詳細区分設定 */
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10101, '分譲マンション', '分譲マンション、分譲リゾートマンション');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10102, '賃貸マンション', '賃貸マンション、公営住宅、ＵＲ賃貸住宅、アパート');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10103, 'ワンルームマンション', 'ワンルームマンション、学⽣マンション、シェアハウス');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10104, '社宅・家族寮', '社宅、家族寮、公務員宿舎、教職員住宅、職員住宅');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10105, '独⾝寮', '独⾝寮、学⽣会館、学⽣交流館、学⽣寮、寄宿舎、⽣徒寮、選⼿寮、待機宿舎、隊舎');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10106, '⼾建住宅', '個⼈住宅、併⽤住宅');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10201, '⾃社ビル（⼀般事務所）', '⾃社ビル、庁舎、会館、警察署、公館、裁判所、消防署、放送局、スタジオ');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10202, '貸事務所', '貸事務所、貸ビル、テナントビル');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10203, '銀⾏・⾦融', '銀⾏、信⽤⾦庫、郵便局、農協');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10204, '電算センター', '電算センター、データセンター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10205, '管理事務所', '管理事務所、電気室・電気棟、電源局舎、ボイラー室、墓苑管理棟、無線局舎、訓練塔、管制塔、観測所、機械室・機械棟、気象レーダー局舎、訓練棟、ビジターセンター、交番、派出所、消防団詰所');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10206, '研究施設', '研究所、研究センター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10207, '研修施設', '研修施設');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10301, '都市型店舗', '商業ビル、百貨店');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10302, '⼤規模物販店', 'スーパー等の核テナントを中⼼としたショッピングセンター、アウトレットモール');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10303, '各種専⾨店', '各種専⾨店（家電量販店、家具店、⾐料品店、ドラッグストア、調剤薬局、写真スタジオ、ガソリンスタンド、携帯ショップ等）');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10304, 'スーパー・コンビニ', '⾷品スーパー専⾨店、コンビニエンスストア');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10305, 'ホームセンター', 'ホームセンター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10306, 'ショールーム', '⾃動⾞ショールーム、住設機器ショールーム');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10307, '飲⾷店', '飲⾷店、飲⾷店ビル、カラオケ店');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10308, 'パチンコ店', 'パチンコ店');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10401, '市⺠会館・コミュニティセンター', '市⺠会館、コミュニティーセンター、イベントホール、⾳楽堂、会議場、カルチャーセンター、勤労福祉センター、区⺠館、劇場、公会堂、公⺠館、交流センター（交流館）、国際会議場、コンサートホール、コンベションセンター、市⺠センター、市⺠⽂化センター、集会所、集会場、⽣涯学習センター、多⽬的ホール');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10402, '博物館・美術館', '博物館、美術館、科学館、記念館、ギャラリー、情報館、資料館、⽔族館、展⽰場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10403, '結婚式場', '結婚式場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10404, '宗教建築', '位牌堂、神楽殿、客殿、教会、庫裡、座禅堂、参集殿、寺院、司祭館、社務所、修道院、書院、神社、納⾻堂、本堂、礼拝堂、礼拝所');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10405, '葬祭場', '葬祭場、葬儀場、斎場、セレモニーホール、⽕葬場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10406, '図書館', '図書館');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10501, '保育園・幼稚園', '保育園、保育所、幼稚園、こども園');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10502, '校舎（⼩学校）', '⼩学校');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10503, '校舎（中学・⾼校）', '中学校、⾼校、中⾼⼀貫校');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10504, '校舎（⾼専・短⼤・⼤学）', '⾼等専⾨学校、短期⼤学、⼤学、⼤学院');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10505, '校舎（専⾨学校）', '専⾨学校、学習塾、⾃動⾞教習所、職業訓練校、職業訓練センター、予備校');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10601, '病院', '⼀般病院、総合病院、⼤学附属病院、介護⽀援系病院、リハビリテーション病院、療育センター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10602, '医院・診療所', '医院、診療所、クリニック、動物病院');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10603, '検診センター', '検診センター、医師会センター、市⺠健康センター、保健所、保健センター、保健福祉センター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10701, '⾼齢者向け住宅', 'サービス付⾼齢者向け住宅、介護付⾼齢者住宅');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10702, '⽼⼈ホーム', '⽼⼈ホーム、特別養護⽼⼈ホーム、有料⽼⼈ホーム、養護⽼⼈ホーム、ケアハウス、軽費⽼⼈ホーム、⾼齢者⽀援ハウス、⼩規模多機能介護施設、シルバーハウス、⽣活⽀援ハウス');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10703, 'グループホーム', 'グループホーム');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10704, 'デイサービス・ショートステイ', 'デイサービス、ショートステイ、障害者デイケア、通所介護施設、デイケアセンター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10705, '⽼⼈保健施設', '介護⽼⼈保健施設');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10706, '複合福祉施設', '複合福祉施設、福祉センター、総合サービス、福祉会館');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10707, '児童福祉施設', '児童館、学童クラブ、放課後児童クラブ、児童センター、児童相談所、児童養護施設、特別⽀援学校、養護学校、乳児院');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10708, '⾼齢者・障害者⽀援施設', '救護施設、就労⽀援施設、授産施設、障害者⽀援センター、障害者リハビリ施設、地域包括⽀援センター、在宅介護⽀援センター、知的障碍者更⽣施設、リハビリテーション施設');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10801, 'シティホテル', 'シティホテル（宴会場を有するホテル）');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10802, 'ビジネスホテル', 'ビジネスホテル、カプセルホテル');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10803, 'リゾートホテル', 'リゾートホテル、レジャーホテル');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10804, '旅館', '旅館、ゲストハウス');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10805, '保養所', '保養所、合宿所、社員クラブ、研修所');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10901, '体育館', '体育館、屋内運動場、講堂、学校の講堂、ダンスホール、武道場、空⼿道場、射撃場、屋内グラウンド、屋内スケート場、屋内スポーツ練習場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10902, 'クラブハウス', 'クラブハウス、ゴルフ場クラブハウス、更⾐棟、部室');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10903, '総合レジャー施設', '映画館、場外⾺・⾈・⾞券売り場、バッティングセンター、ボーリング場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10904, 'フィットネスクラブ', 'フィットネスクラブ、スポーツジム、スポーツクラブ、トレーニングセンター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10905, 'プール施設', 'プール');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10906, '公衆浴場', '公衆浴場、温泉施設、温浴施設、健康ランド、スーパー銭湯');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (10907, '屋外スタジアム', '屋外スタジアム、観覧席、競技場、競⾺場・競輪場スタンド、ボートレース場スタンド、野外ステージ、野球場、サッカー場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11001, '流通センター', '流通センター、集配施設、配送センター、物流センター、郵便処理施設、ロジスティクスセンター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11002, '⼀般倉庫', '⼀般倉庫、収蔵庫、⽂書保管倉庫');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11003, '冷凍倉庫・冷蔵倉庫', '冷凍倉庫、冷蔵倉庫、低温倉庫、定温倉庫');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11004, '⽴体倉庫', '⽴体倉庫、⾃動倉庫');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11005, '特殊倉庫', '特殊倉庫、危険物倉庫、防災⽤備蓄倉庫、道路啓開基地');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11006, '作業所', '作業所・作業場、市場、荷捌き場、陸揚げ場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11007, '⾞庫・格納庫', '⾞庫、格納庫、バス・モノレール基地');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11101, '⼯場（精密機械電気等）', '精密機械電気⼯場（精密機械⼯業、電⼦部品⼯場、半導体⼯場、IC⼯場など）');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11102, '⼯場（⾃動⾞整備）', '⾃動⾞整備⼯場、⾞検場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11103, '⼯場（⾷品）', '⾷品⼯場(パン⼯場、野菜加⼯⼯場、ビール⼯場、飲料製造⼯場、惣菜製造⼯場、弁当⼯場など）、給⾷センター');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11104, '⼯場（医薬品）', '医薬品⼯場、医療品⼯場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11105, '⼯場（機械電気・⾦属・その他）', '機械製作⼯場、機械組⽴⼯場、印刷⼯場、⽊材加⼯⼯場、プレス⼯場、溶接⼯場、⾦属加⼯⼯場、鋳物⼯場、塗装⼯場など');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11106, '⼯場（化学）', '洗濯⼯場、化成品⼯場、製紙⼯場、化粧品⼯場、農薬⼯場、化学製品製造⼯場、塗料製造⼯場、ガラス⼯場、繊維⼯場、合成樹脂製品製造⼯場など');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11107, '清掃・処理⼯場', '下⽔処理施設、浄化センター、排⽔処理施設、揚⽔機場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11108, '農林⽔産関連施設', 'ライスセンター、精⽶⼯場、畜舎、温室、脱穀所、堆肥舎、果実選果場、教育施設農林⽔産関係実習施設');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11201, '駐⾞場（屋外を除く）', '駐⾞場、駐輪場');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11202, '駅舎', '駅舎');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11203, '公衆トイレ', '公衆トイレ');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (11204, '変電所', '変電所');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (20101, '外構', '外構');
INSERT INTO purpose_detail (pd_id, type_name, included_type) VALUES (20201, 'とりこわし', 'とりこわし工事単独発注');

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
VALUES ('X2024-002', 'G察署庁舎実施設計', 'A警察本部', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

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


