# Lost and Found - Overview

Lost and Found is an application that connects people through their lost items.  Users of Lost and Found are able to register their items and generate custom QR Codes which they can then place on their items, similar to a name tag.  

These QR codes are special though as they provide a direct line of communication between the user owner who has lost an item and the finder who has found the item.  

The QR codes are technology agnostic and can be scanned with any cell phone camera without the use of additional apps. Once scanned the landing page is unique to the item.  A message from the owner is displayed with a short form for the finder to fill out.  The fields follow a 'voice-mail' format allowing the finder to leave a short message for the owner to contact them.  

The platform provides a direct line of communication to between two unrelated people while maintaining a layer of privacy and anonymity for the owner and finder.

[Lost and Found: Frontend Repo](https://github.com/drbarq/lost-and-found-frontEnd)

## Lost and Found - Video 

[![Vimeo](https://i.imgur.com/9zmFcX5.png)](https://vimeo.com/351468041)

## Lost and Found - Build: Backend 

I wrote the backend using Ruby on Rails and hosted on Heroku.  The backend provides an API endpoint for the frontend to communicate and render user data.  Using custom routes the program is able to dynamically generate static url endpoints for each individual item.  

Integrating Twilio SMS services within the backend provides the ability to dynamically generate and send messages ondemand through the lost item portal.  

## Lost and Found - Data Model: Plymorphic Relationships

Items are able to be registered with multiple contact numbers and methods.  Using polymorphic relationships the program is able to query any piece of data from any other piece of data relevant to the user. This allows for minimal fetch requests and limits the need for managing multiple routes.  

A User has many Items.  An Item has many Contacts.  An Item is Contactable through Phone, Email, and Text.

![alt text](https://i.imgur.com/ppYEN6v.png)

## Lost and Found - User Serializer

Due to the polymorphic relationship and a serilizer on the User class the api endpoint is a single data set formatted with the relevant data points.  

![alt text](https://i.imgur.com/vZcGzcu.png)

## Lost and Found - Feature: Twilio Programmatic SMS

By integrating Twilio Programmatic SMS within the backend the program is able to generate and dispatch all messaging through a single request.  

![alt text](https://i.imgur.com/p7pICKGm.png)

## Lost and Found - Run Instructions 

- Fork 🍴
- Clone
- ``` bundle install ```
- ``` rails db:migrate ```
- ``` rails db:seed ```
- ``` rails s ```

The app uses api keys which are stored within the encrypted Rails files.  Contact the team for access.

## CONTRIBUTING
Joe Tustin [[GitHub]](https://github.com/drbarq) [[Linkedin]](https://www.linkedin.com/in/joetustin/)


