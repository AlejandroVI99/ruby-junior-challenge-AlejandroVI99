<img src="[https://getduna.com/svg/duna-logo.svg](https://images.getduna.com/logo-full-deuna.png)" width="300">

# Ruby on Rails Junior Challenge

## 👩‍💻 Proyect Overview and Info

El objetivo es diseñar e implementar una aplicación con Ruby on Rails para el manejo de solicitudes de reparaciones en una cadena de tiendas.
Recuerda que no tenemos un timeline, reclutamos on a rolling basis. Recuerda de actualizar el form que recibiste en tu correo cuando termines la prueba. Al completar la prueba tecinca avisanos por aca (usa el mismo correo): https://airtable.com/shrfLtBYqMg3jY3dc
## 🦶 Pasos

* Crea una aplicación Ruby on Rails, implementando los casos de uso
* Versiona tus cambios
* Crea un pull request

## ❓ Casos de uso a implementar

* Existe un formulario abierto que permite a un cliente, solicitar una cotización de reparación a un determinado producto (Ejemplo: Laptop, Smartphone, Consola, TV).
* La solicitud debe asignarse a la tienda que tenga más prioridad (1 es mayor prioridad) y que ofrezca el servicio de reparación al tipo de producto.
* Cuando se aprueba la solicitud de cotización, el usuario de la tienda debe ingresar un precio estimado en el panel de admin.
* Si la tienda asignada no aprueba la solicitud dentro de 2 horas, se asigna a la siguiente tienda con menor prioridad. (Usar active_job)
* El usuario puede ver todas las cotización pendientes, aprobadas y descartadas.

## 🔑 Restricciones técnicas

Los requisitos obligatorios son usar Ruby on Rails como tecnología de desarrollo, seguir las convenciones de Rails, validar lo que estimes necesario y crear un archivo de seeds para levantar rapidamente el proyecto
Eres libre de usar cualquier gem.

## 🎯 Bonificaciones

Se consideran bonificaciones los siguientes puntos:

* Gitflow y commits con significado
* Código ordenado y legible
* Implementación de diseño
* README actualizado con instrucciones de uso

## 📃 Disclaimer

Esto es un desafío técnico sin proposito comercial y D-Una de ninguna manera:

* Compartirá o usará tu código
* Obligarte a realizar este desafío
* Compensarte de cualquier forma por realizar este desafío

# Buena suerte 🚀

# Instructions

:eyes: This project was made in macOS :heavy_exclamation_mark:

* Ruby version 3.1.0
* postgresql

After clone the repository, we need to set our project:

* Run ```bundle install```
* Install postgresql https://www.digitalocean.com/community/tutorials/how-to-set-up-ruby-on-rails-with-postgres
* Install redis for sideq https://redis.io/docs/getting-started/installation/install-redis-on-mac-os/ and start service
* Create the database, migrations and seeds

```
rails db:create
rails db:migreate
rails db:seed
```

* Start rails service ```rails s```

After start the rails service, the main page looks like this

![image](https://user-images.githubusercontent.com/57637591/172052969-70c63ec0-13bc-4aca-996e-0b5ed6c2ec88.png)

We need to sign in first in one of them, first, we are going to log in with a client user.
After sign in, it going to apper the same page like above, and know we can enter in the Products view or Insert a Product

**Products page**

![image](https://user-images.githubusercontent.com/57637591/172053184-28cd86b6-933a-4cbd-ae0f-c098225ca1a7.png)

**Insert product page**

![image](https://user-images.githubusercontent.com/57637591/172053220-b757ea3a-f271-4fc1-959c-aeb9e4c5db75.png)
