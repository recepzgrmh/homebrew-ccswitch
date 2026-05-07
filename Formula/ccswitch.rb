class Ccswitch < Formula
  desc "Instantly switch between multiple Claude Code accounts — no browser, no login codes"
  homepage "https://github.com/recepzgrmh/ccswitch"
  url "https://github.com/recepzgrmh/ccswitch/archive/refs/tags/v1.6.5.tar.gz"
  sha256 "fe0ca6bc239106a5c33108b98881fae6de9bc6689cd1fbb05dd0cc91c92c1d5a"
  version "1.6.5"

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
