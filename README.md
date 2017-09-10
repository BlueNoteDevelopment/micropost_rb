# README

# Ruby on Rails Tutorial Micropost application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

#Notes
Bcrypt-ruby does not have the correct .so file for this version of ruby
flow instructions at https://stackoverflow.com/questions/29293321/ruby-on-windows-causes-error-cannot-load-such-file-bcrypt-ext/33593911#33593911

copy bcrypt_ext.so to C:\RailsInstaller\Ruby2.3.0\lib\ruby\gems\2.3.0\gems\bcrypt-3.1.11-x86-mingw32\lib

## License

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
