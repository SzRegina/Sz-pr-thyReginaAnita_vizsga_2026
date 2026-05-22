<?php

namespace App\Http\Controllers;

use App\Models\Esemeny;
use Illuminate\Http\Request;

class EsemenyController extends Controller
{
    public function index(){
        return response()->json(Esemeny::with("kategoria")->get());
    }
    public function show($id){
        $esemeny = Esemeny::with("kategoria")->find($id);
        if (!$esemeny){
            return response()->json(["message" => "Nem található ilyen esemény!"], 404);

        }
        return response()->json($esemeny);


    }
    public function store(Request $request){
        $validated = $request ->validate([
            "kategoria_id" => "required|exists:kategorias, id",
            "esemeny_nev" => "required|string|max:20",
            "leiras" => "text",
            "datum" => "timestamp",
            "resztvevok" => "integer",
            "ar" => "integer",
            "kepURL" => "string|255",
        ]);
        $esemeny = Esemeny::create([
            "kategoria_id" => $validated["kategoria_id"],
            "esemeny_nev" => $validated["esemeny_nev"],
            "leiras" => $validated["leiras"],
            "datum" => $validated["datum"],
            "resztvevok" => $validated["resztvevok"],
            "ar" => $validated["ar"],
            "kepURL" => $validated["kepURL"],


        ]);
        return response()->json($esemeny, 201);

    }
    public function update(Request $request, $id){
        $esemeny = Esemeny::find($id);
        if (!$esemeny){
            return response()->json(["message" => "Nem található ilyen esemény"], 404);
        }
        return response()->json($esemeny);

    }
    public function destroy($id){
        $esemeny = Esemeny::find($id);
        if (!$esemeny){
            return response()->json(["message" => "Nem található ilyen esemény!"], 404);
        }
        $esemeny->delete();
        return response()->json(["message" => "Törölve."]);

    }
    
}
