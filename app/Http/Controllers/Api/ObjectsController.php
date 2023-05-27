<?php

namespace App\Http\Controllers\Api;

use Illuminate\Routing\Controller as BaseController;

use Illuminate\Http\Request;
use App\Http\Requests\StoreObjectRequest;
use App\Http\Requests\UpdateObjectRequest;
use App\Models\Place;

class ObjectsController extends BaseController
{
    public function index(Request $request)
    {
        return Place::all();
    }

    public function same(Request $request)
    {
        $category = $request->input('category');
        return Place::where('category_id', '=', $category)->get();
    }

    public function info($obj)
    {
        return Place::where('id', $obj)->first();
    }

    public function store(StoreObjectRequest $request)
    {
        $data = $request->validated();
        Place::create($data);
        return response()->json(['success' => true], 201);
    }

    public function update(UpdateObjectRequest $request, Place $obj)
    {
        $data = $request->validated();
        $obj->update($data);
        return response()->json(['success' => true], 201);
    }

    public function destroy(Place $obj)
    {
        $obj->delete();
        return response()->json(['success' => true], 200);
    }

    public function user_objects(User $user) {
        return $user->objects;
    }
}
