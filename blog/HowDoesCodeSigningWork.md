---
slug: HowDoesCodeSigningWork
title: How does code signing work?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

Code signing is a process that helps you verify the authenticity of the app or software you’re installing and ensures that it hasn’t been tampered with since the developer released it. The code signing process consists of a series of smaller steps: requesting a certificate, receiving a
certificate, generating a provisioning profile, and finally signing the application.

Let’s start with requesting a certificate.

To request a certificate, we’ll need to create a certificate signing request - a `.csr` file. When you first set up your Apple Developer account, you will need to use Keychain Access to request a
development certificate from Apple - the certificate authority.

A certificate authority is the entity responsible for issuing digital certificates. Simply put, it’s a trusted organization responsible for verifying the authenticity of software and other digital goods.

Since you have most likely already experienced this certificate request flow, I won't provide a tutorial for that process here. Instead, I'd like to discuss what's happening under the hood.

When you start the process of creating your certificate signing request, Keychain Access will generate a public and private key on your local machine. The public key is eventually attached to the `.csr` file, but the private key never leaves your machine. After this step, Keychain Access
will prompt you to provide some basic metadata like name, country, email, etc. thereby completing the creation of the request.

From here, Apple examines the request's properties and metadata to verify who is requesting the certificate. Upon successful validation, Apple will send you back a certificate, which you should store in your machine's keychain. Certificates usually last for a year before expiring and can come in several varieties; iOS App Development, iOS Distribution, Mac App Distribution, Mac Installer Distribution, etc.

Code signing is driven by asymmetric cryptography, which is what enables communication with Apple and powers the signing process. Any explanation of code signing would be incomplete without an explanation of this encryption, so let's take a quick look at how it works.



To start with, both you and Apple have your own set of public and private keys. Now, these keys are cryptographically linked meaning you can use the private key to decrypt a message encrypted with the public key, but you can’t go in the other direction.

After establishing a connection with Apple, we will exchange public keys. The public keys are intended to be shared, but the private keys need to be protected.

So, when you want to send a message to Apple, you encrypt the message with Apple's public key. Then, when Apple receives the message, they’ll be able to decrypt the message using their private key.

This same process happens in reverse when Apple sends the certificate to us; Apple will encrypt the message using our public key and we’ll use our private key to decrypt the message and retrieve the certificate. This process ensures that our full conversation with Apple from requesting to receiving the certificate is secure.

As a next step, the provisioning profile is created, consisting of a few key components:

- **Team ID:** A unique identifier for each developmentteam and can be found in your Apple Developer account.
- **Bundle ID:** Every iOS app has a unique bundle identifierwhich allows it to be uniquely identified.
- **App ID:** The combination of the Team ID and the BundleID.
- **Device ID:** The list of all UDIDs (Unique Device Identifier)that your iOS application is authorized to run on. This is a 40 character alphanumeric identifier.
- **Entitlements:** This specifies the permissions and capabilitiesof the app along with which system resources the application has permission to access. For example, services like Push Notifications, Apple Pay, App Sandbox, etc.
- **Certificate:** The certificate we received from Applein the previous step (iOS App Development, iOS Distribution, Mac App Distribution, Mac installer Distribution, etc.)

In summary, the provisioning profile is composed of the certificate that verifies the authenticity of the software, the App ID that uniquely identifies the application, and its permissions, entitlements, and the exact list of devices that can run the application. It essentially acts as the middle-man between the end devices and the developer account.

We're finally at the last step - code signing. This step involves downloading the provisioning profile from your developer account and embedding it into your application's bundle. Next, the bundle is signed with the certificate we created earlier and can now run on your device.

Here’s what’s happening under the hood:
1. The certificate referenced in your provisioning profile is compared against the available certificates in your machine’s keychain.
2. If a valid certificate is found, it is used to sign the executable.
3. The UDID of the device you are attempting to run the executable on is compared against the UDIDs listed in the provisioning profile.
4. The Bundle ID and Entitlements are checked against their respective counterparts in the provisioning profile.
5. If everything goes well, the app is installed on the device.

:::tip[In Bullets]

:::