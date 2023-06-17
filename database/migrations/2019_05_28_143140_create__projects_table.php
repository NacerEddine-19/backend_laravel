<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('file')->nullable();
            $table->timestamps();
        });

        // Schema::create('project_user', function (Blueprint $table) {
        //     $table->foreignId('project_id')->constrained()->onDelete('cascade');
        //     $table->foreignId('user_id')->constrained()->onDelete('cascade');
        //     $table->primary(['project_id', 'user_id']);
        // });

        // Schema::create('language_project', function (Blueprint $table) {
        //     $table->foreignId('language_id')->constrained()->onDelete('cascade');
        //     $table->foreignId('project_id')->constrained()->onDelete('cascade');
        //     $table->primary(['language_id', 'project_id']);
        // });
    }

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        // Schema::dropIfExists('language_project');
        // Schema::dropIfExists('project_user');
        Schema::dropIfExists('projects');
    }
};
