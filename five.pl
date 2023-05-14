use strict;
use warnings;
use utf8;
use experimentals;

sub buttonClick($button, $entryWidget, $mainWindow) {
    my $buttonText = $button->cget('-text');
    my $current = $entryWidget->get();
    $entryWidget->delete(0, 'end');
    $entryWidget->insert(0, $current . $buttonText);
}

sub buttonClear($button, $entryWidget, $mainWindow) {
    $entryWidget->delete(0, 'end');
}

sub buttonEqual($button, $entryWidget, $mainWindow) {
    my $addString = $entryWidget->get();
    my @addends = split('\+', $addString);
    my $sum = 0;
    $sum += $_ foreach (@addends);
    $entryWidget->delete(0, 'end');
    $entryWidget->insert(0, $sum);
}

sub main() {
    use Tk;

    my $mainWindow = MainWindow->new();
    $mainWindow->title("Tk Calculator");
    
    #my $screenWidth = $mainWindow->screenwidth;
    #my $screenHeight = $mainWindow->screenheight;
    #my $screenResolution = join("x", $screenWidth, $screenHeight);
    #$mainWindow->geometry($screenResolution);

    my $entryWidget = $mainWindow->Entry(
        -width => 35,
        -borderwidth => 5,
        -fg => "black",
        -state => "normal",
        -font => "BitStream 12"
    ); # https://docstore.mik.ua/orelly/perl3/tk/ch05_02.htm

    $entryWidget->grid(
        -row => 0,
        -column => 0,
        -columnspan => 3,
        -padx => 10,
        -pady => 10,
    );

    my $buttonOne = $mainWindow->Button(
        -text => "1",
        -padx => 40,
        -pady => 20,
    );
    $buttonOne->configure(
        -command => [\&buttonClick, $buttonOne, $entryWidget, $mainWindow]
    );

    my $buttonTwo = $mainWindow->Button(
        -text => "2",
        -padx => 40,
        -pady => 20,
    );
    $buttonTwo->configure(
        -command => [\&buttonClick, $buttonTwo, $entryWidget, $mainWindow]
    );

    my $buttonThree = $mainWindow->Button(
        -text => "3",
        -padx => 40,
        -pady => 20,
    );
    $buttonThree->configure(
        -command => [\&buttonClick, $buttonThree, $entryWidget, $mainWindow]
    );

    my $buttonfour = $mainWindow->Button(
        -text => "4",
        -padx => 40,
        -pady => 20,
    );
    $buttonfour->configure(
        -command => [\&buttonClick, $buttonfour, $entryWidget, $mainWindow]
    );

    my $buttonfive = $mainWindow->Button(
        -text => "5",
        -padx => 40,
        -pady => 20,
    );
    $buttonfive->configure(
        -command => [\&buttonClick, $buttonfive, $entryWidget, $mainWindow]
    );

    my $buttonsix = $mainWindow->Button(
        -text => "6",
        -padx => 40,
        -pady => 20,
    );
    $buttonsix->configure(
        -command => [\&buttonClick, $buttonsix, $entryWidget, $mainWindow]
    );

    my $buttonseven = $mainWindow->Button(
        -text => "7",
        -padx => 40,
        -pady => 20,
    );
    $buttonseven->configure(
        -command => [\&buttonClick, $buttonseven, $entryWidget, $mainWindow]
    );

    my $buttoneight = $mainWindow->Button(
        -text => "8",
        -padx => 40,
        -pady => 20,
    );
    $buttoneight->configure(
        -command => [\&buttonClick, $buttoneight, $entryWidget, $mainWindow]
    );

    my $buttonnine = $mainWindow->Button(
        -text => "9",
        -padx => 40,
        -pady => 20,
    );
    $buttonnine->configure(
        -command => [\&buttonClick, $buttonnine, $entryWidget, $mainWindow]
    );

    my $buttonzero = $mainWindow->Button(
        -text => "0",
        -padx => 40,
        -pady => 20,
    );
    $buttonzero->configure(
        -command => [\&buttonClick, $buttonzero, $entryWidget, $mainWindow]
    );

    my $buttonadd = $mainWindow->Button(
        -text => "+",
        -padx => 39,
        -pady => 20,
    );
    $buttonadd->configure(
        -command => [\&buttonClick, $buttonadd, $entryWidget, $mainWindow]
    );

    my $buttonequal = $mainWindow->Button(
        -text => "=",
        -padx => 93,
        -pady => 20,
    );
    $buttonequal->configure(
        -command => [\&buttonEqual, $buttonequal, $entryWidget, $mainWindow]
    );

    my $buttonclear = $mainWindow->Button(
        -text => "Clear",
        -padx => 79,
        -pady => 20,
    );
    $buttonclear->configure(
        -command => [\&buttonClear, $buttonclear, $entryWidget, $mainWindow]
    );


    # put butttons to screen

    $buttonOne->grid(
        -row => 3,
        -column => 0,
    );

    $buttonTwo->grid(
        -row => 3,
        -column => 1,
    );

    $buttonThree->grid(
        -row => 3,
        -column => 2,
    );

    $buttonfour->grid(
        -row => 2,
        -column => 0,
    );

    $buttonfive->grid(
        -row => 2,
        -column => 1,
    );

    $buttonsix->grid(
        -row => 2,
        -column => 2,
    );

    $buttonseven->grid(
        -row => 1,
        -column => 0,
    );

    $buttoneight->grid(
        -row => 1,
        -column => 1,
    );

    $buttonnine->grid(
        -row => 1,
        -column => 2,
    );

    $buttonzero->grid(
        -row => 4,
        -column => 0
    );

    $buttonadd->grid(
        -row => 5,
        -column => 0
    );  
    $buttonclear->grid(
        -row => 4,
        -column => 1,
        -columnspan => 2,
    );
    $buttonequal->grid(
        -row => 5,
        -column => 1,
        -columnspan => 2,
    );

    MainLoop;
}

main();
