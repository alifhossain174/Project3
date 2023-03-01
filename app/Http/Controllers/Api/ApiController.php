<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    const AUTHORIZATION_TOKEN = 'INEJEUDYSBW7583837NUDD752022';

    public function userChangePassword(Request $request){
        if ($request->header('Authorization') == ApiController::AUTHORIZATION_TOKEN) {

            $data = User::orderBy('id', 'desc')->paginate(15);
            return response()->json([
                'success'=> true,
                'data'=> $data
            ]);

        } else {
            return response()->json([
                'success' => false,
                'message' => "Authorization Token is Invalid"
            ], 422);
        }
    }

}
