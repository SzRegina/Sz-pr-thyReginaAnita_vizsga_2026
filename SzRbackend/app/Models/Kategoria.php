<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kategoria extends Model
{
    use HasFactory;
    protected $fillable = [
        "kategoria_nev"


];

    public function esemenyek(){

        return $this->hasMany(Esemeny::class);
    }
}
