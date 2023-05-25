<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Place extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'objects';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'category_id',
        'title',
        'description',
        'rating',
        'coordinates',
        'address',
        'address_comment',
        'inventory',
        'benefits',
        'hour_price',
        'minimal_autodeal_rating',
        'schedule',
        'show_price_for_authorised_only',
        'gallery',
        'moderated',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
    ];

    public function category() : BelongsTo {
        return $this->belongsTo(Category::class, 'category_id');
    }
}
