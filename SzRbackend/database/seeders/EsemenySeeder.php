<?php

namespace Database\Seeders;

use App\Models\Esemeny;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EsemenySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Esemeny::created([
            "kategoria_id" => 1,
            "esemeny_nev" => "agyagozás",
            "leiras" => "agyagozás",
            "datum"=> "2026-05-22",
            "resztvevok" => 10,
            "ar" => 2500,
            "kepUrl" => "C:\Users\Vizsga230\Documents\SzépréthyReginaAnita_vizsga_2026\SzRbackend\public\pics\workshop.jpg"


        ]);
        Esemeny::created([
            "kategoria_id" => 2,
            "esemeny_nev" => "cselló",
            "leiras" => "cselló",
            "datum"=> "2026-05-23",
            "resztvevok" => 15,
            "ar" => 2500,
            "kepUrl" => "C:\Users\Vizsga230\Documents\SzépréthyReginaAnita_vizsga_2026\SzRbackend\public\pics\koncert.jpg"
        ]);
        Esemeny::created([
            "kategoria_id" => 3,
            "esemeny_nev" => "balett",
            "leiras" => "balett",
            "datum"=> "2026-05-24",
            "resztvevok" => 20,
            "ar" => 2500,
            "kepUrl" => "C:\Users\Vizsga230\Documents\SzépréthyReginaAnita_vizsga_2026\SzRbackend\public\pics\szinhaz.jpg"
        ]);


        Esemeny::factory()->count(8)->create();
    }
}
