<?php

namespace Database\Seeders;

use App\Models\Kategoria;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KategoriaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Kategoria::create(["kategoria_nev" => "kreatív"]);
        Kategoria::create(["kategoria_nev" => "zene"]);
        Kategoria::create(["kategoria_nev" => "tánc"]);
        Kategoria::create(["kategoria_nev" => "kirándulás"]);
        Kategoria::create(["kategoria_nev" => "mozgás"]);
        Kategoria::create(["kategoria_nev" => "kultúra"]);
    }
}
