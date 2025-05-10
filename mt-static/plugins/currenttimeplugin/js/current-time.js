; (function ($) {
    'use strict';

    $(function () {

        // 日付フィールドが入っているコンテナ
        var $container = $('#authored_on-field .data-time-fields');
        if (!$container.length) return;

        // ボタンを作って挿入
        var $btn = $('<button type="button" class="current-time-btn">現在日時を反映</button>');
        $container.append($btn);

        // 日時を当て込む処理を関数化
        function applyCurrentTime() {
            var now = new Date();
            var Y = now.getFullYear();
            var M = String(now.getMonth() + 1).padStart(2, '0');
            var D = String(now.getDate()).padStart(2, '0');
            var h = String(now.getHours()).padStart(2, '0');
            var m = String(now.getMinutes()).padStart(2, '0');
            var s = String(now.getSeconds()).padStart(2, '0');
            var dateStr = Y + '-' + M + '-' + D;
            var timeStr = h + ':' + m + ':' + s;

            $('#created-on').val(dateStr).trigger('change');
            $('#created-on-time').val(timeStr).trigger('change');
        }

        $btn.on('click', function (e) {
            e.preventDefault();
            applyCurrentTime();
        });
    });

})(window.jQuery);
