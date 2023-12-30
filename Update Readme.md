Run:

composer install
yarn add --dev @symfony/webpack-encore
yarn add webpack-notifier --dev
yarn encore dev


Then 

in phpMyAdmin create a database :" ter"
bin/console doctrine:migrations:migrate
php bin/console doctrine:fixtures:load    and type "yes"

php -S localhost:8000 -t public/




to access to the admin part

go to this file :
C:\......\vendor\easycorp\easyadmin-bundle\src\Resources\views\layout.html.twig:205

and delete this line  :
 <input type="hidden" name="signature" value="{{ ea_url().unsetAll().setAction('index').setController(ea.request.query.get('crudControllerFqcn')).getSignature() }}"> 


then at the navigateur 

http://localhost:8000/admin
