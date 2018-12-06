<?php

use App\Models\Category;
use Faker\Generator as Faker;


$factory->define(App\Models\Restaurant::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'category_id'=> function(){
            return Category::all()->random();
        },
        'description' => $faker->word,
        'telephone' => $faker->phoneNumber,
        'address' => $faker->address,
        'schedule' => $faker->dateTime,
        'description' => $faker->word,
        'img_path' => $faker->imageUrl($width = 640, $height = 480),
        //
    ];
});
