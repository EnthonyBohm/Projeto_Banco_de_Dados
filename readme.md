# RPD System Interface
A basic graphical interface inspired by Resident Evil 2 Raccoon City Police Departament (R.P.D) Database.

# About
This project was developed for the Database Principles class as a practical application of database design concepts. It includes:
- The design of a relational database from scratch
- Implementation using PostgreSQL
- Integration with python for a graphical user interface

The Resident Evil theme was used to make the learning process more intuitive and engaging.
The database used in this interface consists on simple queries that retrieve complete datasets. More advanced queries are avaible at `consultas.txt`, which can be directly tested in pgAdmin 4.

# Dependencies
- `tkinter` was used for creating the Graphical Interface
- `PIL` was used for Image Manipulation
- `time` was used for the loading effect
- `pyodbc` was responsible for stabilishing the Connection with the Database

# How to use
- After `pip install` all necessary dependencies run `python3 RPDSystemInterface.py`
- Fill in any data for user and password (The login process is simulated).
- You may querry for all civilians and all police officers from the Dept.

# Notes
This project was developed for educational purposes and focuses on demonstrating basic database integration and GUI development in Python