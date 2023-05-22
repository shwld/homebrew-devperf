# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Devperf < Formula
  desc "devperf is a CLI tool developed for obtaining DevOps' Four Keys."
  homepage "https://github.com/shwld/devops-metrics-tools"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.7/devops-metrics-tools-v0.0.7-aarch64-apple-darwin.tar.xz"
      sha256 "36550f4917bbdad0a802f66c042af2405bcd8ee529702656179235c84011f310"
    elsif Hardware::CPU.intel?
      url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.7/devops-metrics-tools-v0.0.7-x86_64-apple-darwin.tar.xz"
      sha256 "003ef3b85b135cb1b55916c5275eb3be8964122b35d41f650d8906d4d2ed8b45"
    end
  end

  on_linux do
    url "https://github.com/shwld/devops-metrics-tools/releases/download/v0.0.7/devops-metrics-tools-v0.0.7-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "18e2eabdf5689e892d1d55dcbeb318f298c3a912a26cba5b20403c961a665008"
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
