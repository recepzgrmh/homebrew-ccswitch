class Ccswitch < Formula
  desc "Instantly switch between multiple Claude Code accounts — no browser, no login codes"
  homepage "https://github.com/recepzgrmh/ccswitch"
  url "https://github.com/recepzgrmh/ccswitch/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "dc88da9ba23f947924f3f2b48573f1a666d32bd60ce68d370241a641504e83e2"
  version "1.5.0"

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

      Optional: enable rate-limit usage display
        ccswitch helper install <extension-id>
        (see: https://github.com/recepzgrmh/ccswitch#usage-helper)
    EOS
  end

  test do
    assert_match "ccswitch", shell_output("#{bin}/ccswitch --version")
  end
end
