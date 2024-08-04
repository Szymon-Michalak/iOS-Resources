---
slug: WhatDoesAppTransportSecurityDo
title: What does App Transport Security do?
authors: [szymon]
tags: [uikit]
---


App Transport Security (a.k.a ATS) is Apple’s mechanism to ensure developer’s use HTTPS in their app’s communications.

As I’m sure you know, HTTPS is the secure variation of HTTP. In HTTPS, the same fundamentals of HTTP apply, but with the addition of using TLS (Transport Layer Security) to protect the privacy and integrity of the exchanged data from unauthorized parties and Man in the Middle attacks.

TLS relies on encrypting the communication both ways - from the client to the server and the server to the client. So, with App Transport Security, Apple is ensuring that developers use HTTPS (and as a result TLS) in order to ensure privacy and security for all apps and customers.

You can setNSAllowsArbitraryLoadstotruein yourapplication’s.plistwhich will disable the ATS requirement, but your app will likely be rejected unless you can provide a compelling justification to App Review.
