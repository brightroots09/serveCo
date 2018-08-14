exports.getAllUser          = getAllUser;
exports.getUserById         = getUserById;
exports.editCustomerById    = editCustomerById;
exports.deleteUserById      = deleteUserById;
exports.getAllJobs          = getAllJobs;
exports.getJobById          = getJobById;
exports.editJobById         = editJobById;
exports.deleteJobById       = deleteJobById;

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
    let sql =  `select ${condition.fields} from ${table}  where id = ${condition.id}`
    con.query(sql, function(error, customer){
        if(error) callback(error)
        else{
            callback(null, customer)
        }
    })
}

function editCustomerById(table, condition, callback){
    let sql = `update ${table} set fname='${condition.update.fname}', lname='${condition.update.lname}', email='${condition.update.email}', contactno=${condition.update.contactno} where id = ${condition.id}`

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
    SELECT Services.ADDRESS, Services.URGENCY, Services.PROBLEM, Services.DESCRIPTION, Services.SERVICENAME, cust.Fname as customer_name, cust.Lname as customer_lastname, cont.Fname as contractor_name, tech.Fname as Technician_name from ServicesFunction Left JOIN Services on Services.ID = ServicesFunction.ServicesID LEFT JOIN User cust ON cust.Id = Services.UserId LEFT JOIN User cont ON cont.Id = ServicesFunction.ContractorID LEFT JOIN User tech ON tech.Id = ServicesFunction.TechnicianID;
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
    SELECT Services.ADDRESS, Services.URGENCY, Services.PROBLEM, Services.DESCRIPTION, Services.SERVICENAME, cust.Fname as customer_name, cust.Lname as customer_lastname, cont.Fname as contractor_name, tech.Fname as Technician_name from ServicesFunction Left JOIN Services on Services.ID = ServicesFunction.ServicesID LEFT JOIN User cust ON cust.Id = Services.UserId LEFT JOIN User cont ON cont.Id = ServicesFunction.ContractorID LEFT JOIN User tech ON tech.Id = ServicesFunction.TechnicianID where Services.ID=${condition.id};
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