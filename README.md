# Todo List (example app) – Frontend SPA

*Frontend Single Page App for the Todo List example app.*

> 👋 Welcome! This example app is part of [this article in the docs for KintoHub][doc] to show how you can build cloud native apps in seconds. Head over there to read the guided steps to use this project.

## Project structure

This example app is based on the [TodoMVC example app] from [Redux].

The implementation uses [React] with [Redux].
Backend synchronization with the [axios] library has been added.
The backend API project can be found at https://github.com/kintohub/todolist-api-example.

## Configuration

The only thing you must specify is the environment variable that holds the base URL to the backend API.

### Environment variables
1. `REACT_APP_API_BASE_URL` **(required)**  – Base URL to the backend API, e.g. `https://localhost:8000/`
2. `REACT_APP_AUTH_TOKEN` (optional) – Value of the bearer token that is passed in the `Authorization` header with API calls.

---

> 🚀 **Deploying on KintoHub**  
>
> Thank you for checking out this example app. KintoHub makes it super easy to build, deploy, manage and operate your cloud native apps, like this one.
>
> Find out more at www.kintohub.com.

  [doc]: https://docs.kintohub.com
  [TodoMVC example app]: https://github.com/reduxjs/redux/tree/master/examples/todomvc
  [Redux]: https://github.com/reduxjs/redux
  [axios]: https://github.com/axios/axios