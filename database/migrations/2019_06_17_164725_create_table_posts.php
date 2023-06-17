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
        Schema::create('posts', function (Blueprint $table) {
            $table->id('id_post');
            $table->string('file');
            $table->text('post_desc');
            $table->unsignedBigInteger('user_id');
            $table->boolean('is_reported')->default(false);
            $table->timestamps();
            $table->integer('likes')->default(0);

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('posts');
    }

};
