# LIST OF QUESTIONS API

* **URL**: `{BASE_URL}/api/v1/questions`

* **Method:** `GET`

*  **Headers:**
   ``
*  **Params:**

* **Success Response:**
* **Code:** `200`
    * **Content:**

```json
{
  "success": true,
  "status": 200,
  "message": "Successfully Fetch",
  "data": [
    {
      "question_id": 1,
      "step_id": 1,
      "title": "I want to go home."
    },
    {
      "question_id": 2,
      "step_id": 1,
      "title": "I love you."
    },
    {
      "question_id": 3,
      "step_id": 1,
      "title": "Happy."
    },
    {
      "question_id": 4,
      "step_id": 1,
      "title": "I regret that I should leave this world without again beholding him."
    },
    {
      "question_id": 5,
      "step_id": 1,
      "title": "All my possessions for a moment of time."
    },
    {
      "question_id": 6,
      "step_id": 2,
      "title": "My vocabulary did this to me. Your love will let you go on…"
    },
    {
      "question_id": 7,
      "step_id": 2,
      "title": "Am I dying, or is this my birthday?"
    },
    {
      "question_id": 8,
      "step_id": 3,
      "title": "Carter Dach"
    },
    {
      "question_id": 9,
      "step_id": 3,
      "title": "Kortney Lubowitz"
    },
    {
      "question_id": 10,
      "step_id": 3,
      "title": "Matilde Jast"
    },
    {
      "question_id": 11,
      "step_id": 3,
      "title": "Elfreda King III"
    },
    {
      "question_id": 12,
      "step_id": 3,
      "title": "Leora O'Reilly"
    },
    {
      "question_id": 13,
      "step_id": 4,
      "title": "Elin Farrell"
    },
    {
      "question_id": 14,
      "step_id": 4,
      "title": "Jonathon Walsh I"
    },
    {
      "question_id": 15,
      "step_id": 4,
      "title": "Bobbi Grimes"
    },
    {
      "question_id": 16,
      "step_id": 4,
      "title": "Mel Boyer"
    },
    {
      "question_id": 17,
      "step_id": 4,
      "title": "Tinisha Steuber"
    },
    {
      "question_id": 18,
      "step_id": 5,
      "title": "Amb. Jude Homenick"
    },
    {
      "question_id": 19,
      "step_id": 5,
      "title": "Frederic Hills"
    },
    {
      "question_id": 20,
      "step_id": 5,
      "title": "Delpha Anderson"
    },
    {
      "question_id": 21,
      "step_id": 5,
      "title": "Odelia Smitham"
    },
    {
      "question_id": 22,
      "step_id": 5,
      "title": "Rep. Mayola Schamberger"
    },
    {
      "question_id": 23,
      "step_id": 6,
      "title": "Scott Baumbach DDS"
    },
    {
      "question_id": 24,
      "step_id": 6,
      "title": "Sen. Lakesha Leffler"
    },
    {
      "question_id": 25,
      "step_id": 6,
      "title": "The Hon. Manuel Dooley"
    },
    {
      "question_id": 26,
      "step_id": 6,
      "title": "Genevieve Balistreri"
    },
    {
      "question_id": 27,
      "step_id": 6,
      "title": "Kathi Emard Jr."
    },
    {
      "question_id": 28,
      "step_id": 7,
      "title": "Andres Funk"
    },
    {
      "question_id": 29,
      "step_id": 7,
      "title": "Federico O'Connell"
    },
    {
      "question_id": 30,
      "step_id": 7,
      "title": "Elvin Wyman JD"
    },
    {
      "question_id": 31,
      "step_id": 7,
      "title": "Trenton Senger"
    },
    {
      "question_id": 32,
      "step_id": 7,
      "title": "Dr. Lannie Pfannerstill"
    }
  ]
}

```
# QUESTION DETAILS

* **URL**: `{BASE_URL}/api/v1/questions/1`

* **Method:** `GET`

*  **Headers:**
   ``
*  **Params:**

* **Success Response:**
* **Code:** `200`
    * **Content:**

```json
{
  "success": true,
  "status": 200,
  "message": "Successfully Fetch",
  "data": {
    "question_id": 1,
    "step_id": 1,
    "title": "Where do you live in ?"
  }
}
```