namespace scp.cloud;

entity orders {
    order_id:Integer @title : 'Order ID';
    order_name: String(50) @title : 'Order Name';
    order_price:Integer @title : 'Price';
}

entity amount{
    order_amount : Integer @title : 'Amount';
}