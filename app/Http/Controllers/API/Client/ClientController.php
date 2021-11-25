<?php

namespace App\Http\Controllers\API\Client;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreClientRequest;
use Symfony\Component\HttpFoundation\Response;

class ClientController extends Controller
{
    /**
     * @param StoreClientRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreClientRequest $request)
    {
        $client = (new ClientHandler)->create($request->all());

        return apiResponse(Response::HTTP_CREATED, $client, 'Client has been created successfully');
    }
}
