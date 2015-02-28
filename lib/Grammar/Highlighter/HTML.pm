class Grammar::Highlighter::HTML;

use Term::ANSIColor;

my @colors = < aqua blue fuchsia gray green lime maroon navy olive purple red silver teal yellow >;

sub escape(Str $code) {
    my $escaped = $code;
    $escaped ~~ s/\</&lt;/;
    return $escaped;
}

method colored(Str $pre, Str $children, Str $post, Int $color) {
    return qq!<span style="color: {@colors[$color % @colors.elems]};">{escape $pre}{$children // ''}{escape $post // ''}</span>!;
}

# vim: ft=perl6

