using scp.cloud from '../db/schema';

service orders{

    entity orders as projection on cloud.orders;
    entity order_name as select from cloud.orders{order_name};


    entity readData{
        order_id:Integer;
        order_name: String(50);
        order_price:Integer;
    }

    entity writedata{
        order_id:Integer;
        order_name: String(50);
        order_price:Integer;
    }
    entity deleteData{
        order_id:Integer;
        order_name: String(50);
        order_price:Integer;
    }

}

// class CatalogService extends cds.ApplicationService {

//     async init() {
//         const db = await cds.connect.to('db');

//         const { order_name,order_id} = cds.entities ('app.zsales_order');

//    this.on ('rejectIdoc', async (req) => {
//             var { data } = req.data
//             let approvedata = JSON.parse(data)
//             for(var i=0;i<approvedata.length;i++){
//                 console.log(approvedata[i]['Sales_Order_Request']);
//                 let so_header =  await SELECT.from(so_header_data).where({SALES_DOCUMENT :approvedata[i]['ID'] });

//                 let salord = await UPDATE(so_header_data).set({STATUS : 'Rejected'}).where({SALES_DOCUMENT:approvedata[i]['ID'] });     
//                 if(so_header && so_header.length){
//                 await INSERT.into(SoChangeLog).columns (
//                     'salesorder', 'soItem', 'fieldName', 'fieldDescription','oldvalue','newvalue'
//                 ) .values (
//                     approvedata[i]['ID'], "  ", 'STATUS', 'SOR Status',so_header[0]['STATUS'],'Rejected'
//                 ) ;
//                 }
//             }
//             return { Status: 201 };
//         });
//     }
// }
