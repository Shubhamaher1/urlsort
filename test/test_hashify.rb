require 'helper'

class TestHashify < Test::Unit::TestCase

  def test_to_md5
    assert_equal Digest::MD5.hexdigest('hi'), 'hi'.to_md5
  end
  
  def test_to_sha1
    assert_equal Digest::SHA1.hexdigest('hi'), 'hi'.to_sha1
  end
  
  def test_to_sha2
    assert_equal Digest::SHA2.hexdigest('hi'), 'hi'.to_sha2
  end
  
  def test_hashify_default_sha1
    assert_equal 'hi'.hashify, 'hi'.hashify(:sha1)
  end
  
  def test_hashify_md5
    assert_equal Digest::MD5.hexdigest('hi'), 'hi'.hashify(:md5)
  end
  
  def test_hashify_sha1
    assert_equal Digest::SHA1.hexdigest('hi'), 'hi'.hashify(:sha1)
  end
  
  def test_hashify_sha2
    assert_equal Digest::SHA2.hexdigest('hi'), 'hi'.hashify(:sha2)
  end
  
  def test_hashify_invalid
    assert_nil 'hi'.hashify(:error)
  end
  
end