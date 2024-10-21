CREATE TABLE "Trader" (
	"trader_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"initial_account_balance"	INTEGER NOT NULL,
	PRIMARY KEY("trader_id" AUTOINCREMENT)
);

-- Stocks table
CREATE TABLE "Stocks" (
	"stock_symbol"	TEXT,
	"exchange_name"	TEXT NOT NULL,
	"stock_name"	TEXT NOT NULL,
	"sector"	TEXT NOT NULL,
	"market_share_percentage"	INTEGER NOT NULL,
	"face_value"	INTEGER NOT NULL,
	PRIMARY KEY("stock_symbol")
);

-- Watchlist table
CREATE TABLE "Watchlist" (
	"watchlist_id"	INTEGER,
	"watchlist_name"	TEXT NOT NULL,
	"trader_id"	INTEGER NOT NULL,
	PRIMARY KEY("watchlist_id" AUTOINCREMENT),
	FOREIGN KEY("trader_id") REFERENCES "Trader"("trader_id") ON DELETE CASCADE
);

-- Includes table (associates Watchlist and Stocks)
CREATE TABLE Includes (
    watchlist_id INTEGER NOT NULL,
    stock_symbol TEXT NOT NULL,
    PRIMARY KEY (watchlist_id, stock_symbol),
    FOREIGN KEY (watchlist_id) REFERENCES Watchlist(watchlist_id) ON DELETE CASCADE,
    FOREIGN KEY (stock_symbol) REFERENCES Stocks(stock_symbol) ON DELETE CASCADE
);

-- Transactions table
CREATE TABLE "Transactions" (
	"transaction_id"	INTEGER,
	"stock_symbol"	TEXT NOT NULL,
	"timestamp"	TEXT NOT NULL,
	"quantity"	INTEGER NOT NULL,
	"type_of_trade"	NUMERIC NOT NULL CHECK("type_of_trade" IN ('BUY', 'SELL')),
	"price"	INTEGER NOT NULL,
	"trader_id"	INTEGER NOT NULL,
	PRIMARY KEY("transaction_id" AUTOINCREMENT),
	FOREIGN KEY("stock_symbol") REFERENCES "Stocks"("stock_symbol") ON DELETE CASCADE,
	FOREIGN KEY("trader_id") REFERENCES "Trader"("trader_id") ON DELETE CASCADE
);

-- Portfolios table
CREATE TABLE "Portfolios" (
	"portfolio_id"	INTEGER,
	"transaction_id"	INTEGER NOT NULL,
	PRIMARY KEY("portfolio_id","transaction_id"),
	FOREIGN KEY("transaction_id") REFERENCES "Transactions"("transaction_id") ON DELETE CASCADE
);