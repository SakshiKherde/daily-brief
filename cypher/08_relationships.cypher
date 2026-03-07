// Customer → Segment
MATCH (c:Customer {id: 'C001'}), (s:Segment {name: 'High Value'}) CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C003'}), (s:Segment {name: 'High Value'}) CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C005'}), (s:Segment {name: 'High Value'}) CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C007'}), (s:Segment {name: 'At Risk'})    CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C010'}), (s:Segment {name: 'High Value'}) CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C002'}), (s:Segment {name: 'At Risk'})    CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C006'}), (s:Segment {name: 'New Customer'}) CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C009'}), (s:Segment {name: 'New Customer'}) CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C004'}), (s:Segment {name: 'At Risk'})    CREATE (c)-[:BELONGS_TO]->(s);
MATCH (c:Customer {id: 'C008'}), (s:Segment {name: 'High Value'}) CREATE (c)-[:BELONGS_TO]->(s);

// Customer → Location
MATCH (c:Customer {id: 'C001'}), (l:Location {city: 'New York'})       CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C002'}), (l:Location {city: 'Austin'})         CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C003'}), (l:Location {city: 'San Francisco'})  CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C004'}), (l:Location {city: 'Chicago'})        CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C005'}), (l:Location {city: 'London'})         CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C006'}), (l:Location {city: 'Austin'})         CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C007'}), (l:Location {city: 'New York'})       CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C008'}), (l:Location {city: 'San Francisco'})  CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C009'}), (l:Location {city: 'Chicago'})        CREATE (c)-[:LOCATED_IN]->(l);
MATCH (c:Customer {id: 'C010'}), (l:Location {city: 'London'})         CREATE (c)-[:LOCATED_IN]->(l);

// Customer → Channel
MATCH (c:Customer {id: 'C001'}), (ch:Channel {name: 'Web'})      CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C001'}), (ch:Channel {name: 'Mobile'})   CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C002'}), (ch:Channel {name: 'Mobile'})   CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C003'}), (ch:Channel {name: 'Web'})      CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C003'}), (ch:Channel {name: 'Email'})    CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C004'}), (ch:Channel {name: 'Web'})      CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C005'}), (ch:Channel {name: 'In-Store'}) CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C006'}), (ch:Channel {name: 'Mobile'})   CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C007'}), (ch:Channel {name: 'Email'})    CREATE (c)-[:INTERACTS_VIA]->(ch);
MATCH (c:Customer {id: 'C010'}), (ch:Channel {name: 'Web'})      CREATE (c)-[:INTERACTS_VIA]->(ch);

// Customer → Order (PLACED)
MATCH (c:Customer {id: 'C001'}), (o:Order {id: 'O001'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C002'}), (o:Order {id: 'O002'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C003'}), (o:Order {id: 'O003'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C004'}), (o:Order {id: 'O004'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C005'}), (o:Order {id: 'O005'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C006'}), (o:Order {id: 'O006'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C007'}), (o:Order {id: 'O007'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C008'}), (o:Order {id: 'O008'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C009'}), (o:Order {id: 'O009'}) CREATE (c)-[:PLACED]->(o);
MATCH (c:Customer {id: 'C010'}), (o:Order {id: 'O010'}) CREATE (c)-[:PLACED]->(o);

// Order → Product (CONTAINS)
MATCH (o:Order {id: 'O001'}), (p:Product {id: 'P001'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O001'}), (p:Product {id: 'P002'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O002'}), (p:Product {id: 'P002'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O003'}), (p:Product {id: 'P003'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O003'}), (p:Product {id: 'P004'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O004'}), (p:Product {id: 'P004'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O005'}), (p:Product {id: 'P003'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O006'}), (p:Product {id: 'P006'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O006'}), (p:Product {id: 'P008'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O007'}), (p:Product {id: 'P007'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O008'}), (p:Product {id: 'P008'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O009'}), (p:Product {id: 'P005'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O010'}), (p:Product {id: 'P001'}) CREATE (o)-[:CONTAINS]->(p);
MATCH (o:Order {id: 'O010'}), (p:Product {id: 'P007'}) CREATE (o)-[:CONTAINS]->(p);

