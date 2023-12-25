<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Product extends Model
{
    use HasFactory;
    protected $table = "product";
    protected $fillable = ['name', 'image', 'description', 'categogy_id', 'status', 'price'];
    public $timestamps = false;
    protected $primaryKey = 'ID';
    public function category(): BelongsTo
    {
        return $this->BelongsTo(Category::class, 'category_id');
    }
}
