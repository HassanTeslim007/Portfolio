# My Portfolio

A simple flutter application that summarizes my experience and everything about me. It features 4 sections: About me, Profile, Skills and Contact.
You could also toggle between dark and light mode and also change your language!

## The Codebase

The code base takes a combination of clean and layered architecture format. With vertical slicing to separate the features (but essentially, there's only one feature here - the portfolio!) and the core that holds the supply that other files taps from. This include utils, l10N, theming and so on.
The presentation in each feature have the views and widgets shared across the various views.

## The Design

It's a simple design inspired by [Anél Henning](https://anellehenning.artstation.com/projects/JAEXR) with circules that pop-ups when clicked. The animations accompanying the design where personal thoughts.

## Libraries
- Flutter localization and Intl : Flutter's recommended packages to handle internationalization (changing the language)
- Flutter Animated Dialog : Helps to add simple animations to the pop-up dialogs
- Google-fonts : To help change the overall font of the app (thought downloading the font would take more space)
- Percent-indicator : Used to show the percentage of skills alongside some nice animations
- Scroll-loop autoscroll : Used for autoscrolling the text on the profile screen
- Shared-preferences : For persisting the choice of language so it doesn't reset even after the app is closed and reopened

## App-link
- https://drive.google.com/file/d/1KXGmUFGln-TAmEAJ8hFSG8dyXsSNxcwn/view?usp=share_link

## Features to be added if they were more time
- A splash screen that animates and syncs with the home page.
- A little more detailed info about the bio
- A translation in other nigerian languages (DeepL only has some general languages and not all)
- More animates like in the actual design (The circle popup most especially )

## Challenges
- Translating the app requires a ruby file that has like a json value of keys (words) and values (meanings) for each language and extracting the entire string needed is a ton of work + translating them is extra work. DeepL transaltor is an online AI tools that made the transaltion a little easier
- I made a string related problem at a point which in caused my french traslation to not work at all and i had to start logging values to console fro the main function till I evetually figured out the problem. Lesson: Semantic errors are the worst kind of errors :(
- Minor challenges implementing landscape mode without overflows but is being somewhat overcomed with single child scroll view, safe area and expanded widgets

## Appetize Link
-https://appetize.io/app/7geo3jhio2vonptwsafspe6tai?debug=true&proxy=intercept&device=pixel4&osVersion=11.0&scale=75

## Github Repository
- https://github.com/HassanTeslim007/Portfolio
