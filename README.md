# Expense Tracker

Expense tracker is a mobile web application where you can manage your budget: you have a list of purchases associated with a category, so that you can see how much money you spent and on what.


## Built With

- Ruby
- Ruby on Rails
- Terminal
- IRB
- Rubocop (linters)
- Devise
- RSpec and Capybara Testing Library
- Bullet gem - to look out for N+1 queries
- PostgreSQL


## Getting Started

To get a local copy up and running follow these simple example steps.


## Pre-requisites
Make sure you have Ruby and Rails installed on your computer. If not, you can follow this [tutorial](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project) to install them.

If you don't have PostgreSQL installed, you can follow this [tutorial](https://www.postgresql.org/download/) to install it.

If you don't have yarn installed, you can follow this [tutorial](https://classic.yarnpkg.com/en/docs/install/#debian-stable) to install it.
  
## Usage
In your terminal, navigate to your current directory and run this code

`git clone https://github.com/wuletawwonte/expense-tracker.git`

Then run:

`cd expense-tracker`

Open the project in your favorite code editor. `code .` for VS Code.

  - Use the command `bundle install` or just simply `bundle` to install all project dependencies.
  - Run `yarn install` to install all the JavaScript dependencies.
  - Run `yarn build:css` to build the CSS files.
  - Run `rails db:create db:migrate` to create the database and run migrations.
  - You might need to supply a username and password for your PostgreSQL database if you run into an error with the previous step.
  - Simply navigate to `config/database.yml` and add your username and password to the `username` and `password` fields.
  - Type in the terminal `rails s` to start the server then click on `http://127.0.0.1:3000`
  - Enjoy your Expense Tracker App!
  
  Have fun seeing how much money you spent and on your everyday items!

## Run Linters:

### To run rubocop we use:

`rubocop`

### To autocorrect offenses with rubocop we use:

`rubocop --auto-correct-all` or
`rubocop -A`

### Run linter for styling

`npx stylelint "**/*.{css,scss}"`

### To autocorrect offenses with stylelint we use

`npx stylelint "**/*.{css,scss}" --fix`


## Testing

   Within the projects working directory run test using the following command:
  `rspec` in the terminal


## Author

👤 **Wuletaw Wonte**

- GitHub: [@githubhandle](https://github.com/wuletawwonte)
- Twitter: [@twitterhandle](https://twitter.com/wuletaww)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/wuletaw-wonte/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/wuletawwonte/expense-tracker/issues).


## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

- Hat tip to anyone whose code was used
- Original design idea by [Gregoire Vella](https://www.behance.net/gregoirevella) on Behance


## 📝 License

This project is [MIT](./MIT.md) licensed.
