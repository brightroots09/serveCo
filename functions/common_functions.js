exports.getAllUser          = getAllUser;
exports.getUserById         = getUserById;
exports.editCustomerById    = editCustomerById;
exports.deleteUserById      = deleteUserById;

exports.getAllJobs          = getAllJobs;
exports.getJobById          = getJobById;
exports.editJobById         = editJobById;
exports.deleteJobById       = deleteJobById;

exports.getQuote            = getQuote;
exports.deleteQuote         = deleteQuote;
exports.getQuoteById        = getQuoteById;
exports.editQuoteById       = editQuoteById;

exports.getAllInvoice       = getAllInvoice;
exports.getInvoiceById      = getInvoiceById;
exports.editInvoiceById     = editInvoiceById;
exports.deleteInvoiceById   = deleteInvoiceById;


function getAllUser(table, condition, callback) {
    let sql = `select ${condition.fields} from ${table} where UserType = '${condition.user_type}'`
    con.query(sql, function (error, customer) {
        if (error) callback(error)
        else {
            callback(null, customer)
        }
    })
}

function getUserById(table, condition, callback){
    let sql;
    if(condition.join){
        sql =  `select ${condition.fields}, ${condition.additional} from ${table} ${condition.join} where User.id = ${condition.id} LIMIT 0,1`
    }
    else{
        sql =  `select ${condition.fields} from ${table}  where id = ${condition.id}`
    }
    con.query(sql, function(error, customer){
        if(error) callback(error)
        else{
            callback(null, customer)
        }
    })
}

function editCustomerById(table, condition, callback){
    // let sql = `
    // update ${table} set fname='${condition.update.fname}', lname='${condition.update.lname}', email='${condition.update.email}', contactno=${condition.update.contactno} where id = ${condition.id}
    // `

    con.query(sql, function(error, customer){
        if(error) callback(error)
        else{
            callback(null, customer)
        }
    })
    
}

function deleteUserById(table, condition, callback){
    let sql = `delete from ${table} where id = ${condition.id}`

    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(null, result)
        }
    })

}


function getAllJobs(condition ,callback){
    let sql = `
    SELECT Services.ID as service_id, Services.ADDRESS, Services.URGENCY, Services.PROBLEM, Services.DESCRIPTION, Services.SERVICENAME, cust.Fname as customer_Fname, cust.Lname as customer_Lname, cont.Fname as contractor_Fname, cont.Lname as contractor_Lname, tech.Fname as technician_Fname, tech.Lname as technician_Lname from ServicesFunction Left JOIN Services on Services.ID = ServicesFunction.ServicesID LEFT JOIN User cust ON cust.Id = Services.UserId LEFT JOIN User cont ON cont.Id = ServicesFunction.ContractorID LEFT JOIN User tech ON tech.Id = ServicesFunction.TechnicianID;
    `
    con.query(sql, function(error, jobs){
        if(error) callback(error)
        else{
            callback(null, jobs)
        }
    })
}

function getJobById(condition, callback){
    let sql = `
    SELECT Services.ADDRESS, Services.URGENCY, Services.PROBLEM, Services.DESCRIPTION, Services.SERVICENAME, cust.Fname as customer_Fname, cust.Lname as customer_Lname, cust.ProfilePic as customer_profile, cont.CompanyName as company_name, cont.Fname as contractor_Fname, cont.Lname as contractor_Lname, tech.Fname as technician_Fname, tech.Lname as technician_Lname, Estimation.PricePerHour as estimate_price_charge, Estimation.DiagnosticCharges as estimate_diagnostic_charge from ServicesFunction Left JOIN Services on Services.ID = ServicesFunction.ServicesID LEFT JOIN User cust ON cust.Id = Services.UserId LEFT JOIN User cont ON cont.Id = ServicesFunction.ContractorID LEFT JOIN User tech ON tech.Id = ServicesFunction.TechnicianID LEFT JOIN ESTIMATION ON Estimation.ServicesID = Services.ID where Services.ID=${condition.id};
    `
    con.query(sql, function(error, jobs){
        if(error) callback(error)
        else{
            callback(null, jobs)
        }
    })
}

