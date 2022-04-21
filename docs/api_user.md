# CREATE USER

* **URL**: `{BASE_URL}/api/v1/users`

* **Method:** `POST`

*  **Headers:**
   ``
*  **URL Params:** `{ email: 'arif@gamil.com'
   }`

* **Success Response:**
* **Code:** `200`
    * **Content:**

```json
{
  "success": true,
  "status": 200,
  "message": "Successfully created",
  "data": {
    "id": 5,
    "email": "arif@gmail.com",
    "is_verified": false
  }
}
```

* ** Error Response:*
* **Code:** '409'
    * **If email not uniq:**
    * **Content:**
```json
{
  "success": false,
  "status": 409,
  "message": "User already exist",
  "data": {}
}
```