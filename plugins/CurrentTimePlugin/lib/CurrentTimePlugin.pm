package CurrentTimePlugin;
use strict;
use warnings;

sub edit_entry_param {
    my ($cb, $app, $param) = @_;

    return unless $app->mode  eq 'view';
    return unless $app->param('_type') eq 'entry';

    my $static_base = $app->static_path;
    my $plugin      = $cb->plugin   or return; 
    my $pid         = $plugin->id;
    my $static_uri  = "${static_base}plugins/${pid}/";

    my $html = <<HTML;
<!-- CurrentTimePlugin Assets -->
<link rel="stylesheet" href="${static_uri}css/current-time.css" />
<script defer src="${static_uri}js/current-time.js"></script>
<!-- /CurrentTimePlugin Assets -->
HTML

    $param->{html_head} .= $html;

    ##  デバッグログ
    # require MT::Log;
    # my $log = MT::Log->new;
    # $log->message("CurrentTimePlugin: head injected → $static_uri");
    # $log->level( MT::Log::INFO() );
    # $log->save;

    1;
}

1;
