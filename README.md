# Rails-Bootstrap-Admin-Starter Boilerplate

This is a startup rails 6 application/boilerplate where you can find an integrated free bootstrap admin theme(SB-Admin-2). This is a very simple and basic theme but quite useful and attractive. This starter app consists of few important gems like devise, letter_opener, pg. You don't have to write everything from scratch, you can simply clone this app and start building your main features on it. 

This starter app will definitely save your time from setting up an admin theme from scratch and will be very useful in apps where you will be required to manage backend(admin) things. However this is just an example and freely available theme has been integrated, but this will give you an idea of how you can integrate other Bootstrap admin themes with Rails 6 and webpacker apps. 

You will find following items in this startup rails application:

* Bootstrap 4.3, JQuery, Popper.js integrated using webpacker
* Font Awesome 5 integrated using webpacker
* Devise implemented with customised bootstrap forms for sessions, registrations and passwords
* Letter opener implemented to test out the emails at locals
* Bootstrap [Start Bootstrap - SB Admin 2](https://startbootstrap.com/theme/sb-admin-2/) Theme integrated for admin interface to manage backend, you can implement further features as per your need to save your time in integrating a basic admin theme

## Development Setup

Prerequisites:

- PostgreSQL
- Bundler
- Node(>= 11.x)
- Yarn
- Ruby(2.7.2)
- Rails(>=6)

```sh
bundle install
yarn install
```
Now you need to setup the database. And you need to run following commands but before running them you need to change the values of username and password of your pg inside 
```sh
config/database.yml
```
Once changed, run following commands:

```sh
rails db:create
rails data:migrate
rails db:seed
```

Now you are all set. Run following command on your terminal:

```sh
rails server 
```
To render css and js assets faster open another tab and run following command:

```sh
./bin/webpack-dev-server
```

open browser at: [http://localhost:3000](http://localhost:3000).

To check admin interface use these credentials(make sure you have run *rails db:seed* command):
```sh
email: admin@example.com
password: password
```
To check guest user interface use following credentials:
```sh
email: guest@example.com
password: password
```

## Update background images on auth pages

For now as starter app I have used the default images provided by SB-Admin-2 Bootstrap theme. However if you want to change those background images on sign-in, register, forget password and change password pages this then you must make your changes at this file:

```sh
app/javascript/css/plugins/scss/_variables.scss
```
and you need to change the following variables:

```scss
$login-image
$register-image
$password-image
```

Cheers!!

For more helpful and time saving work samples visit us at: [https://ai-academy.herokuapp.com](https://ai-academy.herokuapp.com/).
