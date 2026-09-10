#if DEBUG
import Foundation
#if canImport(SwiftUI)
import SwiftUI
#endif

/// Static catalog payloads for offline detail UI work. Decoded with the shared
/// API decoder so neither Xcode Previews nor `-debugDetailPreview` need a server.
///
/// Run SiloMac with launch argument `-debugDetailPreview` (optional `movie` /
/// `series`) to open the template as the whole window.
enum ItemDetailPreviewData {
    static let movie: ItemDetail = decode("""
        {
          "content_id": "preview-movie-arrival",
          "type": "movie",
          "title": "Arrival",
          "original_title": "Arrival",
          "year": 2016,
          "overview": "A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.",
          "tagline": "Why are they here?",
          "runtime": 116,
          "content_rating": "PG-13",
          "genres": ["Drama", "Science Fiction", "Mystery"],
          "rating_imdb": 7.9,
          "rating_tmdb": 7.6,
          "rating_rt_critic": 94,
          "rating_rt_audience": 82,
          "studios": ["21 Laps Entertainment", "FilmNation Entertainment"],
          "countries": ["United States"],
          "release_date": "2016-11-11",
          "cast": [
            {"name": "Amy Adams", "character": "Louise Banks", "order": 0, "person_id": "preview-person-1"},
            {"name": "Jeremy Renner", "character": "Ian Donnelly", "order": 1, "person_id": "preview-person-2"},
            {"name": "Forest Whitaker", "character": "Colonel Weber", "order": 2, "person_id": "preview-person-3"}
          ],
          "crew": [
            {"name": "Denis Villeneuve", "job": "Director", "person_id": "preview-person-4"}
          ],
          "versions": [
            {
              "file_id": 101,
              "file_name": "Arrival.2016.2160p.mkv",
              "resolution": "2160p",
              "codec_video": "hevc",
              "codec_audio": "truehd",
              "hdr": true,
              "container": "mkv",
              "file_size": 42000000000,
              "duration": 6960,
              "bitrate": 48000,
              "edition": "Theatrical",
              "edition_raw": "Theatrical",
              "audio_tracks": [
                {
                  "index": 0,
                  "language": "eng",
                  "codec": "truehd",
                  "channels": 8,
                  "layout": "7.1",
                  "title": "English Atmos"
                },
                {
                  "index": 1,
                  "language": "rus",
                  "codec": "ac3",
                  "channels": 6,
                  "layout": "5.1",
                  "title": "Russian"
                }
              ],
              "subtitle_tracks": [
                {
                  "index": 0,
                  "language": "eng",
                  "codec": "subrip",
                  "title": "English",
                  "forced": false,
                  "hearing_impaired": false
                },
                {
                  "index": 1,
                  "language": "rus",
                  "codec": "subrip",
                  "title": "Russian",
                  "forced": false,
                  "hearing_impaired": false
                }
              ]
            }
          ],
          "overlay_summary": {
            "resolution": "4K",
            "hdr": "HDR10",
            "audio": "TrueHD",
            "audio_channels": "7.1",
            "video_codec": "HEVC",
            "multi_audio": true,
            "multi_sub": true
          },
          "user_data": {
            "played": false,
            "is_in_progress": true,
            "position_seconds": 2400,
            "duration_seconds": 6960,
            "last_file_id": 101,
            "last_resolution": "2160p",
            "last_hdr": true
          }
        }
        """)

    static let series: ItemDetail = decode("""
        {
          "content_id": "preview-series-severance",
          "type": "series",
          "title": "Severance",
          "original_title": "Severance",
          "year": 2022,
          "overview": "Mark leads a team of office workers whose memories have been surgically divided between their work and personal lives.",
          "tagline": "The work is mysterious and important.",
          "content_rating": "TV-MA",
          "genres": ["Drama", "Mystery", "Science Fiction"],
          "rating_imdb": 8.7,
          "rating_tmdb": 8.4,
          "season_count": 2,
          "studios": ["Fifth Season"],
          "networks": ["Apple TV+"],
          "countries": ["United States"],
          "first_air_date": "2022-02-18",
          "cast": [
            {"name": "Adam Scott", "character": "Mark Scout", "order": 0, "person_id": "preview-person-10"},
            {"name": "Britt Lower", "character": "Helly R.", "order": 1, "person_id": "preview-person-11"},
            {"name": "Zach Cherry", "character": "Dylan G.", "order": 2, "person_id": "preview-person-12"}
          ],
          "crew": [
            {"name": "Dan Erickson", "job": "Creator", "person_id": "preview-person-13"}
          ]
        }
        """)

    static let seasons: [Season] = decode("""
        [
          {
            "content_id": "preview-series-severance-S1",
            "season_number": 1,
            "title": "Season 1",
            "episode_count": 3,
            "air_date": "2022-02-18"
          },
          {
            "content_id": "preview-series-severance-S2",
            "season_number": 2,
            "title": "Season 2",
            "episode_count": 2,
            "air_date": "2025-01-17"
          }
        ]
        """)

