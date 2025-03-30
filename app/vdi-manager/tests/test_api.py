import unittest
from src.main import app

class TestVDIAPI(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client()
    
    def test_home(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b"Welcome", response.data)

    def test_status(self):
        response = self.app.get('/api/status')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b"healthy", response.data)

if __name__ == '__main__':
    unittest.main()
