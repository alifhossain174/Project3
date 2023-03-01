<?php

namespace App\Http\Controllers;

use App\Models\User;
use DataTables;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function usersList(Request $request){
        if ($request->ajax()) {
            $data = User::orderBy('id', 'desc')->get();
            return Datatables::of($data)
                    ->editColumn('created_at', function($data) {
                        return date("Y-m-d", strtotime($data->created_at));
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-warning rounded editBtn"><i class="fas fa-edit"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }

        return view('backend.users');
    }

    public function deleteUsers($id){
        User::where('id', $id)->delete();
        return response()->json(['success'=>'User deleted successfully.']);
    }

    public function getUserInfo($id){
        $data = User::find($id);
        return response()->json($data);
    }
}
