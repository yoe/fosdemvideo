These scripts were used to transcode videos made at FOSDEM from DV into WebM.

# dv2webm-batch

This scripts takes a command file, which looks somewhat like this:

<pre>
filename|type|starttime|endtime|description
</pre>

where

- `filename` is the filename of the .dv file, without the .dv
  extension
- `type` is one of 0 (unused file), 1 (file containing an
  entire recording), or 3 (file containing part of a recording). Any
  other values are ignored.
- `starttime` is the start of the interesting content inside _this_ file.
- `endtime` is the end of the interesting content inside _this_ file.
- `description` describes what the file contains; e.g., the title of the
  talk. The .webm file will use this as its filename.

Using that information, dv2webm will output (on stdout) a script that
will use avconv to cut out the interesting bits from the given files,
and pass the result to dv2webm.

# dv2webm

This is a simple shell script which uses gstreamer to do a 2-pass
transcoding from DV into WebM. It also uses sox to do audio
normalization.
