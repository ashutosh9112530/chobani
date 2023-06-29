const cds = require("@sap/cds");

class orders extends cds.ApplicationService{

    async init(){
        const db = await cds.connect.to('db');

        const {orders} = cds.entities('scp.cloud');

        this.on('READ','readData',async (req)=>{
            
            let results = await SELECT.from(orders);
            return results;
        })


        this.on('READ','writedata',async (req)=>{
            let approvedata=[
                {
                    "order_id":1728,
                    "order_name":"ParleG",
                    "order_price":10
                },
                {
                    "order_id":1731,
                    "order_name":"ParleG",
                    "order_price":5
                }
            ]

            for(var i=0;i<approvedata.length;i++){

                await INSERT.into(orders).columns(
                    'order_id','order_name','order_price'
                ).values(
                    approvedata[i].order_id,approvedata[i].order_name,approvedata[i].order_price
                );
            }
        
            let results = SELECT.from(orders);
            return results;
    })
    this.on('READ','deleteData',async(req)=>{
            await DELETE.from(orders).where({'order_name' : 'ParleG'});
            let results = await SELECT.from(orders);
            return results;
    })

    await super.init();
    }
}
module.exports = {orders}
