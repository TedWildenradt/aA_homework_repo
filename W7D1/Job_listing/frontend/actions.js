

export const selectLocation = (city, job) => ({
  type: SWITCH_LOCATION,
  city,
  job
})

window.selectLocation = selectLocation