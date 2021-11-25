<?php

namespace App\Http\Controllers\API\Client;

use App\Models\Client;

class ClientHandler
{
    /**
     * @param $data
     * @return mixed
     */
    public function create($data)
    {
        $fields = ['full_name', 'email', 'phone'];
        $client = [];

        foreach ($fields as $field) {
            $client[$field] = $data[$field];
        }

        return Client::create($client);
    }
}