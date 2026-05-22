<?php

namespace App\Http\Controllers;

use App\Models\Kategoria;
use Illuminate\Http\Request;

class KategoriaController extends Controller
{
    public function index(){
        return response()->json(Kategoria::with("esemenyek")-> get());

    }

    public function show($id){
        $kategoria = Kategoria::with("esemenyek")->find($id);
        if(!$kategoria){
            return response()->json([
                "message" => "Nem található ilyen kategória!"
            ], 404);
            
        }
        return response()->json($kategoria);

    }
}