// Customer → SupportTicket (SUBMITTED)
MATCH (c:Customer {id: 'C001'}), (t:SupportTicket {id: 'T001'}) CREATE (c)-[:SUBMITTED]->(t);
MATCH (c:Customer {id: 'C002'}), (t:SupportTicket {id: 'T002'}) CREATE (c)-[:SUBMITTED]->(t);
MATCH (c:Customer {id: 'C003'}), (t:SupportTicket {id: 'T003'}) CREATE (c)-[:SUBMITTED]->(t);
MATCH (c:Customer {id: 'C004'}), (t:SupportTicket {id: 'T004'}) CREATE (c)-[:SUBMITTED]->(t);
MATCH (c:Customer {id: 'C005'}), (t:SupportTicket {id: 'T005'}) CREATE (c)-[:SUBMITTED]->(t);
MATCH (c:Customer {id: 'C006'}), (t:SupportTicket {id: 'T006'}) CREATE (c)-[:SUBMITTED]->(t);
MATCH (c:Customer {id: 'C007'}), (t:SupportTicket {id: 'T007'}) CREATE (c)-[:SUBMITTED]->(t);
MATCH (c:Customer {id: 'C010'}), (t:SupportTicket {id: 'T008'}) CREATE (c)-[:SUBMITTED]->(t);

// SupportTicket → Product (ABOUT)
MATCH (t:SupportTicket {id: 'T001'}), (p:Product {id: 'P001'}) CREATE (t)-[:ABOUT]->(p);
MATCH (t:SupportTicket {id: 'T003'}), (p:Product {id: 'P003'}) CREATE (t)-[:ABOUT]->(p);
MATCH (t:SupportTicket {id: 'T004'}), (p:Product {id: 'P005'}) CREATE (t)-[:ABOUT]->(p);
MATCH (t:SupportTicket {id: 'T005'}), (p:Product {id: 'P002'}) CREATE (t)-[:ABOUT]->(p);
MATCH (t:SupportTicket {id: 'T006'}), (p:Product {id: 'P004'}) CREATE (t)-[:ABOUT]->(p);
MATCH (t:SupportTicket {id: 'T007'}), (p:Product {id: 'P007'}) CREATE (t)-[:ABOUT]->(p);
MATCH (t:SupportTicket {id: 'T008'}), (p:Product {id: 'P001'}) CREATE (t)-[:ABOUT]->(p);

// Customer → Customer (REFERRED)
MATCH (c1:Customer {id: 'C001'}), (c2:Customer {id: 'C002'}) CREATE (c1)-[:REFERRED]->(c2);
MATCH (c1:Customer {id: 'C003'}), (c2:Customer {id: 'C006'}) CREATE (c1)-[:REFERRED]->(c2);
MATCH (c1:Customer {id: 'C005'}), (c2:Customer {id: 'C009'}) CREATE (c1)-[:REFERRED]->(c2);
MATCH (c1:Customer {id: 'C010'}), (c2:Customer {id: 'C004'}) CREATE (c1)-[:REFERRED]->(c2);

// Customer → Product (VIEWED)
MATCH (c:Customer {id: 'C002'}), (p:Product {id: 'P003'}) CREATE (c)-[:VIEWED]->(p);
MATCH (c:Customer {id: 'C004'}), (p:Product {id: 'P007'}) CREATE (c)-[:VIEWED]->(p);
MATCH (c:Customer {id: 'C006'}), (p:Product {id: 'P001'}) CREATE (c)-[:VIEWED]->(p);
MATCH (c:Customer {id: 'C009'}), (p:Product {id: 'P003'}) CREATE (c)-[:VIEWED]->(p);
