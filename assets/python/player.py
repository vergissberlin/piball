import pibrella, time, sys
 
#Note frequency for 8th Octave
notes  = { "C":4146, "C#":4435, "Db":4435, "D":4699, "D#":4978, "Eb":4978, "E":5274,
           "F":5588, "F#":5920, "Gb":5920, "G":6272, "G#":6645, "Ab":6645, "A":7040,
           "A#":7459, "Bb":7459, "B":7902, "R":0, "Q":0 }
 
def PlayMusic(tune):
  for i in range(0,(len(tune)-4),4):
    note=tune[i]
    if note != "Q":
      octave=8-tune[i+1]
      duration=tune[i+2]
      dots=tune[i+3]
      frequency = notes[note] / octave
      delay = 1000 / duration
      if dots == 1:
        delay = delay * 3/2
      if note == "R":
        pibrella.buzzer.stop()
      else:
          pibrella.buzzer.buzz(frequency)
      time.sleep(delay/1000.0)
  pibrella.buzzer.stop()
 
#PlayMusic takes an "array? list?" that contains a bunch of comma separated
# "note name",octave,duration,dotted e.g.
# "F",4,4,0,"G",3,2,1,.....
PlayMusic(eval('['+sys.stdin.read()+']'))
