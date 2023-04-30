 ユーザ (user) 

|カラム名|データ型|
|---|---|
|id|integereger|
|name|string|
|email|string|
|password_digest|string|
|created_at|timestamp|
|updated_at|timestamp|

タスク (task) 

|カラム名|データ型|
|---|---|
|id|integer|
|user_id|integer|
|title|string|
|content|text|
|deadline|date|
|priority|string|
|status|string|
|created_at|timestamp|
|updated_at|timestamp|

ラベル (label)

|カラム名|データ型|
|---|---|
|id|integer|
|content|string|
|created_at|timestamp|
|updated_at|timestamp|

### タスクラベル (task_labe)

|カラム名|データ型|
|---|---|
|id|integer|
|task_id|integer|
|label_id|integer|
|created_at|timestamp|
|updated_at|timestamp|