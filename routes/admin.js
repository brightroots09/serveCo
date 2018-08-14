var express = require("express");
var router = express.Router();
var common_function = require("../functions/common_functions");
var nodemailer = require('nodemailer');

router.get("/customer", function (req, res, callback) {
    const table = "User"

    const condition = {
        fields: "id, fname, lname, email, ProfilePic",
        user_type: "customer"
    }

    common_function.getAllUser(table, condition, function (error, customer) {
        if (error) callback(error)
        else {
            console.log("===>result", customer)
            res.json(customer)
        }
    })
})

router.get("/technician", function (req, res, callback) {
    const table = "User"
    const condition = {
        fields: "fname, lname, email, ProfilePic",
        user_type: "technician"
    }

    common_function.getAllUser(table, condition, function (error, customer) {
        if (error) callback(error)
        else {
            console.log("===>result", customer)
            res.json(customer)
        }
    })
})

router.get("/contractor", function (req, res, callback) {
    const table = "User"
    const condition = {
        fields: "fname, lname, email, ProfilePic",
        user_type: "contractor"
    }

    common_function.getAllUser(table, condition, function (error, customer) {
        if (error) callback(error)
        else {
            console.log("===>result", customer)
            res.json(customer)
        }
    })
})


router.get("/customer_details/:id", function (req, res, callback) {
    const table = "User";
    const condition = {
        id: req.params.id,
        fields: "fname, lname, email, contactno, profilepic"
    }

    common_function.getUserById(table, condition, function (error, customer) {
        if (error) callback(error)
        else {
            res.json(customer)
        }
    })

})

router.post("/customer_edit/:id", function (req, res, callback) {
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
            res.redirect(`/customer_details/${req.params.id}`)
        }
    })

})


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
                service: 'gmail',
                auth: {
                    user: 'arpit.nagpal54@gmail.com',
                    pass: 'Arpit729148@'
                }
            });

            var mailOptions = {
                from: 'aript.nagpal54@gmail.com',
                to: 'arpit.nagpal54@gmail.com',
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


router.get("/jobs", function(req, res, callback){
    const condition = {
        fields: "*"
    }
    common_function.getAllJobs(condition, function(error, jobs){
        if(error) callback(error)
        else{
            res.json(jobs)
        }
    })
})

module.exports = router;