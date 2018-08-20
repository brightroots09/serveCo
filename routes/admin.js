var express = require("express");
var router = express.Router();
var common_function = require("../functions/common_functions");
var nodemailer = require('nodemailer');
var async = require("async")
/**
 * ---------
 * DASHBOARD
 * ---------
 */

router.get("/", function (req, res, callback) {

    const table = "admin";
    const condition = {
        id: 1,
        email: "admin@admin.com",
        name: "Admin",
        password: "admin@admin.com"
    }

    var tasks = [];

    tasks.push(common_function.addAdmin.bind(null, table, condition))
    tasks.push(common_function.customer_count.bind(null, "customer"))
    tasks.push(common_function.contractor_count.bind(null, "contractor"))
    tasks.push(common_function.technician_count.bind(null, "technician"))

    async.series(tasks, function (error, result) {
        if (error) callback(error)
        else {
            res.render("index.html", {
                result: {
                    customers: result[1][0].count,
                    contractors: result[2][0].count,
                    technicians: result[3][0].count
                }
            })
        }
    })
})

router.get("/login", function (req, res, callback) {
    if (req.user) {
        res.redirect("/")
    }
    else {
        res.render("login.html")
    }
})

router.post("/login", function (req, res, callback) {
    const table = "admin";
    const condition = {
        email: req.body.email,
        password: req.body.password
    }

    common_function.getAdmin(table, condition, function (error, error, result) {
        if (error) callback(error)
        else {
            if (error != null && result == null) {
                res.redirect("/login")
            }
            else if (error == null && result.length > 0) {
                res.redirect("/")
            }
        }
    })

})

/**
 * -----------------
 * GET ALL CUSTOMERS
 * -----------------
 */
router.get("/users", function (req, res, callback) {
    const table = "User"

    const condition = {
        fields: "*",
        user_type: ""
    }

    common_function.getAllUser(table, condition, function (error, users) {
        if (error) callback(error)
        else {
            console.log(users)
            res.render("admin/view_users.html", {
                users: users
            })
        }
    })
})

router.post("/add_user", function (req, res, callback) {
    console.log(req.body)
})

// /**
//  * ------------------
//  * GET ALL TECHNICIAN
//  * ------------------
//  */
// router.get("/technicians", function (req, res, callback) {
//     const table = "User"
//     const condition = {
//         fields: "*",        
//         user_type: "technician"
//     }

//     common_function.getAllUser(table, condition, function (error, technician) {
//         if (error) callback(error)
//         else {
//             console.log(technician)
//             res.render("admin/view_technicians.html", {
//                 result: technician
//             })
//         }
//     })
// })


// /**
//  * -------------------
//  * GET ALL CONTRACTORS
//  * -------------------
//  */
// router.get("/contractors", function (req, res, callback) {
//     const table = "User"
//     const condition = {
//         fields: "id, Password, NoOfTechnicians, email, CompanyName, Address, ContactNo, LicenceNo",        
//         user_type: "contractor"
//     }

//     common_function.getAllUser(table, condition, function (error, contractors) {
//         if (error) callback(error)
//         else {
//             console.log(contractors)
//             res.render("admin/view_contractors.html", {
//                 contractors: contractors
//             })
//         }
//     })
// })


/**
 * ----------------------
 * GET CONTRACTOR DETAILS
 * ----------------------
 */
router.get("/contractor_details/:id", function (req, res, callback) {
    const table = "User";
    const condition = {
        id: req.params.id,
        fields: "User.*",
        additional: "estimation.PricePerHour, estimation.TravelCharges, estimation.TruckCharges, estimation.ETA, estimation.DiagnosticCharges",
        join: "LEFT JOIN EstimationSetting estimation ON estimation.UserID = User.Id"
    }

    common_function.getUserById(table, condition, function (error, contractor) {
        if (error) callback(error)
        else {
            res.render("admin/view_contractor_details.html", {
                result: contractor
            })
        }
    })

})

/**
 * --------------------
 * GET CUSTOMER DETAILS
 *---------------------
 */
