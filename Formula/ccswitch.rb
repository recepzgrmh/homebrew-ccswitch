class Ccswitch < Formula
  desc "Instantly switch between multiple Claude Code accounts — no browser, no login codes"
  homepage "https://github.com/recepzgrmh/ccswitch"
  url "https://github.com/recepzgrmh/ccswitch/archive/refs/tags/v1.6.1.tar.gz"
  sha256 "6fab512e874d63dca925df97debe59474e0add4c50402f06b699b918f2f45570"
  version "1.6.1"

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

      Usage display: open Chrome with claude.ai logged in — ccswitch handles the rest.
    EOS
  end

  test do
    assert_match "ccswitch", shell_output("#{bin}/ccswitch --version")
  end
end
