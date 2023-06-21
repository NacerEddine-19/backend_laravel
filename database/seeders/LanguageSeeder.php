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
        // $languages = [
        //     'JavaScript',
        //     'Python',
        //     'Java',
        //     'C',
        //     'C++',
        //     'C#',
        //     'Ruby',
        //     'PHP',
        //     'Swift',
        //     'Go',
        //     'Rust',
        //     'TypeScript',
        //     'Kotlin',
        //     'Perl',
        //     'Scala',
        //     'Haskell',
        //     'Lua',
        //     'R',
        //     'Matlab',
        //     'Objective-C',
        //     'HTML/CSS',
        //     'Shell',
        //     'PowerShell',
        //     'Groovy',
        //     'Groovy',
        //     'CoffeeScript',
        //     'Objective-C++',
        //     'Dart',
        //     'Julia',
        //     'F#',
        //     'Elixir',
        //     'Clojure',
        //     'OCaml',
        //     'Erlang',
        //     'Bash',
        //     'Racket',
        //     'Fortran',
        //     'Ada',
        //     'Assembly',
        //     'PL/SQL',
        //     'VB.NET',
        //     'VBA',
        //     'Haxe',
        //     'Lua',
        //     'Prolog',
        //     'D',
        //     'Smalltalk',
        //     'Crystal',
        //     'Scheme',
        //     'COBOL',
        //     'Delphi',
        //     'Groovy',
        //     'Perl',
        //     'R',
        //     'Julia',
        //     'Haskell',
        //     'Lua',
        //     'Shell',
        //     'Elixir',
        //     'Dart',
        //     'Rust',
        //     'Kotlin',
        //     'F#',
        //     'Clojure',
        //     'TypeScript',
        //     'Go',
        //     'Scala',
        //     'Swift',
        //     'Groovy',
        //     'Objective-C',
        //     'Ruby',
        //     'Python',
        //     'JavaScript',
        //     'Java',
        //     'C#',
        //     'C++',
        //     'C',
        //     'HTML/CSS',
        //     'PHP',
        //     'R',
        //     'Matlab',
        //     'Bash',
        //     'PowerShell',
        //     'Perl',
        //     'Haskell',
        //     'Lua',
        //     'Shell',
        //     'Objective-C++',
        //     'Groovy',
        //     'TypeScript',
        //     'Rust',
        //     'Java',
        //     'Kotlin',
        //     'Swift',
        //     'C++',
        //     'C',
        //     'JavaScript',
        //     'Python',
        //     'Ruby',
        //     'C#',
        //     'HTML/CSS',
        //     'Go',
        //     'R',
        //     'Matlab',
        //     'PHP',
        //     'Scala',
        // ];


        // foreach ($languages as $language) {
        //     if (!Language::where('name', $language)->exists()) {
        //         Language::create([
        //             "name" =>  $language,
        //         ]);
        //     }
        // }
        Language::create([
            "name" =>  'Nextjs',
        ]);
    }
}
