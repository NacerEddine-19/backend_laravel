<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;

class ProjectsController extends Controller
{
    public function index()
    {
        $projects = Project::with(['users', 'languages'])->get();
        return response()->json($projects);
    }

    public function store(Request $request)
    {
        $project = Project::create([
            'name' => $request->input('name'),
            'file' => $request->file('file') ? $request->file('file')->store('projects', 'public') : null,
        ]);

        $project->users()->sync($request->input('team'));
        $project->languages()->sync($request->input('languages'));

        return response()->json($project);
    }

    public function download(Project $project)
    {
        if ($project->file) {
            return response()->download(public_path('storage/' . $project->file));
        }
        
        return response()->json(['error' => 'No file available for download'], 404);
    }

    public function like(Project $project)
    {
        $project->likes++;
        $project->save();

        return response()->json(['message' => 'Project liked']);
    }

    public function dislike(Project $project)
    {
        $project->dislikes++;
        $project->save();

        return response()->json(['message' => 'Project disliked']);
    }
}
