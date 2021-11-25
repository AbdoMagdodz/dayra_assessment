<?php

namespace App\Http\Controllers\API\Invoice;

use App\Models\Invoice;

class InvoiceHandler
{
    /**
     * @param $data
     * @return mixed
     */
    public function create($data)
    {
        $fields = ['client_id', 'amount', 'due_date'];
        $invoice = [];

        foreach ($fields as $field) {
            $invoice[$field] = $data[$field];
        }

        return Invoice::create($invoice);
    }
}