# README

# テーブル設計

## users テーブル
| Column                    | Type   | Option                    |
| ------------------------- | ------ | ------------------------- |
| nickname                  | string | null: false               |
| email                     | string | null: false, unique: true |
| encrypted_password        | string | null: false               |

### Association
- has_many :i_comments
- has_many :f_comments
- has_many :insects, through: :insect_users
- has_many :fish, through: :fish_users


## i_comments テーブル 
| Column | Type       | Option                         |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| insect | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :insect


## f_comments テーブル 
| Column | Type       | Option                         |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| fish   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :fish


## insect_users テーブル 
| Column | Type       | Option                         |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| insect | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :insect


## fish_users テーブル
| Column | Type       | Option                         |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| fish   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :fish


## insects テーブル
| Column           | Type       | Option      |
| ---------------- | ---------- | ----------- |
| time_zone        | string     | null: false |
| appearance_place | string     | null: false |
| image            | text       | null: false | 

### Association
- has_many :users, through: :insect_users
- has_many :i_comments


## fish テーブル
| Column           | Type       | Option      |
| ---------------- | ---------- | ----------- |
| time_zone        | string     | null: false |
| appearance_place | string     | null: false |
| image            | text       | null: false | 

### Association
- has_many :users, through: :fish_users
- has_many :f_comments
