// use some j query to attach a confirmation popup to any elements with the class of confirmation 
$('.confirmation').on('click', function () {
    return confirm('Are you sure you want to delete this?');
});