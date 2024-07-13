package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/leMoreira/api-devbook/src/config"
	"github.com/leMoreira/api-devbook/src/router"
)

func main() {
	config.Carregar()

	fmt.Printf("Escutando na porta %d", config.Porta)

	r := router.Gerar()

	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%d", config.Porta), r))

}
