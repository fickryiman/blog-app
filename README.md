
<h1>blog-app</h1>

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

- [Project 1: Creating a data model.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/creating_data_model_project_v1_2.md)
- [Project 2: Validations and Model specs.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/Processing_data_model_project_v1_1.md)
- [Project 3: Processing data in models.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/blog_app_validations_model_spec.md)
- [Project 4: Controllers.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/Setup_Controllers_project_v1_1.md)
- [Project 5: Controllers specs.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/controller_specs_project.md)
- [Project 6: Views.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/Views_project.md)
- [Project 7: Forms.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/forms_project_v1_1.md)
- [Project 8: Integration specs for Views and fixing n+1 problems.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/intergration_spec_and_n_1_project.md)
- [Project 9: Add Devise.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/blog_app_devise.md)
- [Project 10: Add authorization rules.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/blog_app_add_authorization.md)
- [Project 11: Add API endpoints.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/blog_app_api_endpoints.md)
- [Exercise: API documentation.](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/blog_app_api_documentation.md)

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
        <li><a href="https://eslint.org/">ESLint</a></li>
        <li><a href="https://webhint.io/">Webhint</a></li>
        <li><a href="https://stylelint.io/">Stylelint</a></li>
        <li><a href="https://chrome.google.com/webstore/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk?hl=en">Lighthouse</a></li>
        <li><a href="https://www.npmjs.com/package/npm-check">node_modules checker</a></li>
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

- display a list of games 
- display a air quality and weather informations based on selected game
- single page apps (SPA)

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
- git version 2.38.x
- node.js version > 12.x
- IDE (visual studio code, etc)
- browser (chrome, firefox, edge, safari)
- install the dependencies

### Setup

Clone this repository to your desired folder:

```sh
  cd free-pc-games-rep
  git git@github.com:fickryiman/Free-PC-Games-Rep.git
```


### Install

Install this project with:

```sh
  cd free-pc-games-rep
  npm install
```

### Usage

To run the project, execute the following command:

```sh
  npm run build (production environment)
  npm start (development environment)
```
Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.


### Run tests

To run tests, run the following command:
Run Github Actions Test
```sh
  npm test

  npx stylelint "**/*.{css,scss}"
  npx eslint "**/*.{js,jsx}"

  auto fix linter with --fix
  npx stylelint "**/*.{css,scss}" --fix
  npx eslint "**/*.{js,jsx}" --fix
```

### Deployment

You can deploy this project using:
GitHub Pages
Example:
```sh
git@github.com:fickryiman/Free-PC-Games-Rep.git
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
- add games library for each user
- add likes, dislike counters

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [https://github.com/fickryiman/Free-PC-Games-Rep/issues](../../issues/).

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
- ![Nelson Sakwa](https://www.behance.net/sakwadesignstudio/) for the website template design that inspired.
- ![FreeToGame](https://www.freetogame.com/) for the games data and other important informations.
- ![Flaticon](https://www.flaticon.com/) for the icons.


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

This project is [Creative Commons 1.0 Universal License](./LICENSE) licensed.

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
