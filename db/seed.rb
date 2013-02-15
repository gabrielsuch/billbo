REDIS.hmset("bills:1", :issued_by, "company1", :due_date, "25-02-2013", :total_amount, 45.9, :barcode, "0000000000000000000000001", :receipt, "", :status, :opened)
REDIS.hmset("bills:2", :issued_by, "company2", :due_date, "21-05-2013", :total_amount, 149.89, :barcode, "0000000000000000000000002", :receipt, "http://picture.jpg", :status, :closed)
REDIS.hmset("bills:3", :issued_by, "company3", :due_date, "05-12-2013", :total_amount, 91.0, :barcode, "0000000000000000000000003", :receipt, "", :status, :reserved)
REDIS.zadd('bills', Time.now.to_i, 1)
REDIS.zadd('bills', Time.now.to_i, 2)
REDIS.zadd('bills', Time.now.to_i, 3)