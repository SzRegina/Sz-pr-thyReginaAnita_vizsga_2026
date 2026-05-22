<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

use function Illuminate\Support\now;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('esemenies', function (Blueprint $table) {
            $table->id();
            $table->foreignId("kategoria_id")->constrained("kategorias")->onDelete("cascade");
            $table->string("esemeny_nev");
            $table->text("leiras");
            $table->timestamp("datum")->default(now());
            $table->integer("resztvevok");
            $table->integer("ar");
            $table->string("kepURL");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('esemenies');
    }
};
