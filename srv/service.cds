using scp.cloud from '../db/schema';

service orders{

    entity orders as projection on cloud.orders;
    entity order_name as select from cloud.orders{order_name};

}