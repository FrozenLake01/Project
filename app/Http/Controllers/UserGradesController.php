<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\User;
use Illuminate\Http\Request;
use Inertia\Inertia;

class UserGradesController extends Controller
{
    public function getSubjectsByUserId($userId)
    {
        // Fetch the user by ID
        $user = User::find($userId);
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }
    
        // Extract the year level from the user model
        $yearLevel = $user->year_level;
    
        // Fetch the subjects for the user's year level
        $subjects = Course::all();
    
        return Inertia::render('StudentGradeTable', ['user' => $user, 'subjects' => $subjects]);

        
    }
}
