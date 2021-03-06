class Dashing.Customtextcount extends Dashing.Widget
	@accessor 'updatedAtMessage', ->
    if updatedAt = @get('updatedAt')
      timestamp = new Date(updatedAt * 1000)
      year = timestamp.getFullYear()
      month = timestamp.getMonth()+1
      date = timestamp.getDate()
      hours = timestamp.getHours()
      minutes = ("0" + timestamp.getMinutes()).slice(-2)
      seconds = ("0" + timestamp.getSeconds()).slice(-2)
      "Last updated at #{date}-#{month}-#{year} #{hours}:#{minutes}:#{seconds}"