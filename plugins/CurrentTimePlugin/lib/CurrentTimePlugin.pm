package CurrentTimePlugin;
use strict;
use warnings;

sub edit_entry_param {
    my ($cb, $app, $param) = @_;

    my $mode = $app->mode || '';
    return unless $mode eq 'view' || $mode eq 'edit';
    my $type = $app->param('_type') // '';
    return unless $type eq 'entry' || $type eq 'page';

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

    $param->{html_head} //= '';
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
