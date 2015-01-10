module Math
  def self.gcd(a, b)
    # trivial case first: gcd(a, 0) == 1*a + 0*0
    return 1, 0 if b == 0

    # recurse: a = q*b + r
    q, r = a/b, a%b
    s, t = gcd(b, r)

    # compute and return coefficients:
    # gcd(a, b) == gcd(b, r) == s*b + t*r == s*b + t*(a - q*b)
    return t, s - q * t
  end
end
