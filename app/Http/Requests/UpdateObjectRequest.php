<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateObjectRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'category_id' => 'sometimes | integer',
            'title' => 'sometimes | string',
            'description' => 'sometimes | string',
            'rating' => 'sometimes | numeric',
            'coordinates' => '',
            'address' => 'sometimes | string',
            'address_comment' => 'sometimes | string',
            'inventory' => '',
            'benefits' => '',
            'hour_price' => 'sometimes | numeric',
            'minimal_autodeal_rating' => 'sometimes | numeric',
            'schedule' => '',
            'show_price_for_authorised_only' => 'sometimes | boolean',
            'gallery' => '',
            'moderated' => 'sometimes | boolean',
        ];
    }
}
