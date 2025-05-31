"use client";

import React, { useState, useEffect } from "react";

export default function Home() {
  // Updated Todo interface to match the database schema
  interface Todo {
    TodoID: number;
    UserID: number;
    Title: string;
    Description?: string;
    IsCompleted: boolean; // Converted from INTEGER (0/1) to boolean
    DueDate?: string; // DATE as a string
    CreatedAt: string; // TIMESTAMP as a string
  }

  const [todos, setTodos] = useState<Todo[]>([]);

  // Fetch todos from the API
  useEffect(() => {
    const fetchTodos = async () => {
      try {
        const response = await fetch("/api/todo");
        if (!response.ok) {
          throw new Error("Failed to fetch todos");
        }
        const data: Todo[] = await response.json();

        // Convert IsCompleted from 0/1 to boolean
        const formattedData = data.map((todo) => ({
          ...todo,
          IsCompleted: !!todo.IsCompleted,
        }));

        setTodos(formattedData);
      } catch (error) {
        console.error("Error fetching todos:", error);
      }
    };

    fetchTodos();
  }, []);

  return (
    <div className="min-h-screen bg-gray-100 flex flex-col items-center p-4">
      <h1 className="text-4xl font-bold text-blue-600 mb-6">To-Do List</h1>
      <div className="w-full max-w-md bg-white shadow-md rounded-lg p-6">
        <div className="flex items-center mb-4">
          <input
            type="text"
            placeholder="Add a new task"
            className="flex-1 border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
          <button className="ml-2 bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600">
            Add
          </button>
        </div>
        <ul className="space-y-2">
          {todos &&
            todos.map((task) => (
              <li
                key={task.TodoID}
                className="flex justify-between items-center bg-gray-100 px-4 py-2 rounded-lg shadow-sm"
              >
                <div>
                  <span className="text-black font-bold">{task.Title}</span>
                  {task.Description && (
                    <p className="text-gray-600 text-sm">{task.Description}</p>
                  )}
                  {task.DueDate && (
                    <p className="text-gray-500 text-xs">
                      Due: {new Date(task.DueDate).toLocaleDateString()}
                    </p>
                  )}
                </div>
                <button className="text-red-500 hover:text-red-700">
                  Remove
                </button>
              </li>
            ))}
        </ul>
      </div>
    </div>
  );
}
