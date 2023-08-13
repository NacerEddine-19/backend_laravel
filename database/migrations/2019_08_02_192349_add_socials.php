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
        Schema::table('users', function (Blueprint $table) {
            $table->string('github')->nullable();
            $table->string('site')->nullable();
            $table->string('x')->nullable();
            $table->string('instagram')->nullable();
            $table->string('facebook')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('github');
            $table->dropColumn('site');
            $table->dropColumn('x');
            $table->dropColumn('instagram');
            $table->dropColumn('facebook');
        });
    }
};
