Thanks to Keisuke Kinoshita for help to fix some problem.

## ConvTasNet

A PyTorch implementation of the [TasNet: Surpassing Ideal Time-Frequency Masking for Speech Separation](https://arxiv.org/abs/1809.07454)
 and [Improving noise robust automatic speech recognition with single-channel time-domain enhancement network](https://arxiv.org/abs/2003.03998)

### Requirements

see [requirements.txt](requirements.txt)

### Usage

* training: configure [conf.py](nnet/conf.py) and run [train.sh](train.sh)

* inference
```bash
./nnet/separate.py /path/to/checkpoint --input /path/to/mix.scp --gpu 0 > separate.log 2>&1 &
```

* evaluate
```bash
./nnet/compute_si_snr.py /path/to/ref_spk1.scp,/path/to/ref_spk2.scp /path/to/inf_spk1.scp,/path/to/inf_spk2.scp
```

* file format
The ".scp" file is kaldi's script file, its content include UUID and file path. Like this:
```
uuid1 /path/to/file1
uuid2 /path/to/file2
```

mix.scp: Mixture multiple speaker speech from skp1.scp, skp2.scp ... spk$N.scp
...

### Reference

Luo Y, Mesgarani N. TasNet: Surpassing Ideal Time-Frequency Masking for Speech Separation[J]. arXiv preprint arXiv:1809.07454, 2018.

Keisuke Kinoshita, Tsubasa Ochiai, Marc Delcroix, Tomohiro Nakatani. Improving noise robust automatic speech recognition with single-channel time-domain enhancement network. arXiv preprint arXiv:2003.03998, 2020.

