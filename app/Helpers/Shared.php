<?php

if (!function_exists('apiResponse')) {
    /**
     * @param $code
     * @param array $data
     * @param string $message
     * @return \Illuminate\Http\JsonResponse
     */
    function apiResponse($code, $data = [], $message = '')
    {
        return response()->json([
            'code' => $code,
            'data' => $data,
            'message' => $message,
        ]);
    }
}