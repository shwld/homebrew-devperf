# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Devperf < Formula
  desc "devperf is a CLI tool developed for obtaining DevOps' Four Keys."
  homepage "https://github.com/shwld/devops-metrics-tools"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.8/devops-metrics-tools-v0.0.8-aarch64-apple-darwin.tar.xz"
      sha256 "87c004c72338dbd7e9ec12a23161a0f7d26baa1f3b893c71d4f38e9a0d1bb5b0"
    elsif Hardware::CPU.intel?
      url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.8/devops-metrics-tools-v0.0.8-x86_64-apple-darwin.tar.xz"
      sha256 "315d64f05f21ab67e0d59143a596750af19fae901878315b8fbcd1e5a9833154"
    end
  end

  on_linux do
    url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.8/devops-metrics-tools-v0.0.8-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "c828c8c40bc6eab81423cfb832c16c54af6a7be7fc994db315990d081315ba5d"
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
