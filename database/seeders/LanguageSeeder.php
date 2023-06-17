<?php

namespace Database\Seeders;

use App\Models\Language;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class LanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */


    public function run(): void
    {
        $languages = [
            'JavaScript',
            'Python',
            'Java',
            'C',
            'C++',
            'C#',
            'Ruby',
            'PHP',
            'Swift',
            'Go',
            'Rust',
            'TypeScript',
            'Kotlin',
            'Perl',
            'Scala',
            'Haskell',
            'Lua',
            'R',
            'Matlab',
            'Objective-C',
        ];


        $faker = Faker::create();
        foreach ($languages as $language) {
            if (!Language::where('name', $language)->exists()) {
                Language::create([
                    "name" =>  $language,
                ]);
            }
        }
    }
}
