<?php

namespace Database\Seeders;

use App\Models\Comment;
use App\Models\Post;
use App\Models\User;
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
        
        $userIds = User::pluck('id')->toArray();
        $postIds = Post::pluck('id_post')->toArray();

        for ($i = 0; $i < 100; $i++) {
            $randomUserId = $faker->randomElement($userIds);
            $randomPostId = $faker->randomElement($postIds);
            Comment::create([
                'post_id' => $randomPostId,
                'user_id' => $randomUserId,
                'content' => $faker->sentence()
            ]);
        }
    }
}
