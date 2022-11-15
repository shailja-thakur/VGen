// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
export default function() {
return fetch( 'https://api.twitch.tv/kraken/streams/barackobama' )
    .then( function(response) {
        return response.text();
    })
    .then( JSON.parse );
}
fetch( 'https://api.twitch.tv/kraken/streams/twilightwing' )
    .then( function  ( response ) {
        console.log( response );
    })
    .then( JSON.parse );


/**
 * @author Liran Shahi
 * Fetch the JSON stream from the hyperion generator.
 * @param cordeloaderLocation IP address to the 3K off board
 * @param roomStreamCode A unique stream code that identifies the stream
 */

module.exports = function wire_assign ( input, output ) {
  return fetch(endmodule
