#if os(tvOS)
import SwiftUI

/// tvOS focus behavior for the shared profile presentation.
struct TVProfileTile: View {
    let profile: UserProfile
    var isRemembered: Bool = false
    var prefersDefaultFocus: Bool = false
    var defaultFocusNamespace: Namespace.ID? = nil
    let action: () -> Void

    var body: some View {
        ProfileTile(
            profile: profile,
            isRemembered: isRemembered,
            action: action
        )
        // Lets the first profile tile claim initial focus instead of the
        // engine landing on the top-right Sign Out / Change Server chips.
        .applyDefaultFocusIfNeeded(prefersDefaultFocus, namespace: defaultFocusNamespace)
        .focusEffectDisabled()
    }
}

#if DEBUG
#Preview("Profile tile") {
    TVProfileTile(
        profile: UserProfile(
            id: "preview-profile",
            name: "Sasha",
            avatarEmoji: "🎬",
            hasPin: false,
            isChild: false,
            isPrimary: true
        ),
        action: {}
    )
    .padding(80)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
    .background(.black)
}
#endif
#endif
