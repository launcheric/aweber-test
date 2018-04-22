import React, { Component } from 'react';
import ArticlesIndexContainer from './ArticlesIndexContainer';
import EventsIndexContainer from './EventsIndexContainer';


class CauseShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      cause: "",
      events: [],
      articles: []
    }
    this.getUserSubscriber=this.getUserSubscriber.bind(this)
  }

  getUserSubscriber(){
    fetch(`http://localhost:8888/1.0/accounts/1245636/lists`, {
      method: "GET",
      credentials: 'same-origin'
    })
    .then (response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      debugger
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }


  componentDidMount() {
    fetch(`/api/v1/causes/${this.props.params.id}`, {
      credentials: 'same-origin'
    })
    .then (response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      let cause = body.cause
      let events = body.events
      let articles = body.articles
      this.setState({
        cause: cause,
        events: events,
        articles: articles
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    let subscribers = this.getUserSubscriber();
    return (
      <div>
        {this.state.cause.details}
        <ArticlesIndexContainer
          articles = {this.state.articles}
        />
        <EventsIndexContainer
          events = {this.state.events}
        />
      </div>
    )
  }
}

export default CauseShowContainer;
