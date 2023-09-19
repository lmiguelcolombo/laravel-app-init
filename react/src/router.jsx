import { createBrowserRouter } from "react-router-dom";
import AuthLayout from "./views/layouts/AuthLayout";
import GuestLayout from "./views/layouts/GuestLayout";
import Login from "./views/Login";
import Books from "./views/Books";
import NotFound from "./views/NotFound";
import SignUp from "./views/SignUp";

const router = createBrowserRouter([
  {
    path: "/",
    element: <AuthLayout />,
    children: [
      {
        path: "/books",
        element: <Books />,
      },
      {
        path: "/books",
        element: <Books />,
      },
    ],
  },
  {
    path: "/",
    element: <GuestLayout />,
    children: [
      {
        path: "/login",
        element: <Login />,
      },
      {
        path: "/sign-up",
        element: <SignUp />,
      },
      {
        path: "/logout",
        element: <Login />,
      },
    ],
  },
  {
    path: "*",
    element: <NotFound />,
  },
]);

export default router;
