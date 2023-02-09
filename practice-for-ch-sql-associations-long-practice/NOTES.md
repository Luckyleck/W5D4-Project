# Start
```ruby
bundle install
rails db:create
rails db:migrate
rails db:seed
bundle exec annotate --models
```


```ruby
has_many #primary key is the current class
belongs_to #primary key is the other class
```