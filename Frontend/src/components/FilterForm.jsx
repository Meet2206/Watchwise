import React, { useState } from 'react';

const occupations = [
  'Student',
  'Teacher',
  'Businessman',
  'Athlete',
  'Explorer'
];

const styles = [
  'Sporty',
  'Formal',
  'Casual'
];

// Budget ranges
const budgetRanges = [
  { label: "₹500 - ₹5,000", min: 500, max: 5000 },
  { label: "₹5,001 - ₹10,000", min: 5001, max: 10000 },
  { label: "₹10,001 - ₹15,000", min: 10001, max: 15000 },
  { label: "₹15,001 - ₹20,000", min: 15001, max: 20000 },
  { label: "₹20,001 - ₹50,000", min: 20001, max: 50000 }
];

function FilterForm({ onRecommend, loading }) {
  const [budget, setBudget] = useState('');
  const [occupation, setOccupation] = useState('');
  const [style, setStyle] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    if (!budget || !occupation || !style) {
      alert("Please fill all fields.");
      return;
    }
    const selectedRange = budgetRanges.find(b => b.label === budget);
    onRecommend({ 
      minBudget: selectedRange.min, 
      maxBudget: selectedRange.max, 
      occupation, 
      style 
    });
  };

  return (
    <form className="filter-form" onSubmit={handleSubmit}>
      <select
        value={budget}
        onChange={e => setBudget(e.target.value)}
        disabled={loading}
      >
        <option value="">Select Budget Range</option>
        {budgetRanges.map(b => (
          <option key={b.label} value={b.label}>{b.label}</option>
        ))}
      </select>

      <select
        value={occupation}
        onChange={e => setOccupation(e.target.value)}
        disabled={loading}
      >
        <option value="">Select Occupation</option>
        {occupations.map(o => <option key={o} value={o}>{o}</option>)}
      </select>

      <select
        value={style}
        onChange={e => setStyle(e.target.value)}
        disabled={loading}
      >
        <option value="">Select Style</option>
        {styles.map(s => <option key={s} value={s}>{s}</option>)}
      </select>

      <button type="submit" disabled={loading}>
        {loading ? "Finding..." : "Find Watches"}
      </button>
    </form>
  );
}

export default FilterForm;
