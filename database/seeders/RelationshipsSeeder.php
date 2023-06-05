<?php

namespace Database\Seeders;

use App\Models\Friendship;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class RelationshipsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 5; $i++) {
            Friendship::create([
                'user_id' => 2,
                'friend_id' => $faker->numberBetween(1, 35),
            ]);
        }
    }
}
