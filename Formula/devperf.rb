# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Devperf < Formula
  desc "devperf is a CLI tool developed for obtaining DevOps' Four Keys."
  homepage "https://github.com/shwld/devops-metrics-tools"
  license "MIT"

  depends_on "gcc" => :build unless OS.mac?

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.9/devops-metrics-tools-v0.0.9-aarch64-apple-darwin.tar.xz"
      sha256 "27748ba7daa7be6e942c8d6f390a8697e4b8037321507384d980441d2ed218fc"
    elsif Hardware::CPU.intel?
      url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.9/devops-metrics-tools-v0.0.9-x86_64-apple-darwin.tar.xz"
      sha256 "8246d032ef9b2b9c23880f0a21b3bd9b4fa1df9f40c0c9f63c7f81a5e8cc5e83"
    end
  end

  on_linux do
    url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.9/devops-metrics-tools-v0.0.9-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "9e16c7a21681815721f335bea69638d763d194c48071619d265b6190ddda1e86"
  end

  def install
    bin.install "devops-metrics-tools" => "devperf"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test devperf`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
