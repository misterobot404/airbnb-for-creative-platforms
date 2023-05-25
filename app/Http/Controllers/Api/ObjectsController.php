<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Http\Requests\StoreObjectRequest;
use App\Http\Requests\UpdateObjectRequest;
use App\Models\Place;

class ObjectsController extends Controller
{
    public function index()
    {
        return Place::full();
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
}
