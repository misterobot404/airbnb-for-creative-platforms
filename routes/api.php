<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\ObjectsController;
use App\Http\Controllers\Api\DealsController;
use App\Http\Controllers\Api\MessagesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// API Authentication
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

// Для всех пользователей

// Для авторизованных пользователей
Route::middleware('auth:api')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);

    Route::post('/objects', [ObjectsController::class, 'store'])->name('api.object.create');
    Route::post('/objects/{object}', [ObjectsController::class, 'update'])->name('api.object.update');
    Route::delete('/objects/{object}', [ObjectsController::class, 'destroy'])->name('api.object.delete');
    Route::get('/users/{user}/objects', [ObjectsController::class, 'user_objects'])->name('api.objects.byuser');

    Route::post('/deals', [DealsController::class, 'store'])->name('api.deals.create');
    Route::post('/deals/{deal}', [DealsController::class, 'update'])->name('api.deals.update');
    Route::delete('/deals/{deal}', [DealsController::class, 'destroy'])->name('api.deals.delete');
    Route::get('/users/{user}/deals', [DealsController::class, 'user_deals'])->name('api.deals.byuser');

    Route::post('/messages', [MessagesController::class, 'store'])->name('api.messages.create');
    Route::post('/messages/{message}', [MessagesController::class, 'update'])->name('api.messages.update');
    Route::delete('/messages/{message}', [MessagesController::class, 'destroy'])->name('api.messages.delete');
    Route::get('/users/{user}/messages', [MessagesController::class, 'user_messages'])->name('api.messages.byuser');
});
Route::get('/objects/{object}', [ObjectsController::class, 'info'])->name('api.object.info');
Route::get('/objects', [ObjectsController::class, 'index'])->name('api.objects');
Route::get('/objects/same', [ObjectsController::class, 'same'])->name('api.objects.same');

Route::get('/deals/{deal}', [DealsController::class, 'info'])->name('api.deals.info');
Route::get('/deals', [DealsController::class, 'index'])->name('api.deals');

