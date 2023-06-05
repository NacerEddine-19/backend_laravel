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

        for ($i = 0; $i < 40; $i++) {
            Post::create([
                'file' => $faker->numberBetween(10, 104) . '.jpeg',
                'post_desc' => $faker->sentence(),
                'user_id' => $faker->numberBetween(1, 30),
                'is_reported' => $faker->boolean(),
                'created_at' => $faker->dateTimeThisMonth(),
                'likes' => $faker->numberBetween(0, 30)
            ]);
        }
    }
}
