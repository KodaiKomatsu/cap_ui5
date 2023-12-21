const cds = require('@sap/cds')

module.exports = async function (){

    const bp = await cds.connect.to('API_BUSINESS_PARTNER');
    this.on('READ', '*', async req => {
        return bp.run(req.query);
    });

    this.after ('READ','Supplier', each => {
        if (each.Address == "")  each.Address = "Not Registered"
      })

}