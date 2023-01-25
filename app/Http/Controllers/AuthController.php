<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
use App\Models\user;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    //
    public function register (Request $request){
        $request-> validate([
            'name' => 'required',
            'password' => 'required|string|min:6',
            'email' => 'required|string',
            'mobile' => 'required|min:10',
            'sex' => 'required'
            // 'role' => 'required'

        ]);
        $user = new user([
            'name' => $request->name,
            'email' => $request->email,
            'mobile'=>$request->mobile,
            'sex' =>$request->sex,
             'password'=> Hash::make($request->password)
            // 'role' =>$request->role
        ]);

        $user->save();
        return response()->json(['message' =>'user has been registered'], 200);
    }
     public function login(Request $request){
        // // $request-> valildate([
        // //     'email' =>'required',
        // //     'password' => 'required|string'   
        // // ]);
        // $credentials = request(['email', 'password']);
        // if(!Auth::attempt($credentials)){
        //     return response()->json(['message' => 'Unauthorized'], 401);
        // }
        // return response()->json([
        //     'status' => true,
        //     'message' => 'User Logged In Successfully',
        //     'token' => $user->createToken("API TOKEN")->plainTextToken
        // ], 200);

        // return response()->json(['data' => [
        //     'user' =>Auth::user(),
        //     'access_token' => $tokenResult->accessToken,
        //     'token_type' => 'Bearer',
        //     'expire_at' => Carbon::parse($tokenResult->token->expire_at)->toDateTimeString()
        // ]]);
        
            try {
                $validateUser = Validator::make($request->all(), 
                [
                    'email' => 'required|email',
                    'password' => 'required'
                ]);
    
                if($validateUser->fails()){
                    return response()->json([
                        'status' => false,
                        'message' => 'validation error',
                        'errors' => $validateUser->errors()
                    ], 401);
                }
    
                if(!Auth::attempt($request->only(['email', 'password']))){
                    return response()->json([
                        'status' => false,
                        'message' => 'Email & Password does not match with our record.',
                    ], 401);
                }
    
                $user = User::where('email', $request->email)->first();
                $user = Auth::user();
                return response()->json([
                    'status' => true,
                    'message' => 'User Logged In Successfully',
                    'data' =>$user,
                    'token' => $user->createToken("API TOKEN")->plainTextToken
                ], 200);
    
            } catch (\Throwable $th) {
                return response()->json([
                    'status' => false,
                    'message' => $th->getMessage()
                ], 500);
            }
        
        
     }
}
