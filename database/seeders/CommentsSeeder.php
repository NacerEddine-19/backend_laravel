<?php

namespace Database\Seeders;

use App\Models\Comment;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CommentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 50; $i++) {
            Comment::create([
                'post_id' => $faker->numberBetween(15, 54),
                'user_id' => $faker->numberBetween(1, 34),
                'content' => $faker->sentence()
            ]);
        }
    }
}
