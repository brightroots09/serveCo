var express = require("express");
var router = express.Router();
var common_function = require("../functions/common_functions");
const passport = require("passport");
const passportConfig = require("./passport");
const ensureAuthenticated = require("./auth")

/**
 * -------------
 * PROFILE ROUTE
 * -------------
 */
router.get("/profile", function (req, res, callback) {
    if (req.user) {
        res.json("logged in")
    }
    else {
        res.redirect("/employee/login")
    }
});


/**
 * -----------
 * LOGIN ROUTE
 * -----------
 */
router.get("/login", function (req, res, callback) {
    if (req.user) return res.redirect("/employee/profile")
    else {
        res.render("employee_login.html", {
            message: req.flash("loginMessage")
        })
    }
})

router.post("/login", passport.authenticate("employee-login", {
    successRedirect: "/employee/profile",
    failureRedirect: "/employee/login",
    failureFlash: true
}))


/**
 * ------------
 * LOGOUT ROUTE
 * ------------
 */
router.get("/logout", (req, res) => {
    req.logout();
    res.redirect("/employee/login");
})

router.get("/allChats", function(req, res, callback){
    if(req.user){
        const table = "Chat",
        condition = {
            where: `UserID=${req.user.Id} OR FriendID=${req.user.Id}`
        }
        common_function.chatUser(table, condition, function(error, result){
            if(error) callback(error)
            else{
                res.json(result)
            }
        })
    }
    else{
        res.redirect("/employee/login")
    }
})

/**
 * ----------
 * CHAT ROUTE
 * ----------
 */

router.get("/chat/:id", function (req, res, callback) {
    if (req.user) {
        const table = "Chat"
        const condition = {
            where: `UserID=${req.user.Id} AND FriendID=${req.params.id}`
        }
        common_function.chatUser(table, condition, function(error, result){
            if(error) callback(error)
            else{
                res.json(result)
            }
        })
    }
    else {
        res.redirect("/admin/login")
    }
})

module.exports = router