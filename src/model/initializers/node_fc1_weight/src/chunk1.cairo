use orion::numbers::{FixedTrait, FP16x16};

fn compute(ref a: Array<FP16x16>) {
a.append(FP16x16 { mag: 12156, sign: false });
a.append(FP16x16 { mag: 14083, sign: true });
a.append(FP16x16 { mag: 16001, sign: true });
a.append(FP16x16 { mag: 15614, sign: true });
a.append(FP16x16 { mag: 11597, sign: true });
a.append(FP16x16 { mag: 18444, sign: true });
a.append(FP16x16 { mag: 16462, sign: false });
a.append(FP16x16 { mag: 16800, sign: true });
a.append(FP16x16 { mag: 10558, sign: true });
a.append(FP16x16 { mag: 4909, sign: true });
a.append(FP16x16 { mag: 14432, sign: false });
a.append(FP16x16 { mag: 17281, sign: true });
a.append(FP16x16 { mag: 9733, sign: true });
a.append(FP16x16 { mag: 6459, sign: false });
a.append(FP16x16 { mag: 2877, sign: false });
a.append(FP16x16 { mag: 16905, sign: true });
a.append(FP16x16 { mag: 14199, sign: false });
a.append(FP16x16 { mag: 16164, sign: false });
a.append(FP16x16 { mag: 18760, sign: false });
a.append(FP16x16 { mag: 15213, sign: true });
a.append(FP16x16 { mag: 8193, sign: true });
a.append(FP16x16 { mag: 1965, sign: true });
a.append(FP16x16 { mag: 2468, sign: true });
a.append(FP16x16 { mag: 10165, sign: true });
a.append(FP16x16 { mag: 6136, sign: true });
a.append(FP16x16 { mag: 15159, sign: true });
a.append(FP16x16 { mag: 3752, sign: false });
a.append(FP16x16 { mag: 5794, sign: true });
a.append(FP16x16 { mag: 19034, sign: false });
a.append(FP16x16 { mag: 12277, sign: false });
a.append(FP16x16 { mag: 16872, sign: false });
a.append(FP16x16 { mag: 13543, sign: false });
a.append(FP16x16 { mag: 18755, sign: false });
a.append(FP16x16 { mag: 1087, sign: false });
a.append(FP16x16 { mag: 9427, sign: true });
a.append(FP16x16 { mag: 18353, sign: false });
a.append(FP16x16 { mag: 9519, sign: false });
a.append(FP16x16 { mag: 6339, sign: true });
a.append(FP16x16 { mag: 6056, sign: true });
a.append(FP16x16 { mag: 16299, sign: false });
a.append(FP16x16 { mag: 14762, sign: false });
a.append(FP16x16 { mag: 1336, sign: false });
a.append(FP16x16 { mag: 17279, sign: true });
a.append(FP16x16 { mag: 17246, sign: true });
a.append(FP16x16 { mag: 1345, sign: true });
a.append(FP16x16 { mag: 11913, sign: true });
a.append(FP16x16 { mag: 3868, sign: false });
a.append(FP16x16 { mag: 13313, sign: true });
a.append(FP16x16 { mag: 16857, sign: true });
a.append(FP16x16 { mag: 13281, sign: false });
a.append(FP16x16 { mag: 6769, sign: false });
a.append(FP16x16 { mag: 560, sign: false });
a.append(FP16x16 { mag: 1640, sign: false });
a.append(FP16x16 { mag: 14955, sign: true });
a.append(FP16x16 { mag: 734, sign: true });
a.append(FP16x16 { mag: 1319, sign: false });
a.append(FP16x16 { mag: 11966, sign: false });
a.append(FP16x16 { mag: 9066, sign: true });
a.append(FP16x16 { mag: 14151, sign: true });
a.append(FP16x16 { mag: 406, sign: false });
a.append(FP16x16 { mag: 314, sign: true });
a.append(FP16x16 { mag: 11289, sign: true });
a.append(FP16x16 { mag: 16764, sign: false });
a.append(FP16x16 { mag: 5343, sign: false });
a.append(FP16x16 { mag: 19462, sign: true });
a.append(FP16x16 { mag: 9442, sign: false });
a.append(FP16x16 { mag: 12119, sign: true });
a.append(FP16x16 { mag: 13292, sign: true });
a.append(FP16x16 { mag: 5851, sign: true });
a.append(FP16x16 { mag: 15321, sign: false });
a.append(FP16x16 { mag: 4049, sign: false });
a.append(FP16x16 { mag: 19518, sign: false });
a.append(FP16x16 { mag: 18377, sign: false });
a.append(FP16x16 { mag: 1943, sign: true });
a.append(FP16x16 { mag: 10356, sign: true });
a.append(FP16x16 { mag: 19073, sign: false });
a.append(FP16x16 { mag: 10620, sign: true });
a.append(FP16x16 { mag: 7402, sign: true });
a.append(FP16x16 { mag: 7545, sign: true });
a.append(FP16x16 { mag: 10468, sign: true });
a.append(FP16x16 { mag: 2514, sign: true });
a.append(FP16x16 { mag: 9821, sign: true });
a.append(FP16x16 { mag: 11276, sign: false });
a.append(FP16x16 { mag: 5061, sign: true });
a.append(FP16x16 { mag: 12615, sign: false });
a.append(FP16x16 { mag: 16899, sign: false });
a.append(FP16x16 { mag: 2803, sign: true });
a.append(FP16x16 { mag: 9370, sign: false });
a.append(FP16x16 { mag: 17102, sign: false });
a.append(FP16x16 { mag: 9147, sign: true });
a.append(FP16x16 { mag: 15053, sign: false });
a.append(FP16x16 { mag: 14923, sign: true });
a.append(FP16x16 { mag: 268, sign: false });
a.append(FP16x16 { mag: 2299, sign: true });
a.append(FP16x16 { mag: 16477, sign: false });
a.append(FP16x16 { mag: 6315, sign: false });
a.append(FP16x16 { mag: 8416, sign: true });
a.append(FP16x16 { mag: 15567, sign: false });
a.append(FP16x16 { mag: 18609, sign: false });
a.append(FP16x16 { mag: 3401, sign: false });
}