~variable = 5

a = 5
as = 6

s.boot

x = { SinOsc.ar( MouseX.kr(400, 500))}.play
y = { SinOsc.ar( MouseX.kr(600, 700))}.play

x.free

s.meter

s.plotTree

SynthDef

(
SynthDef(\help_notRand, { |out|
    Out.ar(out,
        SinOsc.ar(Rand(400, 800), 0, 0.2) * Line.kr(1, 0, 1, doneAction: Done.freeSelf)
    )
}).add;
)


a = Synth(\help_notRand);
b = Synth(\help_notRand); // the same freq as a



