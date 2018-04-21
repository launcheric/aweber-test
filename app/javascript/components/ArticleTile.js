import React from 'react';

const ArticleTile = props => {
  return (
    <div className={`carousel-item ${props.active}`}>
      <img className="d-block" src={`${props.imgUrl}`} style={{height: '400px', margin: '0 auto'}}/>
      <div className="d-block">
        <h3>{props.name}</h3>
        <h4>{props.feedUrl}</h4>
      </div>
    </div>
  )
}

export default ArticleTile;
