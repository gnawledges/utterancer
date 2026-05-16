# Data

Two single-speaker recordings used to validate the segmentation and alignment pipeline across language, genre, and prosodic style.
Both are public domain.

```
eng_obama-unga71/
    20160920_POTUS_Opening_of_71st_Session_General_Assembly.mp3
hin_ekka-premchand-do-sakhiyan-ch9/
    dosakhiyan_09_premchand_128kb.mp3
```

## `eng_obama-unga71/`

Barack Obama's address to the 71st Session of the UN General Assembly, delivered 20 September 2016 in New York. Approximately 48 minutes of oratorical English with substantial dramatic pauses and rhetorical structure.

- **Audio**: <https://obamawhitehouse.archives.gov/videos/2016/September/20160920_POTUS_Opening_of_71st_Session_General_Assembly.mp3>
  (retrieved 15 May 2026)
- **Licence**: US federal government work — public domain in the United States
  (17 U.S.C. § 105)

## `hin_ekka-premchand-do-sakhiyan-ch9/`

Chapter 9 of *Do Sakhiyan* ("Two Friends"), a Hindi epistolary novella by Munshi Premchand, originally published 1925. The chapter is a single letter from Padma to her friend Chanda, mixing first-person narration with dialogue.
Recorded for LibriVox by Sonali Ekka.

- **Audio**: <https://www.archive.org/download/dosakhiyan_2512_librivox/dosakhiyan_09_premchand_128kb.mp3>
  (retrieved 15 May 2026)
- **LibriVox catalogue entry**: <https://librivox.org/do-sakhiyan-by-premchand/>
- **Reader**: Sonali Ekka — <https://librivox.org/reader/19651>
- **Licence**: LibriVox recording is public domain. The underlying Premchand text is also public domain (author died 1936; copyright expired in most jurisdictions including India and the United States)

## Why these two

The pair stress-tests the pipeline along independent axes:

|                  | Obama UNGA71              | Premchand letter 9             |
|------------------|---------------------------|--------------------------------|
| Language         | English                   | Hindi                          |
| Script           | Latin                     | Devanagari                     |
| Genre            | political oratory         | literary narrative + dialogue  |
| Prosodic style   | dramatic emphasis pauses  | compressed clause pauses       |
| Sentence shape   | long rhetorical periods   | mixed: short tags + descriptive |

Methods that work on one but fail on the other expose corpus-specific assumptions worth surfacing.

## Adding a new corpus

Create a new directory `{lang}_{speaker}-{work}/` and drop the audio file in.
Single-speaker mono recordings work best with the current pipeline.
Anything under 60 minutes runs end-to-end on a free Colab GPU in well under an hour.
