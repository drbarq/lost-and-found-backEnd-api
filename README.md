# Lost and Found - Overview

Lost and Found is an application that connects people through their lost items.  Users of Lost and Found are able to register their items and generate custom QR Codes which they can then place on their items, similar to a name tag.  

These QR codes are special though as they provide a direct line of communication between the user owner who has lost an item and the finder who has found the item.  

The QR codes are technology agnostic and can be scanned with any cell phone camera without the use of additional apps.  Once scanned the landing page is unique to the item.  A message from the owner is displayed with a short form for the finder to fill out.  The fields follow a 'voice-mail' format allowing the finder to leave a short message for the owner to contact them.  

The platform provides a direct line of communication to between two unrelated people while maintaing a layer of privacy and anonymity for the owner and finder.

# Lost and Found - Build: Backend 

I wrote the backend using Ruby on Rails and hosted on Heroku.  The backend provides an API endpoint for the frontend to communicate and render user data.  Using custom routes the program is able to dynamically generate static url endpoints for each individual item.  

Integrating Twillio SMS services within the backend provides the ability to dynamically generate and send messages ondemand through the lost item portal.  

# Lost and Found - Data Model: Plymorphic Relationships

Items are able to be registered with multiple contact numbers and methods.  Using polymorphic relationships the program is able to query any piece of data from any other piece of data relevant to the user. This allows for minimal fetch requests and limits the need for managing multiple routes.  

# Lost and Found - User Serilizer

Due to the polymorphic relationship and a serilizer on the User class the api endpoint is a single data set formatted with the relevant data points.  

# Lost and Found - Feature: Twillio Progamatic SMS 

By integrating Twillio Progamatic SMS within the backend the program is able to generate and dispatch all messaging through a single request.  
