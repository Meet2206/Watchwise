import React from 'react';

function WatchCard({ watch }) {
  return (
    <div className="watch-card">
      <img src={watch.image_url || '/default-watch.png'} alt={watch.brand + " " + watch.model} />
      <div className="watch-brand">{watch.brand}</div>
      <div className="watch-model">{watch.model}</div>
      <div className="watch-price">₹{watch.price}</div>
      <div className="watch-style">Style: {watch.style}</div>
      <div className="watch-occupation">For: {watch.occupation_fit}</div>
      {watch.buy_link && (
        <a className="watch-buy-link" href={watch.buy_link} target="_blank" rel="noopener noreferrer">
          View Watch
        </a>
      )}
    </div>
  );
}

export default WatchCard;
