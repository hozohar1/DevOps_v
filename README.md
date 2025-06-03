# DevOps
Home assignment for DevOps Engineer

<div dir="rtl">

This assignment sets up a Docker-based solution with two containers managed via Docker Compose:

**1.Nginx Container:**

Listens on two ports:

*Port 8080: Returns a custom HTML page with a success message.

*Port 8081: Returns an HTTP 404 error to simulate a failed response.

**2.Testing Container:**

Runs a Python script using the requests library to test both endpoints:

Confirms that Port 8080 responds with HTTP status code 200.

Confirms that Port 8081 responds with HTTP status code 404.

Logs the results of the tests.

RUN **docker-compose up --build**

</div>

![image](https://github.com/user-attachments/assets/2010c714-03dc-4cc0-a7a2-9a4408937e29)
