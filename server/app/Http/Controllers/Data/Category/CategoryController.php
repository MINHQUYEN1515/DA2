<?php

namespace App\Http\Controllers\Data\Category;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function getAll()
    {

        return response()->json([
            'status' => "success",
            'message' => 'get all category',
            'data' =>  Category::all()
        ]);
    }
}
