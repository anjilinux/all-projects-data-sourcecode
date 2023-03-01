import json

def test_index(app, client):
    del app
    res = client.get('/')
    assert res.status_code == 200
    expected = {'Site': 'Up'}
    assert expected == json.loads(res.get_data(as_text=True))