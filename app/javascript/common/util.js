export default {
};

export const SafeTrim = (value) => {
  return (typeof value === 'string') ? value.trim() : value;
};
