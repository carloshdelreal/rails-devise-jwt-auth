# Rails Devise JWT Auth for API 

## requirements

- Ruby 3.2.0
- Rails  7.0.4.2

## quick start

- run `bundle install`
- run `EDITOR="code --wait" rails credentials:edit`
- run `rails db:drop && rails db:create && rails db:migrate && rails db:seed`
- run `rails s`

the api will run in port 8000

## Testing


### Used generate models commads

```bash
rails g model planet name:string diameter:string rotation_period:string orbital_period:string gravity:string population:string climate:string terrain:string surface_water:string created:time edited:time
rails g model film title:string episode_id:integer opening_crawl:string director:string producer:string release_date:time created:time edited:time
rails g model people name:string birth_year:string eye_color:string gender:string hair_color:string height:string mass:string skin_color:string homeworld:integer created:time edited:time planet:references
rails g model film_people film:references person:references
rails g model film_planet film:references planet:references
```