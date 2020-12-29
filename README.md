# Task manager for RubyGarage

I'm a person who passionate about my own productivity. 
I want to manage my tasks and projects more effectively. 
I need a simple tool that supports me in controlling my task-flow.

## Functional requirements

- I want to be able to create ​/ ​ update​ / ​ delete projects
- I want to be able to add tasks to my project
- I want to be able to update​ / ​ delete tasks
- I want to be able to prioritize tasks into a project
- I want to be able to choose deadline for my task
- I want to be able to mark a task as 'done'

## Technical requirements

#### 01. It should be a WEB application
#### 02. For the client side must be used: HTML, CSS (any libs as Twitter Boorstrap, Blueprint ...), JavaScript (any libs as jQuery, Prototype ...)
#### 03. For a server side any language as Ruby
#### 04. It should have a client side and server side validation

## Additional requirements
- It should work like one page WEB application and should use AJAX
  technology, load and submit data without reloading a page.
- It should have user authentication solution and a user should only
  have access to their own projects and tasks.
- It should have automated tests for the all functionality

==========================================================================================

VIDEO <https://drive.google.com/file/d/1wZISA4B92OyPcyY_Cc7MRqEmkrEflpwZ/view?usp=sharing>
------------------------------------------------------------------------------------------

### Ruby: ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]
### Rails 6.0.3.4

- bundle exec rails db:create
- bundle exec rails db:migrate
- bundle exec rails db:seed
- rails dev:cache

--------------------------------------
HEROKU <https://task-manager-turvitan.herokuapp.com>
----------------------------------------------
## email: test_user@gmail.com
## password: 123456

# SQL task

https://docs.google.com/document/d/1X244xXO4Kg5og3YKvTcug4xmwLWBJ4g7EetI16m7dwo/edit?usp=sharing
------------------------------------------------------------------------------------------------

### Given tables:

01. tasks (id, name, status, project_id)
02. projects (id, name)

### Technical requirements

- get all statuses, not repeating, alphabetically ordered
- get the count of all tasks in each project, order by tasks count
  descending
- get the count of all tasks in each project, order by projects
  names
- get the tasks for all projects having the name beginning with
  "N" letter
- get the list of all projects containing the 'a' letter in the middle of
  the name, and show the tasks count near each project. Mention that there can exist projects without tasks and tasks with
project_id = NULL
- get the list of tasks with duplicate names. Order alphabetically
- get list of tasks having several exact matches of both name and
  status, from the project 'Garage'. Order by matches count
- get the list of project names having more than 10 tasks in status
  'completed'. Order by project_id
  