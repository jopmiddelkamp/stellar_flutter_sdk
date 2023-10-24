import 'operation_responses.dart';
import '../response.dart';

/// Represents ExtendFootprintTTLOperationResponse response.
class ExtendFootprintTTLOperationResponse extends OperationResponse {
  int extendTo;

  ExtendFootprintTTLOperationResponse(this.extendTo);

  factory ExtendFootprintTTLOperationResponse.fromJson(
          Map<String, dynamic> json) =>
      ExtendFootprintTTLOperationResponse(convertInt(
          json['ledgers_to_expire'] == null
              ? json['extend_to']
              : json['ledgers_to_expire'])!)
        ..id = int.tryParse(json['id'])
        ..sourceAccount =
            json['source_account'] == null ? null : json['source_account']
        ..sourceAccountMuxed = json['source_account_muxed'] == null
            ? null
            : json['source_account_muxed']
        ..sourceAccountMuxedId = json['source_account_muxed_id'] == null
            ? null
            : json['source_account_muxed_id']
        ..pagingToken = json['paging_token']
        ..createdAt = json['created_at']
        ..transactionHash = json['transaction_hash']
        ..transactionSuccessful = json['transaction_successful']
        ..type = json['type']
        ..links = json['_links'] == null
            ? null
            : OperationResponseLinks.fromJson(json['_links']);
}
