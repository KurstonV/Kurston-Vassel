DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employees_id serial PRIMARY KEY,
    name text NOT NULL,
    job text NOT NULL,
    salary integer NOT NULL
);

INSERT INTO employees (name, job, salary)
VALUES ('Joe', 'clerk', 4000),
       ('Josh', 'accountant', 6000),
       ('Anna', 'clerk', 4000),
       ('Zac', 'accountant', 6000),
       ('Kay', 'manager', 12000);