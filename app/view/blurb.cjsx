React = require 'react'

module.exports = React.createClass
  render: ->
    {content, user_name} = @props

    if (user_name) {
      var userEl = <div className="author"><em>{user_name}</em> thought you might like this:</div>
    }
    else {
      var userEl = false
    }

    if (content) {
      var contentEl = <div className="blurb" dangerouslySetInnerHTML={{__html:content}} />
    }
    else {
      var contentEl = false
    }

    <div id="blurbette" className="outer block shadow col-3 bg-red white p2">
     <h2>Tidbits:</h2>
     { userEl }
     { contentEl }
    </div>
