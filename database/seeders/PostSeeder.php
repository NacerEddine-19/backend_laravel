<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
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
        
        $userIds = User::pluck('id')->toArray();
        $faker = Faker::create();

        for ($i = 0; $i < 50; $i++) {
            $randomUserId = $faker->randomElement($userIds);
            Post::create([
                'file' => $faker->imageUrl(),
                'post_desc' => $faker->sentence(),
                'user_id' => $randomUserId,
                'is_reported' => $faker->boolean(),
                'created_at' => $faker->dateTimeBetween('now','+1 years'),
                'likes' => $faker->numberBetween(0, 30)
            ]);
        }
    }
}
