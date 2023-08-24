# Repeat Masker

Identify repetitive sequence, because they are difficult to map to, more variable and more likely to be misassembled.

Often the reference genome has already annotated repeats, which can be incorporated as a soft mask: capital letters are non repeats, lower case letters repeats. If that is the case, we only need to use the script `extract_nonrepeatmask.py` to generated a bed file with the non-repeat coordinates.


If the reference genome does not have repeat information already annotated as a soft mask, you might need to run RepeatMasker yourself. In the folder `runRepeatMasker` you can find an example command to run RepeatMasker and a script to extrct the softmask as a bed file.