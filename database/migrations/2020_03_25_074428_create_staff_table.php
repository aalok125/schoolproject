<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStaffTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staff', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('slug')->nullable();
            $table->string('job_title')->nullable();
            $table->integer('ethnicity_id')->unsigned();
            $table->text('address')->nullable();
            $table->enum('gender', ['Male', 'Female', 'Other']);
            $table->date('DOB')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->integer('staff_type_id')->unsigned();
            $table->integer('school_id')->unsigned();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('staff');
    }
}
