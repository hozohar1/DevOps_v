import requests

def check_server(url, expected_status):
    try:
        response = requests.get(url)
        if response.status_code == expected_status:
            print(f"Success: {url} returned status {response.status_code}")
            return True
        else:
            print(f"Error: {url} returned status {response.status_code}, expected {expected_status}")
            return False
    except Exception as e:
        print(f"Failed to connect to {url}: {e}")
        return False

# בדוק את שני השרתים
server1 = check_server("http://nginx:8080", 200)
server2 = check_server("http://nginx:8081", 404)

# יצא קוד בהתאם לתוצאות הבדיקה
if server1 and server2:
    with open("/output/succeeded", "w") as f:
        f.write("All tests passed")
    exit(0)
else:
    with open("/output/fail", "w") as f:
        f.write("Some tests failed")
    exit(1)
