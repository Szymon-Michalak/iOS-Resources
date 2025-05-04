# 🔔📣 Notifications 

## Push Notifications

### 🔵 Updating Your Apps with Silent Push Notifications

Silent push notifications enable your app to stay up-to-date by fetching new data from the server in the background. This approach is especially useful for apps that need to provide timely updates without requiring user intervention. This guide covers how to configure your app and server to leverage silent push notifications effectively.

<details>

**URL:** [https://www.donnywals.com/updating-your-apps-with-silent-push-notifications/](https://www.donnywals.com/updating-your-apps-with-silent-push-notifications/)

**Published:** 2019-11-20

**Authors:** `Donny Wals`

**Tags:**  
`Silent Push Notifications`, `iOS Development`, `Background Fetch`, `AppDelegate`

</details>

#### Key Points
- **Silent Push Setup:** Configure your app with **Push Notifications** and **Background Modes** capabilities.
- **AppDelegate Methods:** Implement `application(_:didReceiveRemoteNotification:fetchCompletionHandler:)` for background updates.
- **Server Configuration:** Use `content_available: 1` in the payload and ensure proper headers like `apns-priority = 5` are set.
- **Performance Considerations:** Limit silent pushes to 2-3 per hour to avoid throttling by Apple.

#### Summary of Contents
- **Configuring Your App:** Steps to enable capabilities, register for remote notifications, and handle notification callbacks.
- **Handling Silent Pushes:** Guidance on implementing the `fetchCompletionHandler` for efficient data fetching.
- **Server-Side Requirements:** Explanation of payload headers and their role in triggering background fetches.
- **Best Practices:** Recommendations for responsible use to avoid penalties from Apple.

#### Additional Resources
- **[Real-time Data Exchange with Web Sockets](https://www.donnywals.com/real-time-data-exchange-using-web-sockets-in-ios-13/):** Explore alternatives for high-frequency updates.
- **[Firebase Cloud Messaging Documentation](https://firebase.google.com/docs/cloud-messaging):** Learn more about using Firebase for push notifications.

<LinkCard title="Read Full Article" href="https://www.donnywals.com/updating-your-apps-with-silent-push-notifications/" />
