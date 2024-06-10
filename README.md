# About

This is a minimal Ruby on Rails application with a SQLite database. Alongside is a small SvelteKit application placed in the `svelte-game-engine` folder. 

## Instructions

* Install and run the app
* Navigate to `http://localhost:3000/` and read the assigment text
 

## Prerequisites
* `ruby 3.2.2`
* `node 18` or higher


## Setup

Install javascript dependencies
```sh
yarn install:all
```

Install ruby dependencies
```sh
bin/bundle
```

Setup database
```sh
bin/rails db:create db:migrate
```

Seed database
```sh
bin/rails db:seed
```

### Run
Run the application using foreman
```sh
./bin/dev
```

Or, run separately

```sh
bin/rails server -p 3000
```

Run TailwindCSS
```sh
bin/rails tailwindcss:watch
```

Run game 
```sh
yarn --cwd ./svelte-game-engine dev
```

### Tips 
Inspect the database using the Rails console(`/bin/rails c`), you can list and interact with models using the interactive ruby shell. 

#### Examples

List all Quizzes
```ruby
Quiz.all
```

Find one Quiz by id
```ruby
Quiz.find(1)
```

Revelant resources
* https://guides.rubyonrails.org/active_record_basics.html
* https://guides.rubyonrails.org/command_line.html

```ruby
irb(main):001> Quiz.all
  Quiz Load (0.3ms)  SELECT "quizzes".* FROM "quizzes" /* loading for pp */ LIMIT ?  [["LIMIT", 11]]
=>
[#<Quiz:0x00000001059408d0
  id: 18,
  created_at: Fri, 07 Jun 2024 08:11:57.301249000 UTC +00:00,
  updated_at: Fri, 07 Jun 2024 08:11:57.301249000 UTC +00:00,
  title: "Coffee Quiz",
  description: "This quiz is about coffee",
  high_score: nil,
  high_score_user: nil,
  image: "/images/coffee-quiz.png">]
irb(main):002>
```


### Useful resources
* https://guides.rubyonrails.org/getting_started.html

