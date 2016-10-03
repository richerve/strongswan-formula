def test_strongswan(User):
    assert User("strongswan").exists
