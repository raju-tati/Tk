use strict;
use warnings;
use utf8;

sub main() {
    use Tk;
    use Tk::Dialog;

    my $mainWindow = MainWindow->new();
    
    my $dialog = $mainWindow->Dialog(
        -title => "Post Display",
    );

    my $textBox = $dialog->Text(
        -width => 100,
        -height => 40,
        -font => "newspaper 10",
        -relief => 'flat'
    );

    $textBox->insert('end', "Some text to insert");
    $textBox->pack();

    $dialog->Show;

    MainLoop;
}

main();
