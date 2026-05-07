class Ccswitch < Formula
  desc "Instantly switch between multiple Claude Code accounts — no browser, no login codes"
  homepage "https://github.com/recepzgrmh/ccswitch"
  url "https://github.com/recepzgrmh/ccswitch/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "052846e7a6babd206644da475d69179ef770c2008abfa2ef63e1f562c862138f"
  version "1.3.0"

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
        ccswitch status           # show active account + rate limit usage
    EOS
  end

  test do
    assert_match "ccswitch", shell_output("#{bin}/ccswitch --version")
  end
end
