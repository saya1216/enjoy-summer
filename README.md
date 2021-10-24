# README

# テーブル設計

## users テーブル

| Column                    | Type   | Option                    |
| ------------------------- | ------ | ------------------------- |
| nickname                  | string | null: false               |
| email                     | string | null: false, unique: true |
| encrypted_password        | string | null: false               |

### Association

- has_many :comments
- has_many :insects
- has_many :fishes

## comments テーブル
 
| Column | Type       | Option                         |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| fish   | references | null: false, foreign_key: true |
| insect | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :insect
- belongs_to :fish

## insects テーブル

| Column           | Type       | Option      |
| ---------------- | ---------- | ----------- |
| time_zone        | string     | null: false |
| appearance_place | string     | null: false |
| image            | text       | null: false | 

### Association

- belongs_to :user
- has_one :comment

## fishes テーブル

## fish テーブル

| Column           | Type       | Option      |
| ---------------- | ---------- | ----------- |
| time_zone        | string     | null: false |
| appearance_place | string     | null: false |
| image            | text       | null: false | 

### Association

- belongs_to :user
- has_one :comment
