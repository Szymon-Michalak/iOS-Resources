---
slug: SecurelyStorePasswords
title: How to Securely Store Passwords in a Database
authors: szymon
tags: [security]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [How to Store Passwords in Database](https://newsletter.systemdesign.one/p/how-to-store-passwords-in-database)

  **Additional Sources:**
    - [Password Storage Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)
    - [bcrypt](https://en.wikipedia.org/wiki/Bcrypt)
  
  **Further Reading:**
    - [Salt (cryptography)](https://en.wikipedia.org/wiki/Salt_(cryptography))
    - [Rainbow table](https://en.wikipedia.org/wiki/Rainbow_table)
</details>

:::info[TL/DR]
To securely store passwords in a database:
- Hash passwords using algorithms like bcrypt.
- Use a unique salt for each password.
- Implement key stretching to make brute-force attacks difficult.
:::

### Concept Overview
Storing passwords securely is critical to prevent unauthorized access in case of database breaches. The key principles include hashing, salting, and stretching.

1. **Hashing**:
   - A one-way transformation of a password into a unique "fingerprint."
   - Common algorithms like bcrypt are preferred due to their computational cost, making brute-force attacks slower.

   ```swift
   import CryptoKit
   let password = "UserPassword123"
   let hashedPassword = SHA256.hash(data: Data(password.utf8))
   print(hashedPassword)
   ```

2. **Salting**:
   - Adds a random string to the password before hashing, ensuring that identical passwords produce different hashes.
   - Each user gets a unique salt, which invalidates pre-computed rainbow table attacks.

3. **Key Stretching**:
   - Repeatedly applies the hash function to increase the time required to compute each hash, slowing brute-force attempts.

### Step-by-Step Breakdown
- **Account Creation**:
  1. Generate a unique salt.
  2. Combine the salt with the user's password.
  3. Hash the combined string using bcrypt.
  4. Store the salt and hash in the database.

- **Login Validation**:
  1. Retrieve the stored salt and hash for the user.
  2. Combine the entered password with the stored salt.
  3. Hash the combination and compare it to the stored hash.
  4. Grant access if the hashes match.

| **Process**         | **Steps**                    | **Example**                  |
|----------------------|------------------------------|------------------------------|
| Password Hashing     | Transform password into hash | `SHA256("password+salt")`    |
| Adding Salt          | Generate random string       | `salt = Random.generate()`   |
| Validation Workflow  | Compare entered hash         | `hash == stored_hash`        |

### Real-World Applications
- Preventing unauthorized access even if the database is compromised.
- Complying with best practices and regulatory standards for password security (e.g., OWASP).

### Common Mistakes
- **Storing plaintext passwords**: Allows immediate access if the database is breached.
- **Reusing salts**: Weakens the effectiveness of salting.
- **Using outdated hashing algorithms**: MD5 or SHA-1 are no longer considered secure.

### Diagrams/Visual Aids
1. **Hashing Workflow**:
   ```
   Password + Salt -> Hash Function -> Hashed Password
   ```

2. **Login Validation Workflow**:
   ```
   Entered Password + Salt -> Hash Function -> Compare with Stored Hash
   ```

### Additional Details
- Always use a secure random number generator for creating salts.
- Consider using hardware security modules (HSMs) for managing keys and salts in enterprise systems.
- Test and update hashing mechanisms as stronger algorithms become available.

:::tip[In Bullets]
- **Hashing**: Converts passwords into irreversible fingerprints.
- **Salting**: Adds uniqueness to each password.
- **Stretching**: Increases computational cost to deter brute-force attacks.
:::
