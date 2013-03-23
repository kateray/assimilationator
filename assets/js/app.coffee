catify = (text) ->
  output = {}
  weak = text
  strong = text
  weak = weak.replace /(maybe)/g, '<span class="highlight">$1</span>'
  weak = weak.replace /(actually)/g, '<span class="highlight">$1</span>'
  weak = weak.replace /!(!+)/g, '<span class="highlight">!$1</span>'
  strong = strong.replace 'maybe', '<span class="highlight">:)</span>'
  strong = strong.replace 'actually', '<span class="highlight">:)</span>'
  strong = strong.replace /!(!)/g, '<span class="highlight">:)</span>'

  output.weak = weak
  output.strong = strong
  return output

$(document).ready ->

  $('button').click ->
    output = catify $('#weak').html()
    console.log output
    $('#weak').html output.weak
    $('#strong').html output.strong