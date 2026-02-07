# Gossip MVC — Test Project (THP)

Purpose
-------

This repository is a small, educational Ruby project that demonstrates the Model-View-Controller (MVC) architecture. It was created as a test project for learning web application structure and separation of concerns.

Highlights
----------

- Clear separation of responsibilities following MVC.
- Lightweight codebase suitable for learning and small demos.
- RSpec test configuration included under `spec/`.

Project structure
-----------------

Top-level layout (important files and directories):

- `app.rb` — Application entry point. Boots the router and starts request handling.
- `Gemfile` — Declares project dependencies.
- `db/gossip.csv` — Simple CSV-based persistence used by the `Gossip` model.
- `lib/app/` — Core application code (MVC components).
	- `lib/app/gossip.rb` — Model: encapsulates gossip data and persistence logic.
	- `lib/app/controller.rb` — Controller: coordinates input, model updates, and view rendering.
	- `lib/app/router.rb` — Router: maps requests (or CLI actions) to controller methods.
- `lib/views/` — View layer responsible for presentation logic.
	- `lib/views/view.rb` — View helper for rendering templates / responses.
- `spec/` — RSpec tests and test helpers.
- `README.md` — This document.

MVC methodology (how it maps in this project)
--------------------------------------------

- Model: `Gossip` (in `lib/app/gossip.rb`) holds data and handles persistence to `db/gossip.csv`.
- View: code in `lib/views/` renders output and templates; it stays free of business logic.
- Controller: `lib/app/controller.rb` implements application workflows, invokes the model, and passes results to the view.

This division keeps the code easy to reason about, testable, and maintainable: models do not depend on HTTP or presentation details, views do not alter application state, and controllers orchestrate interactions.

Getting started
---------------

Prerequisites:

- Ruby (2.5+) and Bundler installed.

Install dependencies:

```bash
bundle install
```

Run the application (development/demo):

```bash
ruby app.rb
```

Run tests:

```bash
bundle exec rspec
```

Notes and next steps
--------------------

- The project uses a CSV file for simple persistence; for production use a database would be recommended.
- If you want to expand this project, consider adding routing tests, model unit tests, and view snapshot tests.

Contributing
------------

Contributions are welcome. Open an issue to propose changes or submit a pull request with a focused change and tests where applicable.

License
-------

This repository is provided for educational purposes. Check with the project owner for license details.
