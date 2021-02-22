# テーブル設計
## usersテーブル
| Column              | Type     | Options                 |
| ------------------- | -------- | ----------------------- |
| email               | string   | null:false,unique:true  |
| password            | string   | null:false              |
| nickname            | string   | null:false              |
| boulder_grade_id    | integer  | null:false              |
| lead_grade_id       | integer  | null:false              |
| gender_id           | integer  | null:false              |
| region_id           | integer  | null:false              |
| age_id              | integer  | null:false              |


### Association
