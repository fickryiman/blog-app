<!-- TABLE OF CONTENTS -->
# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 blog-app](#-blog-app)
    - [How to build the Blog app](#how-to-build-the-blog-app)
    - [Projects list](#projects-list)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Tools i have used for this project ](#tools-i-have-used-for-this-project-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->
# 📖 blog-app<a name="about-project"></a>
> The Blog app will be a classic example of a blog website. I will create a fully functional website that will display a list of posts and empower readers to interact with them by adding comments and liking posts.

<!-- > Describe your project in 1 or 2 sentences. -->
### How to build the Blog app

The end result should follow the following data model (this is an Entity Relationship Diagram):

<p align="center">
  <img src="./public/blog_app_erd_v1_1.png" alt="Data model"  width="500px"  />
</p>

For this project I will have full freedom in terms of visual design but I will need to keep the following wireframes:

<p align="center">
  <img src="./public/blog_login.png" alt="Login page wireframe" width="350px" />
  <img src="./public/blog_root_users.png" alt="All users page wireframe"  width="350px"  />
  <img src="./public/blog_user_page.png" alt="Single user page wireframe"  width="350px"  />
</p>

<p align="center">
  <img src="./public/blog_user_all_posts.png" alt="All posts by a given user page wireframe"  width="350px"  />
  <img src="./public/blog_single_post.png" alt="Single post page wireframe"  width="350px"  />
</p>

I will practice my knowledge about basic Ruby on Rails concepts - starting from the Views and finishing the database connection. I will also implement ideas like authentication, authorization, and all kinds of tests. In the last step, I will create an API instead of API consumption.

### Projects list
I will be building the Blog app for three weeks. Here is the list of projects that will guide me through the steps described above. Please find details about each of the milestone requirements in the upcoming project activities.

- Project 1: Creating a data model.
  - Create a new rails app. (rails new app-name --database=postgresql)
  - add database credentials at config\database.yml
  - run `rails db:create`
  - Build project schema.
    - Create the necessary migration files.
      - `rails generate migration CreateUsers name:string photo:string bio:text posts_counter:integer`
      - `rails generate migration CreatePosts title:string text:text comments_counter:integer likes_counter:integer`
      - `rails generate migration CreateComments text:text`
      - `rails generate migration CreateLikes`
    - Run the necessary migration files.
      - `rails db:migrate`
    - Table and column names should match the ERD diagram.
      - note: photo for users table should be a link to an image
    - Foreign keys should be included.
      - Pay attention that in `posts` table the column holding the foreign key to the `users` table should be named `author_id`
    - All columns that are foreign keys should have a corresponding index.
  - Be sure to reference the from the ERD.
    <p align="center">
      <img src="./public/blog_app_erd_v1_1.png" alt="Data model" width="500px" />
    </p>

- Project 2: Processing data in models & Validations and Model specs
  - Processing data in models
    - User model
      - a method that returns the 3 most recent posts for a given user.
      - a method that updates the posts counter for a user.
    - Post model
      - a method which returns the 5 most recent comments for a given post.
      - a method that updates the comments counter for a post.
      - a method that updates the likes counter for a post.
  - Validations and Model specs
    - Use validations for models.
    - Write unit tests for models.
    - Add the following validations:
      - For the User model:
        - Name must not be blank.
        - PostsCounter must be an integer greater than or equal to zero.
      - For the Post model:
        - Title must not be blank.
        - Title must not exceed 250 characters.
        - CommentsCounter must be an integer greater than or equal to zero.
        - LikesCounter must be an integer greater than or equal to zero.
    - Add unit specs for all of models' methods and validations.

- Project 3: Controllers.
  - Use controllers to handle requests and render empty views.
  - Implements Rails naming conventions.
  - Use params from browser requests in a safe way.
  - create all controllers and views, won't be processing any data yet, will add simple placeholders for the views with plain HTML.
  - NOT use rails generate scaffold command. The point of this project is to show how to set up controllers by ourself.
  - the app handles the URLs used in the wireframes:
    <p align="center">
      <img src="./public/blog_root_users.png" alt="All users page wireframe"  width="200px"  />
      <img src="./public/blog_user_page.png" alt="Single user page wireframe"  width="200px"  />
      <img src="./public/blog_user_all_posts.png" alt="All posts by a given user page wireframe"  width="200px"  />
      <img src="./public/blog_single_post.png" alt="Single post page wireframe"  width="200px"  />
    </p>
  - For each URL created:
    - A route.
    - An action in the correct controller.
    - A view file.
  -  View files should include only placeholders written in plain HTML, e.g:
    - Here is a list of posts for a given user
  - Make sure that the added code to handle **only** the 4 required URLs.
    ###### Ensure that when run the `rails routes` command in the console, we can see the following output:
    ![Single Post page wireframe](./public/routes.png)

- Project 4: Controllers specs.
- Project 5: Views.
- Project 6: Forms.
- Project 7: Integration specs for Views and fixing n+1 problems.
- Project 8: Add Devise.
- Project 9: Add authorization rules.
- Project 10: Add API endpoints.
- Exercise: API documentation.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<!-- > Describe the tech stack and include only the relevant sections that apply to your project. -->
<details>
  <summary>Client Side / Front-End</summary>
  <ul>
    <li><a href="https://www.w3.org/html/">HTML</a></li>
    <li><a href="https://www.w3.org/Style/CSS/">CSS</a></li>
    <li><a href="https://www.javascript.com/">Javascript</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>

<details>
  <summary>Server Side / Back-End</summary>
  <ul>
    <li><a href="https://www.json.org/json-en.html">JSON</a></li>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<details>
    <summary>Package, Library, Framework</summary>
      <ul>
        <li><a href="https://jestjs.io/">Jest</a></li>
        <li><a href="https://axios-http.com/docs/intro">axios</a></li>
        <li><a href="https://redux-toolkit.js.org/">Reduxjs Toolkit</a></li>
      </ul>
  </details>

<!-- Features -->
### Tools i have used for this project <a name="tools"></a>
  <details>
    <summary>Code Convention, Code Analysis</summary>
      <ul>
        <li><a href="https://docs.rubocop.org/en/stable/">Rubocop</a></li>
        <li><a href="https://rubystyle.guide/">Ruby style guide</a></li>
        <li><a href="https://webhint.io/">Webhint</a></li>
        <li><a href="https://stylelint.io/">Stylelint</a></li>
        <li><a href="https://chrome.google.com/webstore/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk?hl=en">Lighthouse</a></li>
      </ul>
  </details>
  <details>
    <summary>Version Control, CI/CD, Hosting Service</summary>
      <ul>
        <li><a href="https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow">GitFlow</a></li>
        <li><a href="https://pages.github.com/">Github Pages</a></li>
        <li><a href="https://github.com/features/actions">Github Actions</a></li>
        <li><a href="https://git-scm.com/">Git</a></li>
        <li><a href="https://vercel.com/">Vercel</a></li>
      </ul>
  </details>
  <details>
    <summary>IDE, Desktop Apps, Other Tools</summary>
      <ul>
        <li><a href="https://code.visualstudio.com/">Visual Studio Code</a></li>
        <li><a href="https://desktop.github.com/">Github Desktop</a></li>
        <!-- <li><a href="https://www.figma.com/">Figma</a></li> -->
      </ul>
  </details>

### Key Features <a name="key-features"></a>

- implement authentication
- implement authorization
- create an API

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->
## 🚀 Live Demo <a name=""></a>

<!-- > Add a link to your deployed project. -->
- Click the following url for [... Live Demo ...]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## 💻 Getting Started <a name="getting-started"></a>

<!-- > Describe how a new developer could make use of your project. -->
To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:
- Operating System (Windows, Linux, Unix)
- Ruby version >= 7.0.0 installed
- Rails Gem installed
- PostgreSQL installed
- git version >= 2.38.x
- IDE (visual studio code, etc)
- browser (chrome, firefox, edge, safari)
- install the dependencies
  
### Setup

Clone this repository to your desired folder:

```sh
  cd blog-app
  git git@github.com:fickryiman/blog-app.git
```


### Install

Install this project with:

```sh
  cd blog-app
  bundle install
```

### Usage

To run the project, execute the following command:

```sh
  rails server
  rails s
```
Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.


### Run tests

To run tests, run the following command:

Run models validation test 
```
  rspec
```

Run models methods unit test
```
  rails test
```
Run Github Actions Test
```sh
  rubocop

  npx stylelint "**/*.{css,scss}"

  auto fix linter with --fix or -A 
  rubocop -A
  npx stylelint "**/*.{css,scss}" --fix
```

### Deployment

You can deploy this project using:
GitHub Pages
Example:
```sh
  git@github.com:fickryiman/blog-app.git
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->
## 👥 Authors <a name="authors"></a>

<!-- > Mention all of the collaborators of this project. -->

👤 **Fickry Bil Iman**

- GitHub: [@fickryiman](https://github.com/fickryiman)
- Facebook: [@fickry.bil.iman](https://www.facebook.com/fickry.bil.iman)
- LinkedIn: [fickry-bil-iman](https://www.linkedin.com/in/fickry-bil-iman)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->
## 🔭 Future Features <a name="future-features"></a>

<!-- > Describe 1 - 3 features you will add to the project. -->
- add login to user with social media auth or google auth

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [https://github.com/fickryiman/blog-app/issues](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->
## ⭐️ Show your support <a name="support"></a>

<!-- > Write a message to encourage readers to support your project -->

If you like this project please follow me on my GitHub: [@fickryiman](https://github.com/fickryiman) or connect on my LinkedIn: [@fickry-bil-iman](https://www.linkedin.com/in/fickry-bil-iman).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->
## 🙏 Acknowledgments <a name="acknowledgements"></a>

<!-- > Give credit to everyone who inspired your codebase. -->
Credits and Thanks to:
- Allah for the everythings, Alhamdulillah.
- My Families for all of the supports.
- Microverse for all of the experiences, lessons, projects.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

<!-- ## ❓ FAQ (OPTIONAL) <a name="faq"></a>

<!-- > Add at least 2 questions new developers would ask when they decide to use your project. -->

<!-- - **[Question_1]** -->

  <!-- - [Answer_1] -->

<!-- - **[Question_2]** -->

  <!-- - [Answer_2] -->

<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- LICENSE -->
## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<!-- Creative Commons License - Start -->
<!-- Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg -->
<!-- Creative Commons License - End -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>
