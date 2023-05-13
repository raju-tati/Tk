use strict;
use warnings;
use utf8;
use experimentals;

sub myClick($button, $entryWidget, $mainWindow) {
    my $labelText = $entryWidget->get();
    $entryWidget->delete(0, 'end');
    # $entryWidget->insert(0, "type something ...");

    my $label = $mainWindow->Label(-text => $labelText);
    $label->pack();
}

sub main() {
    use Tk;

    my $mainWindow = MainWindow->new();
    $mainWindow->title("Tk Entry");
    
    my $screenWidth = $mainWindow->screenwidth;
    my $screenHeight = $mainWindow->screenheight;
    my $screenResolution = join("x", $screenWidth, $screenHeight);
    $mainWindow->geometry($screenResolution);

    my $entryWidget = $mainWindow->Entry(
        -width => 200,
        -fg => "black",
        -state => "normal",
        -font => "BitStream 12"
    ); # https://docstore.mik.ua/orelly/perl3/tk/ch05_02.htm

    $entryWidget->pack(
        -ipadx => 4,
        -ipady => 4
    );

    my $button = $mainWindow->Button(-text => "Click Me!",
                                     -state => "normal", # 'noraml', 'active' or 'disabled'
                                     -padx => 20,
                                     -pady => 5,
                                     -fg => '#000000'); # -bg

    $button->configure(-command => [\&myClick, $button, $entryWidget, $mainWindow]);
    $button->pack();

    MainLoop;
}

main();
