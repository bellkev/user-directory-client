import client


def test_list_users():
    expected = [('1', 'Kevin'), ('2', 'Paul'), ('3', 'Jim'), ('4', 'Tim'), ('5', 'Mahmood')]
    actual = client.list_users()
    print expected
    print actual
    assert expected == actual
