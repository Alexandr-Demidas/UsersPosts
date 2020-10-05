<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Comment;
use Faker\Generator as Faker;

$factory->define(Comment::class, function (Faker $faker) {
    return [
        'post_id' => \App\Post::pluck('id')->random(),
        'commentator_id' => \App\User::pluck('id')->random(),
        'content' => $faker->realText(100),
    ];
});
