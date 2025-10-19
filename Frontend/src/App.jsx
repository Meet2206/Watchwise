import React, { useState } from 'react';
import axios from 'axios';
import FilterForm from './components/FilterForm';
import WatchCard from './components/WatchCard';

function App() {
  const [watches, setWatches] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [empty, setEmpty] = useState(false);

  const handleRecommend = async ({ minBudget, maxBudget, occupation, style }) => {
    setLoading(true);
    setError('');
    setEmpty(false);
    setWatches([]);
    try {
      const resp = await axios.post('http://localhost:5000/recommend', {
        minBudget,
        maxBudget,
        occupation,
        style
      });
      if (resp.data && resp.data.watches && resp.data.watches.length > 0) {
        setWatches(resp.data.watches);
      } else {
        setEmpty(true);
      }
    } catch (err) {
      setError(err?.response?.data?.error || "Server error. Please try again.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="app-container">
      <h1>WatchWise</h1>
      <FilterForm onRecommend={handleRecommend} loading={loading} />
      {loading && <p style={{ textAlign: 'center' }}>Loading recommendations...</p>}
      {error && <p style={{ color: 'red', textAlign: 'center' }}>{error}</p>}
      {empty && <p style={{ textAlign: 'center' }}>No watches found for your criteria.</p>}
      <div className="results-grid">
        {watches.map(watch => (
          <WatchCard key={watch.id} watch={watch} />
        ))}
      </div>
    </div>
  );
}

export default App;
