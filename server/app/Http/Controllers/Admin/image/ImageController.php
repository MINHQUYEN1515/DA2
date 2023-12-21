<?php

namespace App\Http\Controllers\Admin\image;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function uploadImageProfile(Request $request)
    {
        $request->validate([
            'file' => "required|max:2048|mimes:jpeg,png,jpg,gif|image"
        ]);
        $image = $request->file('file');
        $filename = time() . '-' . $image->getClientOriginalName();

        $image->move("image/customer", $filename);
    }
}
