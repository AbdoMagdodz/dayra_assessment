<?php

namespace App\Http\Controllers\API\Invoice;

use App\Http\Controllers\API\Client\ClientHandler;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreInvoiceRequest;
use App\Models\Client;
use Symfony\Component\HttpFoundation\Response;

class InvoiceController extends Controller
{
    /**
     * @param StoreInvoiceRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreInvoiceRequest $request)
    {
        $data = $request->all();
        $client = Client::where('email', $request->email)->first();

        if (!$client) {
            $client = (new ClientHandler)->create($data);
        }

        $data['client_id'] = $client->id;
        $invoice = (new InvoiceHandler)->create($data);

        return apiResponse(Response::HTTP_CREATED, $invoice, 'invoice has been created successfully.');
    }
}
