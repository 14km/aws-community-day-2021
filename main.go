package main

import (
	"github.com/labstack/echo/v4"
	"net/http"
)

func main() {
	// Echo instance
	e := echo.New()

	// Routes
	e.GET("/hello", hello)

	e.GET("/ping", ping)

	e.Logger.Fatal(e.Start(":8080"))
}

func hello(c echo.Context) error {
	return c.String(http.StatusOK, "Hello, World!!!!")
}

func ping(c echo.Context) error {
	return c.String(http.StatusOK, "Pong")
}
