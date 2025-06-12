import React, { FC } from 'react';
import './index.scss';

const HelloAppIndex : FC = () => {
  return (
    <div>
      <h1 className="bg-red">Hello, World!</h1>
      <hr />
      <p>This is the Hello App component.
      </p>
    </div>
  );
};

export default HelloAppIndex;