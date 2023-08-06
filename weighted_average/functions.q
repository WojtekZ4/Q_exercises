vwap:{[path; start; end]
  data:("ZSFI";enlist",") 0: path;
  data: data[where (data[`time] >= start) & (data[`time] <= end)];
  grouped: group data[`name];
  weights: (data[`size]grouped) % (sum each data[`size]grouped);
  prices: data[`price]grouped;
  out: sum each prices * weights;
  out}
  
twap:{[path; start; end]
  data:("ZSFI";enlist",") 0: path;
  data: data[where (data[`time] >= start) & (data[`time] <= end)];
  grouped: group data[`name];
  deltas0: {first[x] -': x};
  weights: (deltas0 each data[`time]grouped) % (sum each deltas0 each data[`time]grouped);
  prices: data[`price]grouped;
  out: sum each prices * weights;
  out}