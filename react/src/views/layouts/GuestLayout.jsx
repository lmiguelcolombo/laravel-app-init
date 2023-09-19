import { Navigate, Outlet } from "react-router-dom";
import { StateContext } from "../../contexts/ContextProvider";
import { useContext } from "react";

export default function GuestLayout() {
  const { token } = useContext(StateContext);
  if (token) {
    return <Navigate to="/books" />;
  }
  return (
    <div>
      GuestLayout
      <Outlet />
    </div>
  );
}