router.get("/customer_details/:id", function (req, res, callback) {
    const table = "User";
    const condition = {
        id: req.params.id,
        fields: "User.*"
    }

    common_function.getUserById(table, condition, function (error, customer) {
        if (error) callback(error)
        else {
            console.log(customer)
            res.render("admin/view_customer_details.html", {
                result: customer
            })
        }
    })

})

/**
 * ----------------------
 * GET TECHNICIAN DETAILS
 * ----------------------
 */
router.get("/technicians_details/:id", function (req, res, callback) {
    const table = "User";
    const condition = {
        id: req.params.id,
        fields: "User.*"
    }
    common_function.getUserById(table, condition, function (error, technician) {
        if (error) callback(error)
        else {
            console.log(technician)
            res.render("admin/view_technician_details.html", {
                result: technician
            })
        }
    })
})

/**
 * -------------
 * EDIT CUSTOMER
 * -------------
 */
router.post("/edit_customer/:id", function (req, res, callback) {
    const table = "User";
    condition = {
        id: req.params.id,
        update: `fname='${req.body.first_name}', lname='${req.body.last_name}', email='${req.body.email}', contactno=${req.body.phone_number}`
    }

    common_function.editCustomerById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect(`/customer_details/${req.params.id}`)
        }
    })

})

/**
 * ---------------
 * EDIT CONTRACTOR
 * ---------------
 */
router.post("/edit_contractor/:id", function (req, res, callback) {
    const table = "User";
    condition = {
        id: req.params.id,
        update: `CompanyName='${req.body.company_name}', Address='${req.body.address}', NoOfTechnicians='${req.body.no_of_technicians}', LicenceNo='${req.body.licence_no}', Email='${req.body.email}', ContactNo='${req.body.phone_no}'`
    }

    common_function.editCustomerById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect(`/customer_details/${req.params.id}`)
        }
    })

})

/**
 * ---------------
 * EDIT TECHNICIAN
 * ---------------
 */
router.post("/edit_technician/:id", function (req, res, callback) {
    const table = "User";
    condition = {
        id: req.params.id,
        update: `fname='${req.body.first_name}', lname='${req.body.last_name}', email='${req.body.email}', ContactNo='${req.body.phone_number}', CompanyName='${req.body.company_name}', Skill='${req.body.designation}', LicenceNo='${req.body.licence_no}'`
    }

    common_function.editCustomerById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect(`/customer_details/${req.params.id}`)
        }
    })

})

/**
 * -----------
 * DELETE USER
 * -----------
 */
router.post("/delete_user/:id", function (req, res, callback) {
    const table = "User";
    condition = {
        where: `id = ${req.params.id}`
    }

    common_function.deleteById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect("/")
        }
    })

})

/**
 * ------------------------------
 * SEND CUSTOMER DETAIL VIA EMAIL
 * ------------------------------
 */
router.post("/send_email/:id", function (req, res, callback) {
    const table = "User";
    const condition = {
        id: req.params.id,
        fields: "fname, lname, email, password, contactno, profilepic"
    }

    common_function.getUserById(table, condition, function (error, customer) {
        if (error) callback(error)
        else {
            var transporter = nodemailer.createTransport({
                host: 'sg1-ls1.a2hosting.com',
                auth: {
                    user: 'brightroots09@brightroots.net',
                    pass: 'j%33gLLY+Gkt'
                }
            });

            var mailOptions = {
                from: 'brightroots09@brightroots.net',
                to: `${customer[0].email}`,
                subject: 'Credentials',
                text: `Your Email: ${customer[0].email}, Your Password: ${customer[0].password}`
            };

            transporter.sendMail(mailOptions, function (error, info) {
                if (error) {
                    callback(error);
                } else {
                    res.redirect(`/customer_details/${req.params.id}`)
                }
            });
        }
    })
})


/**
 * ------------
 * GET ALL JOBS
 * ------------
 */
