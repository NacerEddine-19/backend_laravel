<?php

namespace Database\Seeders;

use App\Models\Language;
use App\Models\Project;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 15; $i++) {
            $project = Project::create([
                'name' => $faker->sentence(3),
                'file' => 'file' . $i . '.txt',
            ]);

            // Attach random users to the project
            $users = User::inRandomOrder()->limit(rand(3, 5))->get();
            $project->users()->attach($users);

            // Attach random languages to the project
            $languages = Language::inRandomOrder()->limit(rand(3, 5))->get();
            $project->languages()->attach($languages);
        }
    }
}