    static let episodes: [EpisodeListItem] = decode("""
        [
          {
            "content_id": "preview-series-severance-S1E1",
            "season_number": 1,
            "episode_number": 1,
            "title": "Good News About Hell",
            "overview": "Mark is promoted to department head and tasked with welcoming a new employee.",
            "air_date": "2022-02-18",
            "runtime": 57,
            "user_data": {
              "played": true,
              "is_in_progress": false,
              "position_seconds": 0,
              "duration_seconds": 3420
            }
          },
          {
            "content_id": "preview-series-severance-S1E2",
            "season_number": 1,
            "episode_number": 2,
            "title": "Half Loop",
            "overview": "Helly settles into her new role as Mark introduces her to the team.",
            "air_date": "2022-02-25",
            "runtime": 53,
            "user_data": {
              "played": false,
              "is_in_progress": true,
              "position_seconds": 1200,
              "duration_seconds": 3180
            }
          },
          {
            "content_id": "preview-series-severance-S1E3",
            "season_number": 1,
            "episode_number": 3,
            "title": "In Perpetuity",
            "overview": "Mark takes the team on a field trip and Irving makes a discovery.",
            "air_date": "2022-03-04",
            "runtime": 56
          }
        ]
        """)

    private static func decode<T: Decodable>(_ json: String) -> T {
        do {
            return try HTTPClient.makeJSONDecoder().decode(T.self, from: Data(json.utf8))
        } catch {
            preconditionFailure("ItemDetailPreviewData fixture failed to decode: \(error)")
        }
    }
}

#if !os(tvOS)
/// Full-window host for `-debugDetailPreview`. No auth, no API.
struct DetailPreviewRoot: View {
    enum Kind: String, CaseIterable, Identifiable {
        case movie
        case series
        var id: String { rawValue }
        var label: String {
            switch self {
            case .movie: return "Movie"
            case .series: return "Series"
            }
        }
    }

    @State private var kind: Kind

    init(kind: Kind = .movie) {
        _kind = State(initialValue: kind)
    }

    var body: some View {
        NavigationStack {
            Group {
                switch kind {
                case .movie:
                    moviePage
                case .series:
                    seriesPage
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Picker("Template", selection: $kind) {
                        ForEach(Kind.allCases) { option in
                            Text(option.label).tag(option)
                        }
                    }
                    .pickerStyle(.segmented)
                    .frame(maxWidth: 280)
                }
            }
        }
        .environmentObject(OverlayPrefsStore.shared)
        .preferredColorScheme(.dark)
    }

    private var moviePage: some View {
        MovieDetailContent(
            detail: ItemDetailPreviewData.movie,
            isFavorite: true,
            inWatchlist: false,
            isWatched: false,
            selectedVersionFileId: 101,
            selectedAudioTrackIndex: nil,
            selectedSubtitleTrackIndex: nil,
            seasons: [],
            selectedSeason: nil,
            seasonEpisodes: [],
            isLoadingEpisodes: false,
            onPlay: { _ in },
            onSelectVersion: { _ in },
            onSelectAudioTrack: { _ in },
            onSelectSubtitleTrack: { _ in },
            onSelectSeason: { _ in },
            onToggleFavorite: {},
            onToggleWatchlist: {},
            onToggleWatched: {},
            onPersonTap: { _ in },
            onNavigateToItem: { _ in },
            onEpisodeTap: { _ in },
            belowOverview: { EmptyView() }
        )
    }

    private var seriesPage: some View {
        let seasons = ItemDetailPreviewData.seasons
        return SeriesDetailContent(
            detail: ItemDetailPreviewData.series,
            isFavorite: false,
            inWatchlist: true,
            isWatched: false,
            seasons: seasons,
            selectedSeason: seasons.first,
            episodes: ItemDetailPreviewData.episodes,
            isLoadingEpisodes: false,
            selectedNextUpFileId: nil,
            selectedNextUpAudioTrackIndex: nil,
            selectedNextUpSubtitleTrackIndex: nil,
            nextUpWatchDetail: nil,
            onSelectSeason: { _ in },
            onPlayEpisode: { _, _, _ in },
            onEpisodeTap: { _ in },
            onSelectNextUpVersion: { _ in },
            onSelectNextUpAudioTrack: { _ in },
            onSelectNextUpSubtitleTrack: { _ in },
            onToggleFavorite: {},
            onToggleWatchlist: {},
            onToggleWatched: {},
            onPersonTap: { _ in },
            onNavigateToItem: { _ in },
            belowOverview: { EmptyView() }
        )
    }

    /// `-debugDetailPreview` or `-debugDetailPreview movie|series`.
    static var launchKind: Kind? {
        guard let index = CommandLine.arguments.firstIndex(of: "-debugDetailPreview") else {
            return nil
        }
        if index + 1 < CommandLine.arguments.count {
            let raw = CommandLine.arguments[index + 1].lowercased()
            if !raw.hasPrefix("-"), let kind = Kind(rawValue: raw) {
                return kind
            }
        }
        return .movie
    }
}
#endif
#endif
