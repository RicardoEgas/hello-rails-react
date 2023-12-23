import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { fetchRandomGreeting } from './redux/greetingSlice';

const Greeting = () => {
  const dispatch = useDispatch();
  const { data } = useSelector((state) => state.greeting);

  useEffect(() => {
    dispatch(fetchRandomGreeting());
  }, [dispatch]);

  return (
    <div>
      <h2>Welcome to our application!</h2>
      {data && <p>{data.greeting}</p>}
    </div>
  );
};

export default Greeting;
