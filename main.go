package main

import (
	"fmt"
	"net/http"
	"os"

	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

var envName = os.Getenv("ENV_NAME")

func main() {
	e := echo.New()
	e.Use(middleware.Logger())

	e.GET("/", func(c echo.Context) error {
		message := fmt.Sprintf("Hello, k8s golang app🐶. env name: %s", envName)

		return c.String(http.StatusOK, message)
	})

	e.Logger.Fatal(e.Start(":8080"))
}
