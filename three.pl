use strict;
use warnings;
use utf8;
use experimentals;

sub myClick($button, $mainWindow) {
    my $label = $mainWindow->Label(-text => "I clicked a button");
    $label->pack();
}

sub main() {
    use Tk;

    my $mainWindow = MainWindow->new();
    $mainWindow->title("Tk Button");
    
    my $screenWidth = $mainWindow->screenwidth;
    my $screenHeight = $mainWindow->screenheight;
    my $screenResolution = join("x", $screenWidth, $screenHeight);
    $mainWindow->geometry($screenResolution);

    my $button = $mainWindow->Button(-text => "Click Me!",
                                     -state => "normal", # 'noraml', 'active' or 'disabled'
                                     -padx => 20,
                                     -pady => 5,
                                     -fg => '#000000'); # -bg

    $button->configure(-command => [\&myClick, $button, $mainWindow]);
    $button->pack();

    MainLoop;
}

main();
