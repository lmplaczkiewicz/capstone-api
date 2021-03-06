The Green Dragon Tavern

Repository Links:
Front-End: https://github.com/lmplaczkiewicz/capstone-project
Back-End: https://github.com/lmplaczkiewicz/capstone-api

Website Links:
Front-End: https://lmplaczkiewicz.github.io/capstone-project/
Back-End: https://capstone-game-api.herokuapp.com/

Technologies Used: ruby on rails heroku

Install Commands: bundle install

App: This app is a proof of concept for a D&D style questing game. In the current state it allows for some variation in player class, some quests, and variable scaling of user characters as they level. It also features permanent death for player characters that reach a health value of zero during questing with a request to the server deleting that table entry for the character. The final intent of this game is to have an either open-ended D&D questing system with character progression and party recruitment or to have a semi-open questing simulation with story quests being implemented based upon renown value and level of character. Additionally, there will be the implementation of a tile map system later on that would allow for use of player_class stats outside of combat.

Unsolved Problems: I wanted to have a rewards table and some additional weapons/quests/monsters for my production demo

Development Progress: Sat - Sun I began the project by planning via ERD phases and making a wireframe. I then started setting up my main resource, characters, in the back-end and then started on the front-end. I began by doing a basic html page with several buttons to test user CRU and Character CRUD. Once all the CRUD actions were working I linked the tables and re-tested the resources. Once CRUD was re-tested and working I began pushing forward with additional tables.

Mon - Tues I started adding additional tables and setting up my character select screen and then the tavern screen. I added in additional tables to the back-end; player_class, quest, monster. Then started implementing more handlebar items to display the various table data that was recieved.

Wed - Thurs I started combat logic and the associated join table between monsters and quests and added the weapon table for both characters and monsters. I added the fight screen area and began styling.

Fri I implemented a leveling system for characters up to level 5 and added a column to the characters table. Additionally, I added a scaling system for monsters based upon character level that takes place for the stored monster so that there is some variation and the back-end doesn't have duplicate monsters in said that table.


ERD: Phase 1: https://github.com/lmplaczkiewicz/capstone-project/blob/master/planning/Phase%201%20ERD.png Phase 2: https://github.com/lmplaczkiewicz/capstone-project/blob/master/planning/Phase%202%20ERD.png Phase 3: https://github.com/lmplaczkiewicz/capstone-project/blob/master/planning/Phase%203%20ERD.png

API Endpoints:

| Verb   | URI Pattern            | Controller#Action       |
|--------|------------------------|-------------------------|
| POST   | `/sign-up`             | `users#signup`          |
| POST   | `/sign-in`             | `users#signin`          |
| PATCH  | `/change-password/:id` | `users#changepw`        |
| DELETE | `/sign-out/:id`        | `users#signout`         |
| POST   | `/characters`          | `characters#create`     |
| GET    | `/characters`          | `characters#index`      |
| GET    | `/characters/:id`      | `characters#show`       |
| PATCH  | `/characters/:id`      | `characters#update`     |
| DELETE | `/characters/:id`      |`characters#destroy`     |
| POST   | `/quests`              | `quests#create`         |
| GET    | `/quests`              | `quests#index`          |
| PATCH  | `/quests/:id`          | `quests#update`         |
| DELETE | `/quests/:id`          |`quests#destroy`         |
| POST   | `/player_classes`      | `player_classes#create` |
| GET    | `/player_classes`      | `player_classes#index`  |
| PATCH  | `/player_classes/:id`  | `player_classes#update` |
| DELETE | `/player_classes/:id`  |`player_classes#destroy` |
| POST   | `/monsters`            | `monsters#create`       |
| GET    | `/monsters`            | `monsters#index`        |
| PATCH  | `/monsters/:id`        | `monsters#update`       |
| DELETE | `/monsters/:id`        |`monsters#destroy`       |
| POST   | `/weapons`             | `weapons#create`        |
| GET    | `/weapons`             | `weapons#index`         |
| PATCH  | `/weapons/:id`         | `weapons#update`        |
| DELETE | `/weapons/:id`         |`weapons#destroy`        |
| POST   | `/quest_monsters`      | `quest_monsters#create` |
| GET    | `/quest_monsters`      | `quest_monsters#index`  |
| PATCH  | `/quest_monsters/:id`  | `quest_monsters#update` |
| DELETE | `/quest_monsters/:id`  |`quest_monsters#destro`  |
