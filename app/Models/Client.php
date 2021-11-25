<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;

    protected $fillable = ['full_name', 'email', 'phone'];

    /**
     * @return array
     */
    public static function validationRules()
    {
        return [
            'full_name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:clients,email',
            'phone' => 'required|max:11|unique:clients,phone'
        ];
    }
}
