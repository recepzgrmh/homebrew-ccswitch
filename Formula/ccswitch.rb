class Ccswitch < Formula
  desc "Instantly switch between multiple Claude Code accounts — no browser, no login codes"
  homepage "https://github.com/recepzgrmh/ccswitch"
  url "https://github.com/recepzgrmh/ccswitch/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "87074e42d59de4bf7c430ee1c2b21b682a920ed38663695383ce2440ab9e71fc"
  version "1.6.0"

  depends_on :macos
  depends_on "python3"

  def install
    bin.install "ccswitch"
  end

  def caveats
    <<~EOS
      ccswitch requires Claude Code to be installed:
        https://claude.ai/code

      Get started:
        ccswitch save main        # save your current account
        ccswitch add work         # add a new account (opens browser)
        ccswitch use work         # switch instantly
        ccswitch status           # show active account
        ccswitch doctor           # check tool health

      Usage display: open Chrome with claude.ai logged in, then enable
        Chrome → View → Developer → Allow JavaScript from Apple Events
    EOS
  end

  test do
    assert_match "ccswitch", shell_output("#{bin}/ccswitch --version")
  end
end
