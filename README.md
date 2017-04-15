# builtsmARt
![homepage](https://cloud.githubusercontent.com/assets/22533214/25067209/41aedb10-220a-11e7-95c1-94012a1d8594.jpg)
![login](https://cloud.githubusercontent.com/assets/22533214/25067204/fd68fa6c-2209-11e7-9712-ddb4456ed0d2.png)

builtsmARt is a web and mobile app built in 1 week as a part of Dev Bootcamp's final project. The overall objective was to find a solution that would reduce consumer time and frustration in assembling furniture.

This repo describes the <strong>web version</strong> of the app, which provides a one step database for users to search and bookmark  various Ikea PDF manuals, as well as the ability to comment and rate its difficult of assembly.

To view the website live please visit the following link:
https://www.builtsmart.herokuapp.com

![browse](https://cloud.githubusercontent.com/assets/22533214/25067207/fd6a6348-2209-11e7-9b9b-cc8e739185fc.png)
![pdf](https://cloud.githubusercontent.com/assets/22533214/25067205/fd69b8d0-2209-11e7-8923-a35480380f82.png)

##Features
1. User can sign-up and login
2. Users can browse a list of Ikea manuals in PDF form
3. Users can bookmark manuals
4. Users can download manuals
5. User can rate on the difficulty of assembly
6. User can comment on the difficulty of assembly
7. Users can access the phone app from the website if they have downloaded it

##Installation
To view locally, clone the repo, install and create the database.
```
git clone https://github.com/ibuilt/BuiltSmart
cd BuiltSmart
bundle install
```

Create the database
```
be rails db:drop
be rails db:create && be rails db:migrate
be rails db:seed
```

Then,start the server
```
be rails s
```

##Authors:
* Joyce Au
* Kendy Ng
* Leila Gleich
* Sam Glickman
* Sid Ahmed
