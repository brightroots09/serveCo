exports.getAllUser          = getAllUser;
exports.getUserById         = getUserById;
exports.editCustomerById    = editCustomerById;
exports.deleteUserById      = deleteUserById;
exports.getAllJobs          = getAllJobs;

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
    SELECT ${condition.fields} from ServicesList left JOIN Services ON Services.SERVICEID = ServicesList.Id LEFT JOIN ServicesFunction ON ServicesFunction.ServicesID = Services.ID LEFT JOIN User ON User.Id = Services.USERID;
    `
    con.query(sql, function(error, jobs){
        if(error) callback(error)
        else{
            callback(null, jobs)
        }
    })
}