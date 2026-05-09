# Real Estate Management Database

A relational database schema for managing a real estate agency's operations, including employees, property owners, clients, properties, viewings, and leases.

---

## Tables

### `employee`
Stores agency staff records. Each employee has a role of either `manager` or `partner`. Partners are referenced throughout the schema as the primary point of contact for owners and clients.

### `owner`
Represents property owners. Each owner is assigned a `partner_id` linking them to the employee who manages their relationship with the agency.

### `client`
Represents prospective or active tenants. Stores their contact info, rental preferences (e.g. property type, amenities), and their target rent budget.

### `property`
The core listing table. Each property has a `type` of `residential`, `commercial`, or `industrial`, and is linked to both an `owner` and a managing `associate` (limit of 5 properties managed by each associate). The `ADV` flag indicates whether the property is currently being advertised.

### `viewing`
Tracks scheduled property showings. Links a `property`, a `client`, and the `employee` who conducted the viewing, along with the date and time.

### `lease`
Records signed lease agreements. Links a `client` and `property` to both the responsible `partner` (employee) and the `owner`. Includes sign date, start date, optional end date (NULL for month-to-month), and agreed rent.

### `emp_emails` / `own_emails` / `cli_emails`
Email address tables for employees, owners, and clients respectively. Each email is a primary key linked to its person, allowing multiple emails per person.

---

## Entity Relationships

```
employee ──< property (as manager)
employee ──< owner    (as partner)
employee ──< viewing  (as agent)
employee ──< lease    (as partner)

owner    ──< property
owner    ──< lease

client   ──< viewing
client   ──< lease

property ──< viewing
property ──< lease
```

---

## Sample Data

The database is seeded with the following records:

| Table      | Count | Notes                                      |
|------------|-------|--------------------------------------------|
| employee   | 6     | Mix of `manager` and `partner` roles       |
| owner      | 6     | Each linked to a partner employee          |
| client     | 12    | Varied preferences across property types   |
| property   | 18    | 6 residential, 6 commercial, 6 industrial  |
| viewing    | 12    | Spread across residential, commercial, and industrial properties |
| lease      | 6     | One open-ended (month-to-month) lease      |

All sample data uses addresses in the Baltimore/Maryland metro area.

---

## Notes

- `property.id` values are AUTOINCREMENT and assigned in insertion order: residential properties get IDs 1–6, commercial 7–12, industrial 13–18.
- `owner.id` and `client.id` are also AUTOINCREMENT, assigned 1–6 and 1–12 respectively in insertion order.
- `employee.id` is manually assigned (1–6) since it is not AUTOINCREMENT.
- Residential properties populate `bed` and `bath`; commercial and industrial leave `bed` as NULL.
- A NULL `end_date` on a lease record indicates a month-to-month arrangement.
- Only employees with `role = 'partner'` should be used as `partner_id` in `owner` and `lease` records.
- Only employees with `role = 'associate'` should be used as `manager_id` in `property` records.

---

## AI Disclosure

AI was used in the generation of random, diverse test data. The AI data was checked and cleaned for errors before insertion into the database.