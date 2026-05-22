<?php

namespace Database\Factories;

use App\Models\Esemeny;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Esemeny>
 */
class EsemenyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return[
            "kategoria_id" => fake()->numberBetween(1,6),
            "esemeny_nev" =>fake()->text(),
            "leiras" =>fake()->text(),
            "ar" =>fake()->numberBetween(1000,5000),
            "resztvevok"=>fake()->numberBetween(1,100),
            "kepURL"=>fake()->text(50),

        ];
    }
}
