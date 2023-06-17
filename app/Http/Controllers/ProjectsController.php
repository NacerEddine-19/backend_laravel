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
        $request->validate([
            'name' => 'required',
            'file' => 'required',
        ]);

        $project = Project::create([
            'name' => $request->name,
            'file' => $request->file('file')->store('public/projects'),
        ]);

        // Attach users
        if ($request->has('users')) {
            $project->users()->attach($request->users);
        }

        // Attach languages
        if ($request->has('languages')) {
            $project->languages()->attach($request->languages);
        }

        return response()->json(['success', 'Project created successfully.']);
    }

    public function download(Project $project)
    {
        if ($project->file) {
            return response()->download(public_path('public/projects/' . $project->file));
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
