<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ImportDatabase extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Path to the SQL dump file
        $path = database_path('v1_starterkit.sql');

        // Check if the file exists
        if (File::exists($path)) {
            // Read the SQL dump file
            $sql = File::get($path);

            // Execute the SQL dump
            DB::unprepared($sql);

            $this->command->info('SQL dump has been successfully imported.');
        } else {
            $this->command->error('SQL dump file not found.');
        }
    }
}
