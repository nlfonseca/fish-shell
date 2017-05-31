function tt  --description 'MrTickTock'
  if  test (count $argv) -eq 0
    curl -d 'email=nelson.fonseca@tekzenit.com&password=vV$gMbw2m9k=YJHwfTyL' https://mrticktock.com/app/api/get_tasks | python -mjson.tool
    return
  end

  set id $argv[1]
  set today (date '+%d-%m-%Y')

  if  test (count $argv) -gt 1
    set hours $argv[2]
  else
    set hours 8
  end

  curl -d 'email=nelson.fonseca@tekzenit.com&password=vV$gMbw2m9k=YJHwfTyL&task_id='$id'&time='$hours'&date='$today https://mrticktock.com/app/api/report_time_on_task

  set_color blue
  echo \n\n'You report' $hours 'hours on task' $id'.'
  set_color normal
  echo 'Do not forget Teknet. Thank you.'\n
end
