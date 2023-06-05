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

        for ($i = 0; $i < 30; $i++) {
            User::create([
                'nom' => $faker->lastName,
                'prenom' => $faker->firstName,
                'email' => $faker->unique()->safeEmail,
                'group' => $faker->numberBetween(1, 6),
                'favorites' => $faker->numberBetween(1, 15),
                'role' => $faker->randomElement(['admin', 'user']),
                'pdp' => $faker->imageUrl(),
                'password' => bcrypt('123') // Change this to generate secure passwords
            ]);
        }
    }
}
