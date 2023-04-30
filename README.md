# Trivia Fun!
This is the back-end repo for the trivia fun game. Check out the front-end repo [here](https://github.com/ross-ian28/trivia-fe) 


## About this Project 
A basic trivia game where you can choose the difficulty level and category of your questions. You'll be asked 10 questions from the selected category and your total will be added up at the end.

## Deployment
Deployed site [here](https://trivia-ross-ian28.vercel.app/)

## SetUp for Local
1. Fork and clone the repo to your local machine with SSH: `git clone git@github.com:ross-ian28/trivia-be.git`
2. `cd` into the root of the project directory
3. Install gems and dependencies: `bundle install`
4. Create the database with: `rails db:create`
5. Run test suite: `bundle exec rspec`
6. Run your server from port 4000: `rails s -p 4000` 
7. Call the endpoint: `http://localhost:4000/api/v1/questions` to consume the api locally
8. (Make sure both front-end and back-end servers are running at the same time if you want to play the game on local)

## End Point

### Returns an array of 10 questions based on category and difficulty
```
POST /api/v1/questions

body: 
{
    "difficulty": "hard",
    "category": "13"
}
headers: Content-Type = application/json
```
```
{
    "questions": [
        {
            "question": "What is the name of Broadway's first \"long-run\" musical?",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "The Elves",
            "incorrect_answers": [
                "Wicked",
                "Hamilton",
                "The Book of Mormon"
            ]
        },
        {
            "question": "In Les Misérables, who is Prison Code 24601?",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "Jean Valjean",
            "incorrect_answers": [
                "Marius Pontmercy",
                "Javert",
                "Jean Claude Van Damme"
            ]
        },
        {
            "question": "Who wrote the lyrics for Leonard Bernstein's 1957 Brodway musical West Side Story?",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "Stephen Sondheim",
            "incorrect_answers": [
                "Himself",
                "Oscar Hammerstein",
                "Richard Rodgers"
            ]
        },
        {
            "question": "In Macbeth, the eyes of what animals were used in the Witches' cauldron?",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "Newts",
            "incorrect_answers": [
                "Humans",
                "Sharks",
                "Squids"
            ]
        }...
    ],
    "score": 0
```
