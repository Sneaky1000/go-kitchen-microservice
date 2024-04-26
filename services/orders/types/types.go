package types

import (
	"context"

	"github.com/Sneaky1000/go-kitchen-microservice/services/common/genproto/orders"
)

type OrderService interface {
	CreateOrder(context.Context, *orders.Order) error
	GetOrders(context.Context) []*orders.Order
}
