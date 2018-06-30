<a href="fb.me/swingheilapp/">
    <img src="https://t1.daumcdn.net/cfile/tistory/99CEF04C5B3066E235" alt="SwingHeil Logo" title="SwingHeil" align="right" height="60" />
</a>

swingheil-web-app
======================

The swingheil-web-app is back-end web page for swing dance event organizer.
It requires [swingheil-service](https://github.com/tomparkpro/swingheil-service) library. If you make events on admin page, end user can check them on the SwingHeil Andoird/iOS app.

[![SwingHeil App Banner](https://t1.daumcdn.net/cfile/tistory/9912074C5B3066E107)](https://github.com/tomparkpro/swingheil-service/)


## Table of content

- [Installation](#installation)
    - [DB setup](#db-setup)
    - [Upload to Heroku](#upload-to-heroku)
- [Techlonogy](#technology)    
- [Development RoadMap](#development-roadmap)
- [License](#license)
- [Links](#links)


## Installation

The SwingHeil Web App project requires swingheil-service project.


### DB setup

SwingHeil uses Heroku as PaaS, add JawsDB MySQL add-ons.

#### Set Config Vars 

Heroku Dashboard > Settings > Config Vars

- JAVA_OPTS : -Dspring.profiles.active=dev
- SWINGHEIL_DB_CONNECTION_STRING : jdbc:log4jdbc:mysql://DOMAIN_FROM_JAWSDB:3306/DATABASE_NAME_FROM_JAWSDB?verifyServerCertificate=false&useSSL=false&requireSSL=false
- SWINGHEIL_DB_USERNAME : the username from JawsDB Dashboard
- SWINGHEIL_DB_PASSWORD : the password from JawsDB Dashboard

### Upload to Heroku

Heroku Dashboard > Deploy > App connected to Github : connect the github project.

Manual deploy : push the Deploy Branch button


## Technology

- Spring Boot, JPA, Java 8, Java EE, Hibernate, gradle, yml, Heroku, MySQL


## Development RoadMap

- [x] initial setup springboot project
- [x] setup MySQL DB
- [x] add event CRUD jsp
- [x] upload web app to Heroku
- [ ] add member feature
- [ ] add login feature
- [ ] add security feature


## License

The swingheil-web-app is licensed under the terms of the GPL Open Source
license and is available for free.


## Links 

* [Facebook page](https://www.facebook.com/swingheilapp)
* [Issue tracker](https://github.com/tomparkpro/swingheil-web-app/issues)
* [Source code](https://github.com/tomparkpro/swingheil-web-app)
