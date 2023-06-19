<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        if (!Schema::hasTable('users')) {
            Schema::create('users', function (Blueprint $table) {
                $table->id();
                $table->string('nom');
                $table->string('prenom');
                $table->string('email')->unique();
                $table->string('password');
                $table->integer('group')->nullable();
                $table->string('role')->default('stagier');
                $table->integer('favorites')->nullable();
                $table->string('pdp')->nullable();
                $table->string('bio')->default('This is a Bio');
                $table->string('school')->default('INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE');
                $table->string('city')->default('Marrakech');
                $table->rememberToken();
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
