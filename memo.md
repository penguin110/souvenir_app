
User model
rails g model User name:string handle_name:string email:string password_digest:string

Souvenir model
rails g model Souvenir ID:integer name:string prefectures:string comment:text image_name:string user_id:string

Action model
rails g model Action ID:integer comment:text user_id:integer souvenir_id:integer good:integer

controller
ユーザー
User index new create show(update,delete)
rails g controller users index new show 

ログイン
rails g controller Sessions new

お土産
rails g controller souvenirs index new show

