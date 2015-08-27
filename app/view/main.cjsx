React = require 'react'
{RouteHandler} = require 'react-router'
_ = require 'lodash'

Blurb = require './blurb'

module.exports = React.createClass

  render: ->
    {slack} = @props
    if slack
      slackEl = <Blurb content={slack.content} userName={slack.user_name} />

    <main>
      <section id="hero" className="center white">
        <div className="md-col-7 mlrauto">
          <img src="urb-logo-trans2.png" className="mt2 logo-icon" />
          <h1 className="h1 h0-responsive mt2 mb0 text-shadow allcaps">Urbanite Baltimore</h1>
          <p className="h3 text-shadow pb2">Special Issue — November 2015</p>
        </div>
      </section>
      <section id="explain">
        <div className="container">
          <h1 className="mt0 fullwidth text-gradient allcaps league-gothic-stack center">Truth, Reconciliation, and Baltimore</h1>
          <div className="container" id="video">
            <div className="embed-container">
              <iframe src="https://www.youtube.com/embed/dc0ppRxmsRw" frameBorder={0} allowFullScreen />
            </div>
          </div>
          <div className="relative">
            <p className="lead3 md-col-7 mlrauto">
              For nine years, <em>Urbanite</em> magazine told stories about the city—its people, its problems, and its potential. Its last issue was published in 2012. But in the aftermath of the civil unrest that gripped the city in the spring of 2015, several members of the staff reconvened to produce a special issue, both online and in print. At this critical moment in the city’s history, we’re convinced that Baltimore needs clear-eyed perspective on its most intractable issues: racial justice, economic opportunity, and public safety. And it needs inspired solutions for moving past them.
            </p>
            <p className="lead2 md-col-5 offset-by-two">
              Residents have responded to April's unrest in lots of different ways—with anger, generosity, hope, and sometimes all of the above. We’re asking our former (and future) readers to share their experiences and contribute their best ideas on how to make this city work better. What actions have inspired you? And what do you think Baltimore needs now to move forward?
            </p>
            <p className="lead1 md-col-5 offset-by-seven">
              Our goal is the help change the discussion from one mired in frustration and despair to one that is both realistic and full of possibility.
            </p>
            <p className="lead1"><a className="uno md-col-6 mlrauto center scrolling" href="#question">Share your thoughts and ideas in the form below.</a>
            </p>
          </div>

          {slackEl}

        </div>
      </section>
      <section id="question" className="border-top border-bottom bg-gray">
        <div className="container">
          <div className="md-col-8 mlrauto">
            <iframe src="https://docs.google.com/forms/d/1JUwnYTRew291RBCDLqn9CcQSK9Gi9FNJYvHSPXGj0Ug/viewform?embedded=true" width="100%" height={750} frameBorder={0} marginHeight={0} marginWidth={0}>Loading...</iframe>
          </div>
        </div>
      </section>

      <section id="signup" className>
        <div id="mc_embed_signup" className="container px4 white">
          <form action="//UrbaniteBaltimore.us11.list-manage.com/subscribe/post?u=f623dacbd658b74d58b5af65f&id=49e96d7460" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" className="validate md-col-10 relative" target="_blank" noValidate>
            <div id="mc_embed_signup_scroll">
              <h1 className="h3 caps center mt0 mb2">Stay up to date</h1>
              <div className="mc-field-group clearfix">
                <label htmlFor="mce-EMAIL" className="icon email center"><span className="hide">Email Address</span> <i className="fa fa-envelope-o fa-3x" /></label>
                <input type="email" defaultValue name="EMAIL" className="required email" id="mce-EMAIL" placeholder="Your email please, you@url.com" />
              </div>
              <p className="special offset black visible-md">Powered by <a href="http://eepurl.com/bv2plD" className="black" title="MailChimp - email marketing made easy and fun">MailChimp</a></p>
              <div id="mce-responses" className="clear">
                <div className="response" id="mce-error-response" style={{display: 'none'}} />
                <div className="response" id="mce-success-response" style={{display: 'none'}} />
              </div>
              <div style={{position: 'absolute', left: '-5000px'}}>
                <input type="text" name="b_f623dacbd658b74d58b5af65f_49e96d7460" tabIndex={-1} defaultValue />
              </div>
              <div className="clear">
                <input type="submit" defaultValue="Subscribe" name="subscribe" id="mc-embedded-subscribe" className="button btn btn-primary bg-yellow black caps" />
              </div>
            </div>
          </form>
        </div>
      </section>

      <section id="misc" className>
        <div className="container">
          <div className="clearfix mxn2">
            <div className="md-col md-col-4 center card archive">
              <i className="fa fa-book fa-5x text-gradient" />
              <h2 className="h1 mb0">Archive</h2>
              <p><a href="http://issuu.com/urbanitemagazine" className="black">Past issues of Urbanite can currently be found on Issuu.com</a></p>
            </div>
            <div className="md-col md-col-4 center card contact">
              <i className="fa fa-envelope fa-5x text-gradient" />
              <h2 className="h1 mb0">Contact</h2>
              <p>team@urbanitebaltimore.com</p>
              <ul className="list-reset">
                <li className="inline-block mr1"><a href="https://www.facebook.com/pages/Urbanite-Magazine/14657547391"><i className="fa fa-facebook-square fa-2x text-gradient" /></a></li>
                <li className="inline-block mr1"><a href="https://twitter.com/urbanitemd"><i className="fa fa-twitter-square fa-2x text-gradient" /></a></li>
              </ul>
            </div>
          </div>
        </div>
      </section>
    </main>
