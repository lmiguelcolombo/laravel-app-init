import { useContext } from "react";
import { Navigate, Outlet } from "react-router-dom";
import { StateContext } from "../../contexts/ContextProvider";

export default function AuthLayout() {
  const { token } = useContext(StateContext);

  if (!token) {
    return <Navigate to="/login" />;
  }
  return (
    <div>
      <Outlet />
    </div>
  );
}
