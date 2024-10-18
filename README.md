<p align="center"><img src="https://statamic.com/assets/branding/Statamic-Logo+Wordmark-Rad.svg" width="400" alt="Statamic Logo" /></p>

## Visual1 Starter Kit

1. cd {{ project_name }}
2. composer install
3. Create mysql database
4. Create `.env` file from `.env.example` and fill in app URL, database name, generate an app key, etc.
5. php artisan migrate --seed
6. npm install
7. npm run dev

## Open Site

Navigate to `https://{{ project_name }}.public.test` (same as your `APP_URL`). 

This will show the standard starter kit home page with some panels and a contact form at the bottom.

## Control Panel User Details

To login to the Control Panel, navigate to the site URL with `/cp` on the end, e.g. `https://{{ projectname }}.public.test/cp`.
In here you can play around and set all the content for the panels, blog entries and contact form setup.

Use the following user details:

> User: support@visual1.com.au
>
> Password: Password1!
