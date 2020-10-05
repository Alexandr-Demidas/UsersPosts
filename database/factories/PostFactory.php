<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    return [
        'author_id' => \App\User::pluck('id')->random(),
        'image_id' => \App\Image::pluck('id')->random(),
        'content' => $faker->realText(100),
    ];
});
