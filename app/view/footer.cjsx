React = require 'react'

module.exports = React.createClass
  render: ->
    {startYear, currentYear, title, author} = @props
    if startYear
      startYear += '–'
    else
      startYear = ''
    begin = "All works "
    txt = "© #{startYear}#{currentYear} #{author or title}"
    end = " - Thanks to all the helpers making this possible"

    <footer>
      <div className="container">
        <h4 className="caps py1 border-bottom">Sponsors</h4>
        <p className="mb4">
          Please contact Jean Meconi at <a href="tel:443-257-5767" value={+14432575767} target="_blank">443-257-5767</a> or <a href="mailto:Urbanitejean@gmail com" target="_blank">Urbanitejean@gmail com</a> for advertising and sponsorship opportunities.
        </p>
        <p className="copyright">{begin + txt + end}</p>
        <small className="credits">Built by <a href="http://www.ookb.co/">OOKB</a>, Powered by <a href="http://www.ezle.io/">EZLE</a> / <a href="http://www.cape.io/">CAPE</a></small>
      </div>
    </footer>
