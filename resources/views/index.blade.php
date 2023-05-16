<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900|Material+Icons|Material+Icons+Outlined&display=block" rel="stylesheet" type="text/css">
        <title>CreativeHub - Агрегатор площадок и услуг креативных индустрий Москвы</title>
    </head>
    <body>
        <div id="app"></div>
        @vite('resources/js/main.js')
    </body>
</html>
