<?php

namespace App\Http\Controllers;

use App\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index() {
        $demo = '<h1>Hello World</h1>';
        return view('admin.brand.add-brand', ['demo'=>$demo]);
    }
    public function saveBrand(Request $request) {
        $this->validate($request, [
                'brand_name' => 'required|regex:/^[\pL\s\-]+$/u|max:20|min:2',
                'brand_description' => 'required',
                'publication_status' => 'required'
            ]);

        $brand = new Brand();
        $brand->brand_name = $request->brand_name;
        $brand->brand_description = $request->brand_description;
        $brand->publication_status = $request->publication_status;
        $brand->save();

        return redirect('/brand/add')->with('message', 'Brand info save successfully');
    }



    public function manageBrandInfo(){
        $brands = Brand::all();
        return view('admin.brand.manage-brand', ['brands'=>$brands]);
    }

    public function unpublishedBrandInfo($id){
        $brand = Brand::find($id);
        $brand-> publication_status = 0;
        $brand->save();
        return redirect('/brand/manage')->with('message', 'Brand Info  Unpublished');
    }

    public function publishedBrandInfo($id){
        $brand = Brand::find($id);
        $brand-> publication_status = 1;
        $brand->save();
        return redirect('/brand/manage')->with('message', 'Brand Info  published');
    }


    public function editBrandInfo($id){
        $brand = Brand::find($id);
        return view('admin.brand.edit-brand', ['brand'=>$brand]);
    }


    public function updateBrandInfo(Request $request){
        $this->validate($request, [
            'brand_name' => 'required|regex:/^[\pL\s\-]+$/u|min:2|max:20',
            'brand_description' => 'required|min:2',
            'publication_status' => 'required'

        ]);

        $brand = Brand::find($request->brand_id);

        $brand->brand_name = $request->brand_name;
        $brand->brand_description = $request->brand_description;
        $brand->publication_status = $request->publication_status;
        $brand->save();
        return redirect('/brand/manage')->with('message', 'Brand Info  Update');
    }


    public function deleteBrandInfo($id){
        $brand = Brand::find($id);
        $brand->delete();
        return redirect('/brand/manage')->with('message', 'Brand Info  Delete');
    }
}
