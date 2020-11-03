# Coding Exercise


## Weather

Run manually from console:

```
irb -r ./weather.rb
```


```ruby
weather = Weather.new('w_data.dat')
weather.day_with_lowest_spread
```

Should return:
```
=> #<CSV::Row "name":"14" "spread":2>
```

Run test:

```
ruby ./weather_test.rb 
```

## Soccer

Run manually from console:

```
irb -r ./soccer.rb
```


```ruby
soccer = Soccer.new('soccer.dat')
soccer.team_with_lowest_score_difference
```

Should return:
```
=> #<CSV::Row "name":"Aston_Villa" "spread":1>
```

Run test:

```
ruby ./soccer_test.rb 
```

author: Sergio Bayona
