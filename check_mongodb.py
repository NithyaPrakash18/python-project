from pymongo import MongoClient

def check_mongodb_connection():
    try:
        # Create MongoDB client
        client = MongoClient('mongodb://localhost:27017')
        
        # Try to list databases to verify connection
        dbs = client.list_database_names()
        print("MongoDB is connected!")
        print("Available databases:", dbs)
        return True
    except Exception as e:
        print(f"Error connecting to MongoDB: {str(e)}")
        return False

if __name__ == "__main__":
    check_mongodb_connection()
