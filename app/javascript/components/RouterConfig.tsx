import React, { FC } from "react";
import { CookiesProvider } from 'react-cookie';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import HelloAppIndex from './hello_app';

type RouterConfigProps = {
  fileUrl: string;
};

const RouterConfig: FC<RouterConfigProps> = ({ fileUrl }) => (
  <BrowserRouter
    future={{
        v7_startTransition: true,
        v7_relativeSplatPath: true,
    }}
  >
    <CookiesProvider>
      <Routes>
        <Route path="/" element={<HelloAppIndex />} />
      </Routes>
    </CookiesProvider>
  </BrowserRouter>
);

export default RouterConfig;