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
        Schema::create('reports', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('reporter_id');
            $table->unsignedBigInteger('reported_id');
            $table->enum('report_type', ['post', 'user']);
            // $table->text('reason');
            $table->timestamps();

            // Define foreign key constraints
            $table->foreign('reporter_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('reported_id')->references('id')->on('users')->onDelete('cascade');

            // Indexes
            $table->index(['reporter_id', 'reported_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reports');
    }
};
