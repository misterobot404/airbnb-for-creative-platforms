<?php

namespace App\Http\Controllers\Api;

use Illuminate\Routing\Controller as BaseController;

use Illuminate\Http\Request;
use App\Http\Requests\StoreDealRequest;
use App\Models\Deal;

class DealsController extends BaseController
{
    public function index(Request $request)
    {
        return Place::full();
    }

    public function info($obj)
    {
        return Deal::where('id', $obj)->first();
    }

    public function store(StoreDealRequest $request)
    {
        $data = $request->validated();
        Deal::create($data);
        return response()->json(['success' => true], 201);
    }

    public function update(StoreDealRequest $request, Deal $obj)
    {
        $data = $request->validated();
        $obj->update($data);
        return response()->json(['success' => true], 201);
    }

    public function destroy(Deal $obj)
    {
        $obj->delete();
        return response()->json(['success' => true], 200);
    }
}
