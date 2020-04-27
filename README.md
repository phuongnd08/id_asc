# IdAsc

ActiveRecord `.first` is not predictable - it may or may not returns the
first record [based on what happened before it being called](https://github.com/rails/rails/issues/39061)

This gem add `.id_asc` scope to every ActiveRecord model. So we can get
rid of all `.first` surprise by simply use `collection.id_asc.first`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'id_asc'
```

Every ActiveRecord inherited class will now have `id_asc` method which
is equivalent to `order(id: :asc)`