router.get("/jobs", function (req, res, callback) {
    const table = `ServicesFunction`
    const condition = {
        fields: `Services.ID as service_id, Services.ADDRESS, Services.URGENCY, Services.PROBLEM, Services.DESCRIPTION, Services.SERVICENAME, cust.Fname as customer_Fname, cust.Lname as customer_Lname, cust.CompanyName as customer_company_name, cont.Fname as contractor_Fname, cont.Lname as contractor_Lname, cont.CompanyName as contactor_company_name, tech.Fname as technician_Fname, tech.Lname as technician_Lname, tech.CompanyName as technician_comapny_name`,
        join: `Left JOIN Services on Services.ID = ServicesFunction.ServicesID LEFT JOIN User cust ON cust.Id = Services.UserId LEFT JOIN User cont ON cont.Id = ServicesFunction.ContractorID LEFT JOIN User tech ON tech.Id = ServicesFunction.TechnicianID`,
        where: `""`
    }
    common_function.getAllJobs(table, condition, function (error, jobs) {
        if (error) callback(error)
        else {
            console.log(jobs)
            res.render("admin/view_jobs.html", {
                jobs: jobs
            })
        }
    })
})

/**
 * -------------------------
 * GET PARTICULAR JOB DETAIL
 * -------------------------
 */
router.get("/job/:id", function (req, res, callback) {
    const table = `ServicesFunction`
    const condition = {
        fields: `
        Services.ADDRESS, Services.URGENCY, Services.PROBLEM, Services.DESCRIPTION, Services.SERVICENAME, cust.Fname as customer_Fname, cust.Lname as customer_Lname, cust.ProfilePic as customer_profile, cont.CompanyName as company_name, cont.Fname as contractor_Fname, cont.Lname as contractor_Lname, tech.Fname as technician_Fname, tech.Lname as technician_Lname, Estimation.PricePerHour as estimate_price_charge, Estimation.DiagnosticCharges as estimate_diagnostic_charge
        `,
        id: req.params.id,
        join: `
        Left JOIN Services on Services.ID = ServicesFunction.ServicesID LEFT JOIN User cust ON cust.Id = Services.USERID LEFT JOIN User cont ON cont.Id = ServicesFunction.ContractorID LEFT JOIN User tech ON tech.Id = ServicesFunction.TechnicianID LEFT JOIN ESTIMATION ON Estimation.ServicesID = Services.ID
        `
    }
    common_function.getJobById(table, condition, function (error, jobs) {
        if (error) callback(error)
        else {
            console.log(jobs)
            res.render("admin/view_job_details.html", {
                result: jobs
            })
        }
    })
})

/**
 * -------------------
 * EDIT PARTICULAR JOB
 * -------------------
 */
router.post("/edit_job/:id", function (req, res, callback) {
    const table = "Services"
    const condition = {
        id: req.params.id,
        update: `Services.SERVICENAME='${req.body.service_name}', Services.ADDRESS='${req.body.address}', Services.URGENCY='${req.body.urgency}'`,
        where: `Services.ID=${req.params.id}`
    }

    common_function.editJobById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect("/jobs")
        }
    })

})

/**
 * ---------------------
 * DELETE PARTICULAR JOB
 * ---------------------
 */
router.post("/delete_job/:id", function (req, res, callback) {
    const table = `Services`
    const condition = {
        where: `Services.ID = ${req.params.id}`
    }

    common_function.deleteById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect("/jobs")
        }
    })

})

/**
 * --------------
 * GET ALL QUOTES
 * --------------
 */
router.get("/quotes", function (req, res, callback) {
    const table = `Estimation`
    const condition = {
        fields: `
        Estimation.ID, contractor.Fname as contractor_Fname, contractor.Lname as contractor_lastname, contractor.CompanyName as contractor_company_name, service.ADDRESS as service_address, service.URGENCY as service_urgency, service.PROBLEM as service_problem, service.DESCRIPTION as service_description, service.SERVICENAME as service_name, Estimation.PricePerHour, Estimation.TravelCharges, Estimation.TruckCharges, Estimation.ETA, Estimation.Status, Estimation.CreatedBy, Estimation.DiagnosticCharges, accepted_user.Fname as accepted_user_Fname, accepted_user.Lname as accepted_user_Lname, accepted_user.CompanyName as accepted_user_company_name
        `,
        join: `
        LEFT JOIN User contractor ON contractor.Id = Estimation.UserID LEFT JOIN User accepted_user ON accepted_user.Id = Estimation.AcceptedBy LEFT JOIN Services service ON service.ID = Estimation.ServicesID
        `

    }
    common_function.getQuote(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            console.log(result)
            res.render("admin/view_quotes.html", {
                quotes: result
            })
        }
    })
})

