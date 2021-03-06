# RecoSuave
### Introduction
This a simple, user-friendly application that generates similar recommendations for a specified movie, band, tv show, author or board game. Enter the name of your favorite musical artist for example, and receive a quick and streamlined list of recommendations pertaining to this artist complete with a youtube clip and a link to the artist's wikipedia page. Visit the app live at [https://reco-suave.herokuapp.com/](https://reco-suave.herokuapp.com/).

<img width="960" alt="screen shot 2018-11-06 at 9 41 17 pm" src="https://user-images.githubusercontent.com/33355897/48112159-80068600-e212-11e8-9a9d-9f13b7baeac5.png">

### Setup
To run this application locally;
* ```$ git clone git@github.com:brickstar/reco-suave.git```
* ```$ bundle install```
* ```$ figaro install``` to create an application.yml file in the root directory of the project. 
* visit the api access page for the [Taste Dive API](https://tastedive.com/account/api_access) to sign up for an access key.
* store the access key in the application.yml file you just created by setting it to TASTE_DIVE_KEY.
* ```$ rails s```
* visit ```localhost:3000/``` 
* enter your favorite author, tv show, movie, game or band to see some similar recommendations!
### Tests
Testing for this application can be run with ```$ rspec```
### How to Contribute
If you would like to contribute to this application - feel free to open a pull request. Please do your best to be a nice person when doing so! Agile board can be found [here](https://www.pivotaltracker.com/n/projects/2223003).
### Tech Stack
This app was built with ```Rails 5.2.1``` and ```Ruby 2.4.1```

