package Alpen;

sub loving_you {
    my ( $cb, $app, $tmpl ) = @_;
    my $html_head = <<'HTML';
<script src="<mt:var name="static_uri">plugins/Alpen/js/jquery.easing.1.3.js" type="text/javascript"></script>
<script type="text/javascript">
jQuery(function($) {
  (function($html, $icon) {
    $html.on('mousemove', function(e) {
      $icon.stop().animate({
        top: e.pageY - 124,
        left: e.pageX
      }, {
        duration: 1000,
        specialEasing: {
          top:'easeOutCirc',
          left:'easeOutCirc'
        }
      });
    });
  })($('html'), $('<div id="icon" style="width: 248px; height: 248px; overflow-x: hidden; overflow-y: hidden; position: absolute; top: 0px; left: 0px; z-index: 9999;"><img src="<mt:var name="static_uri">plugins/Alpen/images/alpen2.png" alt="" width="248" height="248"></div>').appendTo('body'));
});
</script>
HTML
    $$tmpl =~ s{</head>}{$html_head</head>};
    1;
}

1;
