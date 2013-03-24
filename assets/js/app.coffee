catify = (text) ->
  output = {}
  weak = text
  strong = text
  weak = weak.replace /(maybe)/g, '<span class="highlight">$1</span>'
  weak = weak.replace /(actually)/g, '<span class="highlight">$1</span>'
  weak = weak.replace /!(!+)/g, '<span class="highlight">!$1</span>'
  weak = weak.replace /(sometime)(\ssoon)/g, '<span class="highlight">$1</span>$2'
  strong = strong.replace 'maybe', '<span class="mad-cat">     </span>'
  strong = strong.replace 'actually', '<span class="mad-cat">        </span>'
  strong = strong.replace /!(!)/g, '<span class="mad-cat"> </span>'
  strong = strong.replace /sometime\s(soon)/g, '<span class="mad-cat">        </span> $1'

  output.weak = weak
  output.strong = strong
  return output

$(document).ready ->

  $('#magic').click ->
    output = catify $('#weak').html()
    $('#weak').html output.weak
    $('#strong').html output.strong