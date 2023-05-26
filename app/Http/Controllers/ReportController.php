<?php

namespace App\Http\Controllers;

use App\Events\ReportCreated;
use App\Models\Report;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    // store a report
    public function store(Request $request)
    {
        $this->validate($request, [
            'reported_id' => 'required',
            'reporter_id' => 'required',
            'type' => 'required'
        ]);
        $report = new Report();
        $report->reported_id = $request->reported_id;
        $report->reporter_id = $request->reporter_id;
        $report->report_type = $request->type;
        $report->save();
        event(new ReportCreated($report));
        return response()->json([
            'message' => 'Report submitted successfully'
        ], 201);
    }
    //get reports
    public function index()
    {
        $reports = Report::all();
        return response()->json($reports, 200);
    }
}
