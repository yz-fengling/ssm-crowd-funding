package com.yz.yx.controller;

import com.yz.yx.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AdminController {
    @Autowired
    AdminService adminService;
}
