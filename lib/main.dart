import 'package:flutter/material.dart';
import 'package:untitled/main_page.dart';

void main() {
  Map<String, dynamic> allData = {
    "Digital": {
      "Laptop": [
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
    "SportTrip":{
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
  runApp(MyApp(
    allData: allData,
  ));
}

class MyApp extends StatelessWidget {
  Map allData;

  MyApp({Key? key, required this.allData}) : super(key: key);

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
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        body: MyMainPage(
          allData:
              allData, //this is temp,I will get data from server for each page
        ),
      ),
    );
  }
}
