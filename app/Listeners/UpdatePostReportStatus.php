<?php

namespace App\Listeners;

use App\Events\ReportCreated;
use App\Models\Post;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Log;

class UpdatePostReportStatus
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(ReportCreated $event)
    {
        $report = $event->report;
        $post = Post::find($report->reported_id);
        if ($post) {
            $post->is_reported = 1;
            $post->save();
            Log::info('Post report status updated: Post ID ' . $post->id_post);
        } else {

            Log::error('Post report status not updated: Post ID ' . $report->reported_id . ' not found');
        }
    }
}
