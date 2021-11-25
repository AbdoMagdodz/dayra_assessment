<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\AuthenticateRequest;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class LoginController extends Controller
{
    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(AuthenticateRequest $request)
    {
        $credentials = $this->getCredentials($request);

        if (auth()->attempt($credentials)) {
            $userToken = auth()
                ->user()
                ->createToken('Personal Access Token')
                ->accessToken;

            return apiResponse(Response::HTTP_CREATED, [
                'token' => $userToken,
                'token_type' => 'Bearer',
                'expires_at' => Carbon::now()->addYear()->toDateTimeString()
            ]);
        }

        return apiResponse(Response::HTTP_UNAUTHORIZED, [], __('app.invalid_email_or_password'));
    }

    /**
     * @param $request
     * @return array
     */
    private function getCredentials($request)
    {
        return [
            'email' => $request->email,
            'password' => $request->password
        ];
    }
}
