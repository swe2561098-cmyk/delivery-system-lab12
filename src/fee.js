/** Жишээ тарифтай сургалтын функц (бодит тариф биш). */
function calculateFee(distanceKm) {
  if (typeof distanceKm !== 'number' || !Number.isFinite(distanceKm) || distanceKm < 0) {
    throw new Error('Invalid distance');
  }
  return 3000 + distanceKm * 500;
}
module.exports = { calculateFee };
