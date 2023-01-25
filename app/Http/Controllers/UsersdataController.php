<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;
use App\Models\books;

class UsersdataController extends Controller
{
    //
    public function index(){
        return user::all();
    }

    // public function createuser(){
    //     return userdata::create([
    //         'username' =>request('username'),
    //         'password' =>request('password'),
    //         'mobile' =>request('mobile'),
    //         'email' =>request('email')
    //      ]);
    // }

    public function edituser(user $user){

        $success = $user->update([
            'name' =>request('name'),
             'mobile' =>request('mobile'),
            'email' =>request('email')
        ]);
        return [
            'success' => $success
        ];
    }

    public function destroyUser(user $user){
        $success =  $user->delete();
    return [
     'success' => $success,
    ];
    }


    public function getBooks(){
        return books::all();
    }
    public function getUserById($id){
        return user:: find($id);
    }
    public function getBookById($id){
        return books:: find($id);
    }
    public function postBooks(){
        return books::create([
            'book_name' =>request('book_name'),
            'book_title' =>request('book_title'),
            'author' =>request('author'),
            'book_status' =>request('book_status'),
            'book_type' =>request('book_type')
             
         ]);
    }
    public function editBooks(books $book){
        $success =  $book->update([
            'book_name' => request('book_name'),
            'book_title' =>request('book_title'),
            'book_status' => request('book_status'),
            'author' => request('author'),
            'book_type' => request('book_type'),
            'like_count' =>request('like_count')
        ]);
        return [
            'success' => $success
        ];
    }
    public function deletebook(books $book){
        $success =  $book->delete();
   return [
    'success' => $success,
   ];
    }
}
