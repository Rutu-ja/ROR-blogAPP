# Blog Application README

## Introduction

Welcome to the Blog Application! This is a Ruby on Rails application that allows users to create, edit, and manage blog posts. This README file provides a detailed guide on how to set up, run, and contribute to the application.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Database Setup](#database-setup)
- [Running the Application](#running-the-application)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## Requirements

Ensure you have the following installed on your system:

- Ruby 3.0.2
- Rails 7.1.3
- SQLite3

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/blog-application.git
   cd blog-application
   ```

2. Install the required gems:
   ```sh
   bundle install
   ```

## Database Setup

1. Create and set up the database:
   ```sh
   rails db:create
   rails db:migrate
   ```

2. (Optional) Seed the database with sample data:
   ```sh
   rails db:seed
   ```

## Running the Application

Start the Rails server:
```sh
rails server
```

Open your web browser and navigate to `http://localhost:3000` to view the application.

## Testing

To run the test suite, execute the following command:
```sh
rails test
```

For system testing, the application uses Capybara and Selenium WebDriver. Ensure you have a compatible browser installed and configured.

## Contributing

We welcome contributions to the Blog Application! To contribute:

1. Fork the repository.
2. Create a new branch for your feature or bugfix:
   ```sh
   git checkout -b my-new-feature
   ```
3. Commit your changes:
   ```sh
   git commit -am 'Add some feature'
   ```
4. Push to the branch:
   ```sh
   git push origin my-new-feature
   ```
5. Create a new Pull Request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
