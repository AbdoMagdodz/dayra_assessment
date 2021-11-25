<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('login', 'LoginController@login');

Route::middleware('auth:api')->group(function () {
    Route::post('invoices/store', 'Invoice\InvoiceController@store');
    Route::post('clients/store', 'Client\ClientController@store');
});
