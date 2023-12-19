<?php

namespace App\Http\Controllers\Data\Product;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function getAll()
    {
        return response()->json([
            'status' => "success",
            'message' => 'get all product',
            'data' => Product::where('categogy_id', 1)->get()
        ]);
    }
}
