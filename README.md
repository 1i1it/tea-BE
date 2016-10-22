 
# AngularJS/Ruby Sinatra mini tea-store

Setup

- Install Ruby
- install MongoDB

- Download this project by downloading the zip file at https://github.com/1i1it/tea-BE and https://github.com/1i1it/tea-FE, extracting the contents (or git clone git@github.com:1i1it/tea-FE.git and git@github.com:1i1it/tea-BE.git)

- Install 'bundler' by typing "gem install bundler".
- Install Ruby software libraries we depend on by running bundle install.
- Run the server by running "bundle exec rackup -p {port number, e.g 9393, (optional)}"
- in another terminal, run "mongod" to run MongoDB
- In your browser, browse to http://localhost:9393/ 

- You can 'kill' the server by typing 'Ctrl-C' in the terminal, and restart it by entering "bundle exec rackup -p {port number, e.g 9393, (optional)}" again in the terminal. 
- You can populate app with seed data by running in command line "bundle exex tux", and then inside tux running "seed_data" to populate app with data and "remove_fake_teas" to delete data

App has 3 pages:
- Home page with teas sorted by price, and filters+cart notification in the header (Button "All teas" leads to this page as well)
- Filtered tea (user can search by name, category or "caffein-free")
- Page for one product (clicking on tea image leads to this page)

When adding items to cart, they are updated in the header, and saved in cookies.