function editJobById(condition, callback){
    let sql = `
    
    `
    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(null, result)
        }
    })
}

function deleteJobById(condition, callback){
    let sql = `
    DELETE from Services where Services.ID = ${condition.id};
    `

    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(null, result)
        }
    })
}

function getQuote(condition, callback){
    let sql = `
    SELECT Estimation.ID, contractor.Fname as contractor_Fname, contractor.Lname as contractor_lastname, service.ADDRESS as service_address, service.URGENCY as service_urgency, service.PROBLEM as service_problem, service.DESCRIPTION as service_description, service.SERVICENAME as service_name, Estimation.PricePerHour, Estimation.TravelCharges, Estimation.TruckCharges, Estimation.ETA, Estimation.Status, Estimation.CreatedBy, Estimation.DiagnosticCharges, accepted_user.Fname as accepted_user_Fname, accepted_user.Lname as accepted_user_Lname from Estimation LEFT JOIN User contractor ON contractor.Id = Estimation.UserID LEFT JOIN User accepted_user ON accepted_user.Id = Estimation.AcceptedBy LEFT JOIN Services service ON service.ID = Estimation.ServicesID;
    `
    con.query(sql, function(error, result){
        if(error) callback(error)
        else {
            callback(null, result)
        }
    })
}

function getQuoteById(condition, callback){
    let sql = `
    SELECT Estimation.ID, contractor.Fname as contractor_Fname, contractor.Lname as contractor_lastname, service.ADDRESS as service_address, service.URGENCY as service_urgency, service.PROBLEM as service_problem, service.DESCRIPTION as service_description, service.SERVICENAME as service_name, Estimation.PricePerHour, Estimation.TravelCharges, Estimation.TruckCharges, Estimation.ETA, Estimation.Status, Estimation.CreatedBy, Estimation.DiagnosticCharges, accepted_user.Fname as accepted_user_Fname, accepted_user.Lname as accepted_user_Lname from Estimation LEFT JOIN User contractor ON contractor.Id = Estimation.UserID LEFT JOIN User accepted_user ON accepted_user.Id = Estimation.AcceptedBy LEFT JOIN Services service ON service.ID = Estimation.ServicesID where Estimation.ID=${condition.id};
    `
    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(null, result)
        }
    })

}

function editQuoteById(condition, callback){
    let sql = `

    `
    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(null, result)
        }
    })

}

function deleteQuote(condition, callback){
    let sql = `
        DELETE from Estimation where ID = ${condition.id}
    `
    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(null, result)
        }
    })

}

function getAllInvoice(condition, callback){
    let sql = `
    SELECT Invoice.InvoiceID as invoice_id, user.Id as user_id, user.Fname as user_fname, user.Lname as user_lname, Invoice.Amount as amount from Invoice LEFT JOIN User user on user.Id = Invoice.UserID;
    `
    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(null, result)
        }
    })

}

function getInvoiceById(condition, callback){
    let sql = `
    SELECT Invoice.InvoiceID as invoice_id, user.Id as user_id, user.Fname as user_fname, user.Lname as user_lname, Invoice.Amount as amount from Invoice LEFT JOIN User user on user.Id = Invoice.UserID where Invoice.InvoiceID = ${condition.id};
    `
    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(error, result)
        }
    })

}

function editInvoiceById(condition, callback){
    let sql = `
    
    `
    con.query(sql, function(error, result){
        if(error) callback(error)
        else{
            callback(null, result)
        }
    })

}

function deleteInvoiceById(condition, callback){
    let sql =  `
        DELETE from Invoice where Invoice.InvoiceID = ${condition.id}
    `

    con.query(sql, function(error, result){
        if(error) callback(error)
        else {
            callback(null, result)
        }
    })
}