/**
 * --------------------
 * GET PARTICULAR QUOTE
 * --------------------
 */
router.get("/quote/:id", function (req, res, callback) {
    const table = `Estimation`
    const condition = {
        fields: `
        Estimation.ID, contractor.Fname as contractor_Fname, contractor.Lname as contractor_lastname, service.ADDRESS as service_address, service.URGENCY as service_urgency, service.PROBLEM as service_problem, service.DESCRIPTION as service_description, service.SERVICENAME as service_name, Estimation.PricePerHour, Estimation.TravelCharges, Estimation.TruckCharges, Estimation.ETA, Estimation.Status, Estimation.CreatedBy, Estimation.DiagnosticCharges, accepted_user.Fname as accepted_user_Fname, accepted_user.Lname as accepted_user_Lname
        `,
        id: req.params.id,
        join: `
        LEFT JOIN User contractor ON contractor.Id = Estimation.UserID LEFT JOIN User accepted_user ON accepted_user.Id = Estimation.AcceptedBy LEFT JOIN Services service ON service.ID = Estimation.ServicesID
        `
    }

    common_function.getQuoteById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            console.log(result)
            res.render("admin/view_quotes_details.html", {
                quotes: result
            })
        }
    })

})

/**
 * ---------------------
 * EDIT PARTICULAR QUOTE
 * ---------------------
 */

router.post("/edit_quote/:id", function (req, res, callback) {
    const table = `Estimation`;
    const condition = {
        fields: `PricePerHour='${req.body.price_per_hour}', TravelCharges='${req.body.travel_charges}', TruckCharges='${req.body.truck_charges}', ETA='${req.body.eta}'`,
        id: req.params.id
    }

    common_function.editQuoteById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect(`/quote/${req.params.id}`)
        }
    })

})


/**
 * -----------------------
 * DELETE PARTICULAR QUOTE 
 * -----------------------
 */
router.post("delete_quote/:id", function (req, res, callback) {
    const table = `Estimation`
    const condition = {
        where: `ID = ${req.params.id}`
    }

    common_function.deleteById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            console.log(result)
            res.redirect("/quote")
        }
    })

})


/**
 * ----------------
 * GET ALL INVOICES 
 * ----------------
 */
router.get("/invoices", function (req, res, callback) {
    const condition = {
        fields: ""
    }

    common_function.getAllInvoice(condition, function (error, result) {
        if (error) callback(error)
        else {
            console.log(result)
            res.render("admin/view_invoices.html", {
                result: result
            })
        }
    })

})


/**
 * ----------------------
 * GET PARTICULAR INVOICE 
 * ----------------------
 */
router.get("/invoice/:id", function (req, res, callback) {
    const condition = {
        id: req.params.id
    }

    common_function.getInvoiceById(condition, function (error, result) {
        if (error) callback(error)
        else {
            res.render("admin/view_invoice_details.html", {
                result: result
            })
        }
    })

})

/**
 * -----------------------
 * EDIT PARTICULAR INVOICE 
 * -----------------------
 */
router.post("/edit_invoice/:id", function (req, res, callback) {
    const table = "Invoice"
    const condition = {
        fields: `Amount=${req.body.invoice_amount}`,
        id: req.params.id
    }

    common_function.editInvoiceById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect(`/invoice/${req.params.id}`)
        }
    })

})


/**
 * -------------------------
 * DELETE PARTICULAR INVOICE 
 * -------------------------
 */
router.post("/delete_invoice/:id", function (req, res, callback) {
    const table = `Invoice`
    const condition = {
        where: `Invoice.InvoiceID = ${req.params.id}`
    }

    common_function.deleteById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect("/invoices")
        }
    })

})


/**
 * ----------------
 * GET ALL PAYMENTS 
 * ----------------
 */
router.get("/payments", function (req, res, callback) {
    res.render("admin/view_payments.html")
})

/**
 * ------------------------------
 * GET PARTICULAR PAYMENT DETAILS 
 * ------------------------------
 */
router.get("/payment/:id", function (req, res, callback) {
    res.render("admin/view_payment_details.html")
})

module.exports = router;