<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class books extends Model
{
    use HasFactory;
     protected $fillable = [
        'book_name','book_title','author','book_type','book_status'
    ];
}
