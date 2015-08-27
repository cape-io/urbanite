React = require 'react'

module.exports = React.createClass
  render: ->
    {content, userName} = @props

    if (userName)
      userEl = <div className="author"><em>{userName}</em> thought you might like this:</div>
    else
      userEl = false

    if (content)
      contentEl = <div className="blurb" dangerouslySetInnerHTML={{__html:content}} />
    else
      contentEl = false

    <div id="blurbette" className="outer block shadow col-3 bg-red white p2">
     <h2>Tidbits:</h2>
     { userEl }
     { contentEl }
    </div>
