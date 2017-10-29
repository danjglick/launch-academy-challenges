fetch('http://localhost:4567/test_error')
  .then(response => {
    if (response.ok) {
      return response;
    } else {
      let errorMessage = `${response.status} (${response.statusText})`
          error = new Error(errorMessage);
      throw(error);
    }
  })
  .then(response => {
    console.log('response', response);
    console.log('response.status:', response.status);
    console.log('response.statusText:', response.statusText);
    console.log('response.ok:', response.ok);
    return response.text();
  })
  .then(responseBody => {
    console.log('responseBody:', responseBody);
  })
  .catch(error => console.error(`Error in fetch: ${error.message}`));

