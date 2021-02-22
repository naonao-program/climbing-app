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
- has_many :information
- has_many :comments

## informationテーブル
| Column              | Type           | Options                 |
| ------------------- | --------       | ----------------------- |
| region_id           | integer        | null:false              |
| rock_quality_id     | integer        |                         |
| address             | string         |                         |
| season1_id          | integer        |                         |
| season2_id          | integer        |                         |
| grade_image_id      | integer        | null:false              |
| people_day_id       | integer        |                         |
| people_time_id      | integer        |                         |
| shop_vibe_id        | integer        |                         |
| people_vibe_id      | integer        |                         |
<!-- | image          | Active Storage |                         | -->

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
| Column              | Type           | Options                 |
| ------------------- | --------       | ----------------------- |
| user_id             | integer        |                         |
| information_id      | integer        |                         |
| text                | text           | null:false              |

### Association
- belongs_to :user
- belongs_to :information