<?php

namespace Database\Seeders;

use App\Models\Post;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 100; $i++) {
            Post::create([
                'file' => $faker->imageUrl(),
                'post_desc' => $faker->sentence(),
                'user_id' => 41,
                'is_reported' => $faker->boolean(),
                'created_at' => $faker->dateTimeBetween('-1 years','now'),
                'likes' => $faker->numberBetween(0, 30)
            ]);
        }
    }
}
