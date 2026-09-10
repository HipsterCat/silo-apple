#if os(tvOS) && DEBUG
import Foundation

/// tvOS adapters over `ItemDetailPreviewData` — the same decoded payloads
/// the Mac debug template already uses. No generated artwork.
enum TVDetailPreviewData {
    static var movie: ItemDetail { ItemDetailPreviewData.movie }
    static var series: ItemDetail { ItemDetailPreviewData.series }
    static var seasons: [Season] { ItemDetailPreviewData.seasons }
    static var episodes: [EpisodeListItem] { ItemDetailPreviewData.episodes }

    static var cast: [CastMember] {
        movie.cast ?? []
    }

    static var trailerEntries: [TrailerRailEntry] {
        TrailerRail.entries(
            videos: [
                ItemVideo(
                    kind: "trailer",
                    site: "youtube",
                    siteKey: "preview-arrival-trailer",
                    name: "Official Trailer",
                    isOfficial: true
                ),
                ItemVideo(
                    kind: "teaser",
                    site: "youtube",
                    siteKey: "preview-arrival-teaser",
                    name: "Teaser",
                    isOfficial: true
                )
            ],
            extras: [
                ItemExtra(
                    contentId: "extra-arrival-making-of",
                    kind: "featurette",
                    title: "The Making of Arrival",
                    durationSeconds: 480,
                    fileId: 1
                ),
                ItemExtra(
                    contentId: "extra-arrival-deleted",
                    kind: "deleted_scene",
                    title: "Deleted Scene — Louise and Ian",
                    durationSeconds: 210,
                    fileId: 2
                )
            ],
            allowRemote: true
        )
    }

    static var similarItems: [SimilarPosterItem] {
        [
            SimilarPosterItem(detail: movie),
            SimilarPosterItem(detail: series),
            SimilarPosterItem(
                contentId: "preview-sim-interstellar",
                title: "Interstellar",
                posterUrl: nil,
                posterThumbhash: nil,
                year: 2014
            ),
            SimilarPosterItem(
                contentId: "preview-sim-dune",
                title: "Dune: Part Two",
                posterUrl: nil,
                posterThumbhash: nil,
                year: 2024
            )
        ]
    }

    static var popoverItems: [TVActionPopoverItem] {
        [
            TVActionPopoverItem(
                id: "2160p",
                title: "2160p HEVC",
                detail: "TrueHD Atmos · 42 GB",
                isSelected: true
            ),
            TVActionPopoverItem(
                id: "1080p",
                title: "1080p H.264",
                detail: "AC3 5.1 · 12 GB"
            ),
            TVActionPopoverItem(
                id: "720p",
                title: "720p",
                detail: "Stereo · 4.2 GB",
                isEnabled: false
            )
        ]
    }
}

extension SimilarPosterItem {
    init(
        contentId: String,
        title: String,
        posterUrl: String?,
        posterThumbhash: String?,
        year: Int?
    ) {
        self.contentId = contentId
        self.title = title
        self.posterUrl = posterUrl
        self.posterThumbhash = posterThumbhash
        self.year = year
    }
}
#endif
