import React, { Component } from 'react';
import EventTile from '../components/EventTile';

class EventsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      events: []
    }
  }

  render() {
    let active;
    let count = 0;
    let events = this.props.events.map(event => {
      if(count < 1) {
        active = 'active';
      } else {
        active = '';
      }
      count += 1;
      return (
        <EventTile
          key={event.id}
          id={event.id}
          name={event.name}
          feedUrl={event.feedUrl}
          imgUrl={event.image_url}
          active={active}
        />
      )
    })
    return (
      <div className='jumbotron'>
        <div id='eventCarouselControls' className='carousel slide' data-ride='carousel'>
          <div className='carousel-inner'>
            <h2>Events</h2>
            {events}
          </div>
          <a className='carousel-control-prev' href='#eventCarouselControls' role='button' data-slide='prev'>
            <span className='carousel-control-prev-icon' aria-hidden='true'></span>
          </a>
          <a className='carousel-control-next' href='#eventCarouselControls' role='button' data-slide='next'>
            <span className='carousel-control-next-icon' aria-hidden='true'></span>
          </a>
        </div>
      </div>
    )
  }
}

export default EventsIndexContainer;
