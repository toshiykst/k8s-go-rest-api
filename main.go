package main

import (
	"fmt"
	"net/http"
	"os"

	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

func main() {
	e := echo.New()
	e.Use(middleware.Logger())

	e.GET("/", func(c echo.Context) error {
		res := fmt.Sprintf("Hello, k8s app🐶. env: %s", os.Getenv("ENV_NAME"))
		return c.String(http.StatusOK, res)
	})

	e.Logger.Fatal(e.Start(":8080"))
}
