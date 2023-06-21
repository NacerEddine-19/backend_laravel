<?php

namespace App\Http\Controllers;

use App\Models\Language;
use App\Models\Project;
use App\Models\User;
use Illuminate\Http\Request;

class ProjectsController extends Controller
{
    public function index()
    {
        $projects = Project::with(['users', 'languages'])
            ->orderBy('created_at', 'desc')
            ->get();
        return response()->json($projects);
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'name' => 'required',
        ]);

        $project = Project::create([
            'name' => $request->name,
        ]);

        // Attach users
        if ($request->has('users')) {
            foreach ($request->users as $userId) {
                $user = User::find($userId);
                if (!$user) {
                    continue;
                } else {
                    $project->users()->attach($user);
                }
            }
        }

        // Attach languages
        if ($request->has('languages')) {
            foreach ($request->languages as $languageId) {
                $language = Language::find($languageId);
                if (!$language) {
                    continue;
                } else {
                    $project->languages()->attach($language);
                }
            }
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
