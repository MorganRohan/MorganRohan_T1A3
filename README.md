# README DOCUMENTATION
## Link to GitHub repository
A link to the GitHub repository can be found below:
https://github.com/MorganRohan/MorganRohan_T1A3

Download instructions and requirements can be found at the end of this document.

This is a terminal app built with the Ruby programming language, and as such will conform to the Ruby style. A link to a style guide for the language can be found below:
https://ruby-style-guide.shopify.dev/ 

# App Documentation
## App Overview
The BookShelf app is designed to be an interactive book review and recommendation platform, so that the user can record their own reviews of books they've read, access the reviews again, create a reading list and get recommendations. Reviews are able to be accessed once completed, as well as being stored in a file that can be easily read and utilised outside of the app. There is also a reading list function, allowing the user to add book titles to a file for reference later on. A quiz can be taken to get a book recommendation, based on the answers to a series of questions. 

## Scope
The scope of the application is in three parts, as follows:

1. The review section, which allows the user to input their own review of a book and have that stored against the title to be accessed again or printed at a later date. The file that the reviews are stored in ccan be accessed externally from the app and is a .txt file, so that it can further be used. 
- User inputs book title
- User can give a star rating out of 5
- User can write a review 
- User has most recent review printed back to the screen for them
- User can access all stored reviews and have them:
 a) printed back on the screen
 b) all deleted

2. The reading list section, which will give the user the option to add titles, along with the author information, to a list. This list can be printed back to the user, and is store in a file that can also be accessed outside of the app, in the same way the reviews .txt file can.
- User inputs book title
- User inputs book author
- User has most recent entry printed back to the screen for them
- User can access all stored entries and have them:
 a) printed back on the screen
 b) all deleted

3. The recommendation section, which will be in the form of a quiz that the user can take to give a recommendation based on their interests. 
- User will be asked a series of multiple choice questions and will give their answer for each one
- These answers will be converted to points, with points being allocated towards each recommendation. The one with the most points will be printed as the recommendation
- User will be prompt to directly add a new entry to the reading list
- User will be taken to the reading list function and have full reading list functionality from there

## Target Audience
The target audience will be book lovers who like to like to review books they've read and get recommendations for new ones to read as well. It can be a way to keep track of what's been read and whether that was enjoyed. It would also appeal to a newer reader who is also after recommendations, or those that don't read much but struggle to keep track of what they have already read or want to read.  

##Example User Interaction
Our example user, Michelle (she/her), will follow the instructions to download and run the app. Once run, Michelle will be greeted with a welcome message and taken to the main menu of the app. From here she can choose to write a review, add to their reading list, take the recommendation quiz or exit the app again. Michelle has opened the app today because she wants to write a review about her most recent read, Lolita. She chooses New Review from the main menu and is prompted to enter a new review. She inputs the title, rating and review information and has the final review printed on the screen for her. She then chooses to view all her stored reviews to see how it compares to other books she's read. Seeing that she has a number of mediocre reviews, she decides to go back to the main menu and take the quiz for a recommendation. After answering each question, she's given a whole list of titles and chooses to add one straight to her reading list, so that later in the day, when she's at the bookshop, she can open the list again and see the title. Satisfied with her experience, she chooses to exit the app. 

# List of Features Included
## Book Reviews
Having chosen New Review from the main menu, the user will be prompted to create a new review. They will have the opportunity to input the book title, select a star rating to give to the book and then add any additional comments or review. This review will be formatted and printed to the screen. The user then has the option to create another review, print all existing reviews, delete all existing reviews or exit to the main menu. It will be implemented using a class called Review, which initializes variables for user input and contains the format for the final review to be printed in. 


## Reading List
Having chosen Reading List from the main menu, the user will be prompted to create a new list entry. They will have the opportunity to input the book title, along with the book author. This entry will be formatted and printed to the screen. The user then has the option to create another entry, view all existing entries, delete all existing entries or exit to the main menu. It will be implemented using a class called List and will initialize variables for user input and contains the format for the list entries. 


## Recommendation Quiz
Having chosen Recommendation Quiz from the main menu, the user will start the quiz. They will be prompted to answer a series of questions, inputting their preference for each one. Based on their overall score, a recommended genre and list of titles will be printed to the screen. The user then has the option to create a new list entry or exit to main menu. It will be implemented using a class called Quiz and will initialize variables for user input, store the quiz questions along with their recommendations and the method to run the quiz. 

# User Experience

The section below contains screenshots from the final version of the application, included to show what the user might see whilst interacting with the app. 

## Welcome Page
![Welcome page image](docs/welcome_message.png)
## Review Page
![Review page image](docs/review_entry.png)
## Reading List Page
![Reading list page image](docs/list_entry.png)
## Recommendation Quiz Page
![Recommendation page welcome image](docs/rec_quiz_heading.png)
![Recommendation quiz page image](docs/rec_quiz_outcome.png)

# Implementation Plan
## Control Flow Diagram
Control flow diagram, showing flow of user experience in app, along with the various loops and redirections that need to occur.
![Control Flow Diagram](docs/control_flow_diagram.jpeg)
## Overall App
For the implementation of this project, a Trello board was utiilised heavily to plan, keep track of and execute all the required elements. A link to this board can be found below:
https://trello.com/b/JWDhK0j2/terminal-app

Further details about the board, along with specific screenshots will now be provided. 

Upon release of the project and knowing the requirements, an initial Trello board was established with the first iteration of the app. This was established on April 12th and had a slightly different set of features for the app. The image below shows this board, with the initial framework laid out to satisfy the elements for each feature, but without the full implementation details added as yet. The second image shows that by April 15th, further detail was added, including tags for the importance of elements and the due dates for each section. 
![April 12 Trello Board](docs/trello_board_april12.png)
![April 15 Trello Board](docs/trello_board_april15.png)
This image from April 17th shows the final version of the app, with the modified features (and corresponding classes). At this point it was decided to pivot to add the reading list functionality as its own feature and push the previous reviews feature into the reviews class. A fourth feature can also be seen, however, this was ultimately eliminated from the plan on April 20th in order due to time pressures. The decision was made to instead focus on the three main features - reviews, reading list and recommendations - and work on providing a high level of functionality for these instead of risking an overall drop in quality for an extra feature.
![April 17 Trello Board](docs/trello_board_april17.png)

The final Trello board, along with all completed elements can be seen below:
![Completed Trello Board](docs/completed_Trello.png)

# Help Documentation
## Installation Directions
In order to run this app on your laptop, you will need to have Ruby installed on your computer. A thorough guide on how to install Ruby can be found at this link: https://www.ruby-lang.org/en/downloads/ 
It covers how to install Ruby on a range of operating systems.

Following this, a cloned version of the GitHub repository at the beginning of this document will also need to be downloaded. Here is another copy of that link:
https://github.com/MorganRohan/MorganRohan_T1A3 

Another requirement for the app to be run correctly, is the installation of a number of Ruby Gems. This will be done in a single step through the use of in built commands in a bash script file. 

## Running BookShelf App
The BookShelf application runs through the command line and can be executed in a single step using a bash script file. After installing Ruby and cloning the repository, follow these steps:
1. Open your terminal
2. Change directories to the directory where the repository was downloaded:
cd MorganRohan_T1A3
3. Change directories to the source directory:
cd src
4. Once in the source directory, please run the following command to execute the program:
./run_app.sh
5. Optional app experience: if you have downloaded and run the app as above, the next time you go to run the app, instead of running it from the bash script file, you can use the command below to run the app with your own name for a more personalised experience:
ruby bookapp.rb Yournamehere