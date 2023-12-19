<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Lcobucci\JWT\Exception;
use Tymon\JWTAuth\Contracts\Providers\JWT;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;
use App\Http\Requests\Auth\CustomerRequest;
use App\Models\User;
use DateTime;

class AuthController extends Controller
{
    public function __construct()
    {
    }

    public function Signup(CustomerRequest $request)
    {
        try {


            $user = Customer::create(array_merge(
                $request->validated(),
                [
                    'password' => bcrypt($request->password),
                    'status' => "normal",
                    "createDay" => now()
                ]
            ));
            return response()->json(
                [
                    "status" => "success",
                    "message" => "create User Successlly ! ",
                    "data" => $user,


                ],
                200
            );
        } catch (Exception $exception) {
            return response()->json([
                "status" => "faild",
                'message' => $exception,
                'data' => "[]"

            ], 500);
        }
    }
    public function login(Request $request)
    {
        $credentials = [
            "email" => $request->email,
            "password" => $request->password
        ];
        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['status' => "faild", 'message' => 'Unauthorized', 'data' => '[]'], 401);
        }

        return $this->respondWithToken($token);
    }
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => JWTFactory::getTTL() * 60
        ]);
    }
    public function getProfile()
    {

        try {
            if (!Auth::user()->token)
                return response()->json(
                    auth('api')->user()
                );
        } catch (Exception $exception) {
            return response()->json(['status' => "faild", 'message' => $exception, 'data' => '[]'], 500);
        }
    }
    public function logout()
    {
        try {
            $forever = true;
            JWTAuth::parseToken()->invalidate($forever);

            return response()->json(['status' => "success", 'message' => "Logout success", 'data' => '[]']);
        } catch (Exception $exception) {
            return response()->json([
                'error'   => true,
                'message' => trans('auth.token.expired')

            ], 401);
        } catch (Exception $exception) {
            return response()->json([
                'error'   => true,
                'message' => trans('auth.token.invalid')
            ], 401);
        } catch (Exception $exception) {
            return response()->json([
                'error'   => true,
                'message' => trans('auth.token.missing')
            ], 500);
        }
    }
}
