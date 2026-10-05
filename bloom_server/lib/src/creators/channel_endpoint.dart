import '../generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Endpoint for the curated creator list.
/// From the app it is reachable as `client.channel`.
class ChannelEndpoint extends Endpoint {
  /// Saves a creator. If this YouTube channel is already stored,
  /// the existing row is returned instead of creating a duplicate.
  Future<Channel> addChannel(Session session, Channel channel) async {
    final existing = await Channel.db.findFirstRow(
      session,
      where: (t) => t.youtubeChannelId.equals(channel.youtubeChannelId),
    );
    if (existing != null) return existing;
    return await Channel.db.insertRow(session, channel);
  }

  /// Returns every creator in the Bloom list.
  Future<List<Channel>> listChannels(Session session) async {
    return await Channel.db.find(session);
  }

  /// Returns how many creators are stored.
  Future<int> channelCount(Session session) async {
    return await Channel.db.count(session);
  }
}
