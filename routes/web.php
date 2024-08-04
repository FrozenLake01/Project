<?php

use App\Http\Controllers\UserGradesController;
use App\Http\Controllers\UserInfoController;
use Inertia\Inertia;
use Illuminate\Support\Facades\Route;

Route::inertia('/', "Home")->name('home');
Route::inertia('/grade', "StudentGradeTable")->name('grade');
Route::get('/dashboard/{userId}/grades', [UserGradesController::class, 'getSubjectsByUserId']);

Route::get('/dashboard', [UserInfoController::class, 'userInfo'])->name('dashboard');