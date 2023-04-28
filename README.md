# Trivia Fun!
This is the back-end repo for the trivia fun game. Check out the front-end repo [here](https://github.com/ross-ian28/trivia-fe) 


## About this Project 
A basic trivia game where you can choose the difficulty level and category of your questions. You'll be asked 10 questions from the selected category and your total will be added up at the end.


## SetUp for Local
1. Fork this Repo
2. Clone it down to your machine
3. `cd` into the root of the project directory
4. Run `bundle install` to install dependencies 
5. Run `rails db:create` to create the database 
6. Run `rails s -p 4000` to run your server from port 4000
7. (Make sure both front-end and back-end servers are running at the same time)


## Deployment
Project deployment coming soon...

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
        },
        {
            "question": "Who serves as the speaker of the prologue in Shakespeare's Romeo and Juliet?",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "Chorus",
            "incorrect_answers": [
                "Montague",
                "Refrain",
                "Capulet"
            ]
        },
        {
            "question": "After England, more Shakespeare plays are set in this present day country than in any other.",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "Italy",
            "incorrect_answers": [
                "United States",
                "Greece",
                "France"
            ]
        },
        {
            "question": "Who played \"Charlie Price\" in the musical \"Kinky Boots\" on Broadway in New York from May 26th - Aug 6th 2017?",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "Brendon Urie",
            "incorrect_answers": [
                "Ed Sheeren",
                "Tom Cruise",
                "Dallon Weekes"
            ]
        },
        {
            "question": "Which Shakespeare play features the stage direction \"Enter a messenger, with two heads and a hand\"?",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "Titus Andronicus",
            "incorrect_answers": [
                "Othello",
                "Macbeth",
                "King Lear"
            ]
        },
        {
            "question": "Which of these plays was famously first performed posthumously after the playwright committed suicide?",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "4.48 Psychosis",
            "incorrect_answers": [
                "Hamilton",
                "Much Ado About Nothing",
                "The Birthday Party"
            ]
        },
        {
            "question": "The protagonist's names in 'Who's Afraid of Virginia Woolf', George and Martha, were derived from George Washington and his wife.",
            "category": "Entertainment: Musicals & Theatres",
            "difficulty": "hard",
            "correct_answer": "True",
            "incorrect_answers": [
                "False"
            ]
        }
    ],
    "score": 0
```
