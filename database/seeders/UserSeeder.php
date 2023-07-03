<?php

namespace Database\Seeders;

use Faker\Factory as Faker;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 100; $i++) {
            User::create([
                'nom' => $faker->lastName,
                'prenom' => $faker->firstName,
                'email' => $faker->unique()->safeEmail,
                'group' => $faker->numberBetween(1, 6),
                'favorites' => $faker->numberBetween(1, 15),
                'role' => $faker->randomElement(['admin', 'stagier']),
                'pdp' => $faker->imageUrl(),
                'password' => bcrypt('123'),
                'created_at' => $faker->dateTimeBetween('now','+1 years'),
            ]);
        }
    }
}
