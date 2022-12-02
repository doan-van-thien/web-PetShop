document.getElementById('nextx').onclick = function(){
    let lists = document.querySelectorAll('.itemx');
    document.getElementById('slidex').appendChild(lists[0]);
}
document.getElementById('prevx').onclick = function(){
    let lists = document.querySelectorAll('.itemx');
    document.getElementById('slidex').prepend(lists[lists.length - 1]);
}
//sticky
$(window).scroll(function(){
    if ($(window).scrollTop() >= 30) {
        $('#header').addClass('fixed-header');
       
    }
    else {
        $('#header').removeClass('fixed-header');
    
    }
});
