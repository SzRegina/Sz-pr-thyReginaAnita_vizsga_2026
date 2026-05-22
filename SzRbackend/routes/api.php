<?php

use App\Http\Controllers\EsemenyController;
use App\Http\Controllers\KategoriaController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get("/kategorias", [KategoriaController::class, "index"]);
Route::get("/kategorias/{id}", [KategoriaController::class, "show"]);

Route::get("/esemenies/{id}", [EsemenyController::class, "index"]);
Route::get("/esemenies/{id}", [EsemenyController::class, "show"]);

Route::post("/esemeines/{id}", [EsemenyController::class, "store"]);
Route::put("esemenies/{id}", [EsemenyController::class, "update"]);
Route::delete("esemenies/{id}", [EsemenyController::class, "destroy"]);
