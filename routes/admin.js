var express = require("express");
var router = express.Router();
var common_function = require("../functions/common_functions");
var nodemailer = require('nodemailer');

/**
 * ---------
 * DASHBOARD
 * ---------
 */

router.get("/", function(req, res, callback){
    res.render("index.html")
})

/**
 * -----------------
 * GET ALL CUSTOMERS
 * -----------------
 */
router.get("/customers", function (req, res, callback) {
    const table = "User"

    const condition = {
        fields: "id, fname, lname, email, ProfilePic, CompanyName, Address, ContactNo",
        user_type: "customer"
    }

    common_function.getAllUser(table, condition, function (error, customers) {
        if (error) callback(error)
        else {
            console.log(customers)
            res.render("admin/view_customers.html", {
                customers: customers
            })
        }
    })
})

/**
 * ------------------
 * GET ALL TECHNICIAN
 * ------------------
 */
router.get("/technicians", function (req, res, callback) {
    const table = "User"
    const condition = {
        fields: "*",        
        user_type: "technician"
    }

    common_function.getAllUser(table, condition, function (error, technician) {
        if (error) callback(error)
        else {
            console.log(technician)
            res.render("admin/view_technicians.html", {
                result: technician
            })
        }
    })
})


/**
 * -------------------
 * GET ALL CONTRACTORS
 * -------------------
 */
router.get("/contractors", function (req, res, callback) {
    const table = "User"
    const condition = {
        fields: "id, NoOfTechnicians, email, CompanyName, Address, ContactNo, LicenceNo",        
        user_type: "contractor"
    }

    common_function.getAllUser(table, condition, function (error, contractors) {
        if (error) callback(error)
        else {
            console.log(contractors)
            res.render("admin/view_contractors.html", {
                contractors: contractors
            })
        }
    })
})


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
router.get("/technicians_details/:id", function(req, res, callback){
    const table = "User";
    const condition = {
        id: req.params.id,
        fields: "User.*"
    }
    common_function.getUserById(table, condition, function(error, technician){
        if(error) callback(error)
        else{
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
router.post("/edit/:id", function (req, res, callback) {
    const table = "User";
    condition = {
        id: req.params.id,
        fields: "fname, lname, email, contactno",
        update: {
            fname: req.body.fname,
            lname: req.body.lname,
            email: req.body.email,
            contactno: req.body.contactno
        }
    }

    common_function.editCustomerById(table, condition, function (error, result) {
        if (error) callback(error)
        else {
            res.redirect(`/details/${req.params.id}`)
        }
    })

})

/**
 * ----------------
 * DELETE CUSTOMER
 * ----------------
 */
router.post("/delete_user/:id", function (req, res, callback) {
    const table = "User";
    condition = {
        id: req.params.id
    }

    common_function.deleteUserById(table, condition, function (error, result) {
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
router.get("/jobs", function(req, res, callback){
    const condition = {
        fields: "*"
    }
    common_function.getAllJobs(condition, function(error, jobs){
        if(error) callback(error)
        else{
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
router.get("/job/:id", function(req, res, callback){
    const condition = {
        fields: "*",
        id: req.params.id
    }
    common_function.getJobById(condition, function(error, jobs){
        if(error) callback(error)
        else{
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
router.post("/edit_job/:id", function(req, res, callback){
    const condition = {
        id: req.params.id
    }

    common_function.editJobById(condition, function(error, result){
        if(error) callback(error)
        else{
            res.redirect("/jobs")
        }
    })

})

/**
 * ---------------------
 * DELETE PARTICULAR JOB
 * ---------------------
 */
router.post("/delete_job/:id", function(req, res, callback){
    const condition = {
        id: req.params.id
    }

    common_function.deleteJobById(condition, function(error, result){
        if(error) callback(error)
        else{
            res.redirect("/jobs")
        }
    })

})

/**
 * --------------
 * GET ALL QUOTES
 * --------------
 */
router.get("/quotes", function(req, res, callback){
    const condition = {
        fields : ""
    }
    common_function.getQuote(condition, function(error, result){
        if(error) callback(error)
        else{
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
router.get("/quote/:id", function(req, res, callback){
    const condition = {
        id: req.params.id
    }

    common_function.getQuoteById(condition, function(error, result){
        if(error) callback(error)
        else{
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

router.post("/quote/:id", function(req, res, callback){
    const condition = {
        id: req.params.id
    }

    common_function.editQuoteById(condition, function(error, result){
        if(error) callback(error)
        else{
            res.redirect(`/quote/${req.params.id}`)
        }
    })

})


/**
 * -----------------------
 * DELETE PARTICULAR QUOTE 
 * -----------------------
 */
router.post("delete_quote/:id", function(req, res, callback) {
    const condition = {
        id: req.params.id
    }
    
    common_function.deleteQuote(condition, function(error, result){
        if(error) callback(error)
        else{
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
router.get("/invoices", function(req, res, callback){
    const condition = {
        fields: ""
    }

    common_function.getAllInvoice(condition, function(error, result){
        if(error) callback(error)
        else{
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
router.get("/invoice/:id", function(req, res, callback){
    const condition = {
        id: req.params.id
    }

    common_function.getInvoiceById(condition, function(error, result){
        if(error) callback(error)
        else{
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
router.post("/edit_invoice/:id", function(req, res, callback){
    const condition = {
        id: req.params.id
    }

    common_function.editInvoiceById(condition, function(error, result){
        if(error) callback(error)
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
router.post("/delete_invoice/:id", function(req, res, callback){
    const condition = {
        id: req.params.id
    }

    common_function.deleteInvoiceById(condition, function(error, result){
        if(error) callback(error)
        else{
            res.redirect("/invoices")
        }
    })

})


/**
 * ----------------
 * GET ALL PAYMENTS 
 * ----------------
 */
router.get("/payments", function(req, res, callback){
    res.render("admin/view_payments.html")
})

/**
 * ------------------------------
 * GET PARTICULAR PAYMENT DETAILS 
 * ------------------------------
 */
router.get("/payment/:id", function(req, res, callback){
    res.render("admin/view_payment_details.html")
})

module.exports = router;