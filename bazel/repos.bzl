load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def swiftlint_repos():
    """Fetches SwiftLint repositories"""
    http_archive(
        name = "swiftlint_com_github_jpsim_sourcekitten",
        url = "https://github.com/jpsim/SourceKitten/archive/f7cf1e3b6328f21e344e83450ae1298af69de281.zip",
        sha256 = "016356beaca8d892ad36f4343016dcc212944472059f44389537bc3934e8caef",
        strip_prefix = "SourceKitten-f7cf1e3b6328f21e344e83450ae1298af69de281",
    )

    # TODO: Move to sourcekitten_deps()
    http_archive(
        name = "sourcekitten_com_github_jpsim_yams",
        url = "https://github.com/jpsim/Yams/archive/64f37c1adc741c6422e58ada688f999f48fc936f.zip",
        sha256 = "aff42b7d9bcbbb7ee90dd5bef6fc302231b895635f575b23ddc9b0a11d77ec0a",
        strip_prefix = "Yams-64f37c1adc741c6422e58ada688f999f48fc936f",
    )

    http_archive(
        name = "sourcekitten_com_github_drmohundro_SWXMLHash",
        url = "https://github.com/drmohundro/SWXMLHash/archive/6469881a3f30417c5bb02404ea4b69207f297592.zip",
        build_file = "@com_github_realm_swiftlint//bazel:SWXMLHash.BUILD",
        sha256 = "c31b0a5869bbe8844a19a29b8507ddfe95e5d8f7563e526ea698b69dfb85ca74",
        strip_prefix = "SWXMLHash-6469881a3f30417c5bb02404ea4b69207f297592",
    )

    http_archive(
        name = "swiftlint_com_github_apple_swift_argument_parser",
        url = "https://github.com/apple/swift-argument-parser/archive/refs/tags/1.1.3.tar.gz",
        sha256 = "e52c0ac4e17cfad9f13f87a63ddc850805695e17e98bf798cce85144764cdcaa",
        build_file = "@com_github_realm_swiftlint//bazel:SwiftArgumentParser.BUILD",
        strip_prefix = "swift-argument-parser-1.1.3",
    )

    http_archive(
        name = "swiftlint_com_github_scottrhoyt_swifty_text_table",
        url = "https://github.com/scottrhoyt/SwiftyTextTable/archive/refs/tags/0.9.0.tar.gz",
        sha256 = "b77d403db9f33686caeb2a12986997fb02a0819e029e669c6b9554617c4fd6ae",
        build_file = "@com_github_realm_swiftlint//bazel:SwiftyTextTable.BUILD",
        strip_prefix = "SwiftyTextTable-0.9.0",
    )

    http_archive(
        name = "com_github_keith_swift_syntax_bazel",
        sha256 = "f83b8449f84e29d263d2b0ceb9d2ae7f88c9f2a81f4b10035e94073664507507",
        strip_prefix = "swift-syntax-bazel-13.3.13E113",
        url = "https://github.com/keith/swift-syntax-bazel/archive/refs/tags/13.3.13E113.tar.gz",
    )
