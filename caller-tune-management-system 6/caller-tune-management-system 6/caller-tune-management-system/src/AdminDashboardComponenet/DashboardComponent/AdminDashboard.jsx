// src/pages/AdminDashboard.jsx
import React, { useState } from "react";
import AdminNavbar from "../NavBarComponent/AdminNavbar.jsx";  // ✅ corrected path
import Carousel from "../Carousel/carousel.jsx";

export default function AdminDashboard() {
  // Mock Users (replace with API later)
  const [users, setUsers] = useState([
    { id: 1, phone: "9876543210", blocked: false },
    { id: 2, phone: "9123456789", blocked: true },
    { id: 3, phone: "9988776655", blocked: false },
  ]);

  const [message, setMessage] = useState("");

  const handleBlock = (id) => {
    setUsers(users.map((u) => (u.id === id ? { ...u, blocked: true } : u)));
    setMessage(`🚫 User ${id} has been BLOCKED`);
  };

  const handleUnblock = (id) => {
    setUsers(users.map((u) => (u.id === id ? { ...u, blocked: false } : u)));
    setMessage(`✅ User ${id} has been UNBLOCKED`);
  };

  const handleDelete = (id) => {
    setUsers(users.filter((u) => u.id !== id));
    setMessage(`❌ User ${id} has been DELETED`);
  };

  return (
    <div className="d-flex flex-column vh-100">
      {/* ✅ Navbar */}
      <AdminNavbar />

      {/* ✅ Main Content */}
      <div className="container-fluid mt-4">
        {/* Carousel */}
        <div className="mb-5">
          <Carousel intervalMs={2500} />
        </div>

        {/* Features Section */}
        <h2 className="mb-4 fw-bold">Admin Features</h2>

        {/* Users Table */}
        <div className="card shadow-sm">
          <div className="card-body">
            <h4 className="mb-3">📋 Manage Users</h4>

            <table className="table table-hover align-middle">
              <thead className="table-dark">
                <tr>
                  <th>User ID</th>
                  <th>Phone</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                {users.map((u) => (
                  <tr key={u.id}>
                    <td>{u.id}</td>
                    <td>{u.phone}</td>
                    <td>
                      {u.blocked ? (
                        <span className="badge bg-danger">Blocked</span>
                      ) : (
                        <span className="badge bg-success">Active</span>
                      )}
                    </td>
                    <td>
                      {u.blocked ? (
                        <button
                          className="btn btn-sm btn-success me-2"
                          onClick={() => handleUnblock(u.id)}
                        >
                          Unblock
                        </button>
                      ) : (
                        <button
                          className="btn btn-sm btn-danger me-2"
                          onClick={() => handleBlock(u.id)}
                        >
                          Block
                        </button>
                      )}
                      <button
                        className="btn btn-sm btn-outline-danger"
                        onClick={() => handleDelete(u.id)}
                      >
                        Delete
                      </button>
                    </td>
                  </tr>
                ))}
                {users.length === 0 && (
                  <tr>
                    <td colSpan="4" className="text-center text-muted">
                      No users available
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>
        </div>

        {/* Status Alert */}
        {message && (
          <div className="alert alert-info mt-3 shadow-sm">{message}</div>
        )}
      </div>
    </div>
  );
}
