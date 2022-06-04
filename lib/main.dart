import 'package:flutter/material.dart';
import 'package:untitled/main_page.dart';
import 'package:untitled/profile_page.dart';
import 'package:untitled/purchase_page.dart';

Map<String, dynamic> allData = {
  "Digital": {
    "Laptop": [
      {
        "title": "Lenovo",
        "price": "200.00",
        "description":
            "Lenovo Laptop is a brand of notebook computers manufactured by Lenovo. It is a line of notebook computers designed for personal computers, but also used as a general-purpose computer for business and education. The laptop is a portable personal computer with a thin LCD or LED-backlit display, a keyboard, and a pointing device. The laptop is typically powered by a battery, although some laptops also have a built-in rechargeable lithium-ion battery. The laptop is typically sold in a notebook computer case, although some Lenovo models are sold without a case. Lenovo notebooks are available in a variety of colors and models, and are typically sold in a variety of sizes and configurations. The laptop is typically sold in a notebook computer case, although some Lenovo models are sold without a case. Lenovo notebooks are available in a variety of colors and models, and are typically sold in a variety of sizes and configurations. The laptop is typically sold in a notebook computer case, although some Lenovo models are sold without a case.",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Lenovo",
        "price": "200.00",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Lenovo",
        "price": "200.00",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Lenovo",
        "price": "200.00",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Lenovo",
        "price": "200.00",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Mobile": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "TV": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Camera": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
  },
  "Clothes": {
    "Men Fashion": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Women Fashion": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Women Shoes": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Men Shoes": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Kid Fashion": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
  },
  "BookStationary": {
    "Book": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Stationary": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Music": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Handicrafts": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
  },
  "SportTrip": {
    "Sport Clothes": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Sport Goods": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
    "Camping Equipment": [
      {
        "title": "Lenovo",
        "price": "200",
        "description": "Lenovo is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      },
      {
        "title": "Dell",
        "price": "300",
        "description": "Dell is a brand ",
        "rate": "4.5",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      },
      {
        "title": "HP",
        "price": "400",
        "description": "HP is a brand ",
        "image":
            "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
        "rate": "4.5",
      }
    ],
  }
};

void main() {
  runApp(MyApp(
    allData: allData,
  ));
}

class MyApp extends StatefulWidget {
  Map allData;

  MyApp({Key? key, required this.allData}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sadra Shop',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Sadra Shop'),
          actions: [
            loginBuilder(),
            Builder(builder: (context) {
              return IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PurchasePage(),
                    ),
                  );
                },
              );
            }),
          ],
        ),
        body: MyMainPage(
          allData: widget
              .allData, //this is temp,I will get data from server for each page
        ),
        bottomNavigationBar: BottomNavigatorForCartAndProfileAndHome(0),
      ),
    );
  }

  Builder loginBuilder() {
    bool isVisiable = false;
    var hereIcon = Icon(Icons.visibility);
    return Builder(builder: (context) {
      return IconButton(
        icon: Icon(Icons.login),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    backgroundColor: Colors.grey[200],
                    elevation: 20,
                    title: Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                    content: Container(
                      height: 130,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your phone number';
                              }
                              RegExp regex = RegExp(
                                  r'^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$');
                              if (regex.hasMatch(value)) {
                                return null;
                              }
                              return 'Please enter a valid phone number';
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone_android),
                              labelText: "Phone Number",
                            ),
                          ),
                          TextFormField(
                            obscureText: !isVisiable,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                labelText: "Password",
                                suffixIcon: IconButton(
                                    icon: hereIcon,
                                    onPressed: () {
                                      setState(() {
                                        isVisiable = !isVisiable;
                                        if (isVisiable) {
                                          hereIcon = Icon(Icons.visibility_off);
                                        } else {
                                          hereIcon = Icon(Icons.visibility);
                                        }
                                      });
                                    })),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      Center(
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Login"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                signUpBuilder(context);
                              },
                              child: Text("You don't have account?"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ));
        },
      );
    });
  }

  Future<dynamic> signUpBuilder(BuildContext context) {
    bool isVisiable = false;
    var hereIcon = Icon(Icons.visibility);

    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.grey[200],
              elevation: 20,
              title: Text(
                "Register",
                style: TextStyle(color: Colors.blue),
              ),
              content: Container(
                height: 300,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Name and Surname",
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        RegExp regex = RegExp(
                            r'^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$');
                        if (regex.hasMatch(value)) {
                          return null;
                        }
                        return 'Please enter a valid phone number';
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android),
                        labelText: "Phone Number",
                      ),
                    ),
                    TextFormField(
                      obscureText: !isVisiable,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: hereIcon,
                            onPressed: () {
                              setState(() {
                                isVisiable = !isVisiable;
                                if (isVisiable) {
                                  hereIcon = Icon(Icons.visibility_off);
                                } else {
                                  hereIcon = Icon(Icons.visibility);
                                }
                              });
                            }),
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: "Email",
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Store name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.shop),
                        labelText: "Store Name",
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Register"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel"),
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}

class BottomNavigatorForCartAndProfileAndHome extends StatelessWidget {
  int state = 0;

  BottomNavigatorForCartAndProfileAndHome(
    this.state, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BottomNavigationBar(
        currentIndex: state,
        backgroundColor: Colors.grey[200],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MyApp(
                  allData:
                      allData, //this is temp,I will get data from server for each page
                ),
              ),
            );
          } else if (index == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PurchasePage(),
              ),
            );
          } else if (index == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          }
        },
      );
    });
  }
}
