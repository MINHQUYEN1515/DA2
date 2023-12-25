<?php

namespace App\Http\Controllers\Data\Product;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function getAllProduct(Request $request)
    {


        return response()->json([
            'status' => "success",
            'message' => 'get all product',
            'data' =>  Product::where('category_id', $request->id)->paginate(10)
        ]);
    }
}
