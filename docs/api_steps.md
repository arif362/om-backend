# STEP LIST WITH QUESTIONS API

* **URL**: `{BASE_URL}/api/v1/steps`

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
      "step_id": 1,
      "title": "quia",
      "questions": [
        {
          "question_id": 1,
          "title": "I want to go home."
        },
        {
          "question_id": 2,
          "title": "I love you."
        },
        {
          "question_id": 3,
          "title": "Happy."
        },
        {
          "question_id": 4,
          "title": "I regret that I should leave this world without again beholding him."
        },
        {
          "question_id": 5,
          "title": "All my possessions for a moment of time."
        }
      ]
    },
    {
      "step_id": 2,
      "title": "odio",
      "questions": [
        {
          "question_id": 6,
          "title": "My vocabulary did this to me. Your love will let you go on…"
        },
        {
          "question_id": 7,
          "title": "Am I dying, or is this my birthday?"
        }
      ]
    },
    {
      "step_id": 3,
      "title": "omnis",
      "questions": [
        {
          "question_id": 8,
          "title": "Carter Dach"
        },
        {
          "question_id": 9,
          "title": "Kortney Lubowitz"
        },
        {
          "question_id": 10,
          "title": "Matilde Jast"
        },
        {
          "question_id": 11,
          "title": "Elfreda King III"
        },
        {
          "question_id": 12,
          "title": "Leora O'Reilly"
        }
      ]
    },
    {
      "step_id": 4,
      "title": "dolorum",
      "questions": [
        {
          "question_id": 13,
          "title": "Elin Farrell"
        },
        {
          "question_id": 14,
          "title": "Jonathon Walsh I"
        },
        {
          "question_id": 15,
          "title": "Bobbi Grimes"
        },
        {
          "question_id": 16,
          "title": "Mel Boyer"
        },
        {
          "question_id": 17,
          "title": "Tinisha Steuber"
        }
      ]
    },
    {
      "step_id": 5,
      "title": "qui",
      "questions": [
        {
          "question_id": 18,
          "title": "Amb. Jude Homenick"
        },
        {
          "question_id": 19,
          "title": "Frederic Hills"
        },
        {
          "question_id": 20,
          "title": "Delpha Anderson"
        },
        {
          "question_id": 21,
          "title": "Odelia Smitham"
        },
        {
          "question_id": 22,
          "title": "Rep. Mayola Schamberger"
        }
      ]
    },
    {
      "step_id": 6,
      "title": "nesciunt",
      "questions": [
        {
          "question_id": 23,
          "title": "Scott Baumbach DDS"
        },
        {
          "question_id": 24,
          "title": "Sen. Lakesha Leffler"
        },
        {
          "question_id": 25,
          "title": "The Hon. Manuel Dooley"
        },
        {
          "question_id": 26,
          "title": "Genevieve Balistreri"
        },
        {
          "question_id": 27,
          "title": "Kathi Emard Jr."
        }
      ]
    },
    {
      "step_id": 7,
      "title": "dolorem",
      "questions": [
        {
          "question_id": 28,
          "title": "Andres Funk"
        },
        {
          "question_id": 29,
          "title": "Federico O'Connell"
        },
        {
          "question_id": 30,
          "title": "Elvin Wyman JD"
        },
        {
          "question_id": 31,
          "title": "Trenton Senger"
        },
        {
          "question_id": 32,
          "title": "Dr. Lannie Pfannerstill"
        }
      ]
    }
  ]
}

```
# STEP DETAILS API WITH QUESTIONS

* **URL**: `{BASE_URL}/api/v1/steps/1`

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
        "step_id": 1,
        "title": "quia",
        "questions": [
            {
                "question_id": 1,
                "title": "I want to go home."
            },
            {
                "question_id": 2,
                "title": "I love you."
            },
            {
                "question_id": 3,
                "title": "Happy."
            },
            {
                "question_id": 4,
                "title": "I regret that I should leave this world without again beholding him."
            },
            {
                "question_id": 5,
                "title": "All my possessions for a moment of time."
            }
        ]
    }
}
```