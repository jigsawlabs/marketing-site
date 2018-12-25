$(document).ready(function(){
  $('#syllabus .list-group-item').click(function(event){
    let number = $(this).data('number')
    let width = number*25 -25
    let bar = $('#syllabus .progress-bar.first')
    bar.width(width + '%')
    let text = ''
    if(number == 1){
      text = 'Week 1 - 3'
    }else if(number == 2){
       text = 'Week 4 - 6'
    }else if(number == 3){
       text = 'Week 7 - 9'
    }else if(number == 4){
       text = 'Week 10'
    }
    let secondbar = $('.progress-bar.second')
    secondbar.text(text)
  })

})
