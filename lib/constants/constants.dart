import 'package:intl/intl.dart';

import '../models/pregnancy_week_details.dart';

final groupListDayFormat = DateFormat('yyyy-MM-dd');
final groupSeparatorFormatter = DateFormat('d MMM yyyy');

RegExp emailRegExp = RegExp(
    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");

var pregnancyDetailsList = [
  PregnancyWeekDetails(
    week: 1,
    weekDetails:
        "The first week of development starts on the day of your last menstrual period. "
        "It is important to note and keep an important track of your menstrual cycle. "
        "This can easily be done using the MUMHEALTH PERIOD TRACKER! "
        "You are not yet officially pregnant, and while conception has not yet happened, "
        "the body starts to count from this point forward. "
        "Most women who are trying to conceive will now be focused on ovulation. "
        "We at MUMHEALTH has made this easy with the MUMHEALTH FERTILITY CALENDER TOOL.",
    bodyChanges:
        "During the first week, women spend between 5 and 7 days having a normal menstrual cycle. "
        "It is important to keep track of your menstrual cycles for several months to determine whether the cycle is 28 days, more or less. "
        "Cycle duration and cycle length are important factors to be noted",
    tips: [
      "We at MUMHEALTH want you to start to think pregnant and so act pregnant. "
          "This is a good time to begin to make healthy food choices and to start "
          "exercising to keep energy levels up so you can start pregnancy at an appropriate weight level.",
      "MUMHEALTH moms should also start taking prenatal vitamins like folic acid at this time. "
          "Folic acid prevents neural tube defects in the first weeks after conception. "
          "Many women have no idea they are pregnant until month 2 of pregnancy. "
          "Starting to take prenatal vitamins early provides great benefits for baby.",
      "Toxins are detrimental to fertility and gestation. "
          "The first week of pregnancy is the ideal time to stop smoking, "
          "stop drinking, and remove any chemical toxins from your daily environment.",
    ],
  ),
  PregnancyWeekDetails(
    week: 2,
    weekDetails: "During week 2, you are still not yet technically pregnant. "
        "This is the week following menstruation and it is at the end of this week "
        "that ovulation usually occurs so it is important to know about ovulation and fertility symptoms. "
        "Kindly refer to the MUMHEALTH FERTILITY CALENDER for better estimates of your "
        "fertility cycleThe probability of getting pregnant at the end of week 2 is why "
        "it is generally recommended to have sex 1-2 days during pregnancy week 2.",
    bodyChanges:
        "Typical ovulation signs and symptoms happen during pregnancy week 2. "
        "Ovulation signs include 'mittelschmerz' (German for pain in the middle) "
        "and cramps which signal the ripening of the egg in preparation for ovulation. "
        "Other signs of ovulation include breast tenderness, "
        "increased sexual desire and sustained basal temperature increase amongst others.",
    tips: [
      "MUMHEALTH moms should continue to eat healthily and to take folic acid.",
      "Remember to continue to exercise right but not excessively as this can affect one’s cycle."
          "Starting to take prenatal vitamins early provides great benefits for baby.",
      "Remember to stop smoking, to stop drinking and to avoid medications that can hinder fertility or harm the baby.",
      "We at MUMHEALTH are available for private gynecological consults and to guide you through this exciting journey."
    ],
  ),
  PregnancyWeekDetails(
    week: 3,
    weekDetails:
        "This is a really exciting week as it is the week the sperm meets the egg!. "
        "When the sperm and the egg meet, the sperm fertilizes the egg. "
        "Once successful, the egg shuts down so no more sperm can make it through. "
        "After conception occurs, the sperm and egg exchange information in their DNA. "
        "A combination of 23 pairs of chromosomes from each parent will be required to make up the 46 chromosomes present in the baby. "
        "Interestingly Week 3 is also the time when the baby’s sex is determined and dear MUMHEALTH moms, this depends on your partner. "
        "Dad has two types of sperm in his body – X and Women contribute one X chromosome. "
        "Men, on the other hand, can contribute X (a girl) or a Y(a boy).",
    bodyChanges:
        "Dear MUMHEALTH moms, you probably do not feel any different yet but then your body is undergoing subtle and important changes. "
        "The egg is ripening now and preparing for implantation. "
        "Once the egg is implanted, which happens usually during pregnancy week 4, "
        "the body immediately starts intense preparations. "
        "Once the implanted egg is secured in the uterus, "
        "the uterus and the cervix will begin prepping for the pregnancy. "
        "We at MUMHEALTH cannot wait to start and accompany you through this remarkable journey!",
    tips: [
      "The 3rd week of pregnancy is still too early to detect the baby in most cases.",
      "It is important to be patient right now, calm down and to try to keep having fun trying.",
      "Dear MUMHEALTH moms, please continue to eat well, exercise right and to regularly take your prenatal vitamins.",
    ],
  ),
  PregnancyWeekDetails(
    week: 4,
    weekDetails:
        "This is an important timeline and we at MUMHEALTH wish our dear mothers the very best. "
        "It is a couple of days before the expected next menstrual period or the big pregnancy news. "
        "If fertilization has occurred, the fertilized egg, "
        "will move through the fallopian tube and implant in the uterus around the middle this week 4. "
        "This fertilized egg then begins dividing exponentially. "
        "At this stage of the game, the baby is growing faster than he or she will at any other moment in the pregnancy.",
    bodyChanges: "If you are pregnant and implantation has occurred, "
        "there could be some slight bleeding when the fertilized egg implants in "
        "the uterine lining (implantation bleeding). "
        "You may begin to feel pregnant in week 4 and we at MUMHEALTH are super excited for you. "
        "Fatigue and breast tenderness, are common in this week and if you're pregnant with twins or more, "
        "you will feel the same symptoms as other moms, but on a more intense level. "
        "Kindly update your status here on MUMHEALTH if you are pregnant and let us start this exciting journey. "
        "If you are not, kindly keep hopes up and start a new cycle hopeful. We at MUMHEALTH love you all",
    tips: [
      "You may not even have an idea you're pregnant at this point. "
          "If you missed the first day of your period, try to wait a few more days before taking a pregnancy test. "
          "The longer the wait, the higher human chorionic gonadotropin, "
          "or HCG levels will be in urine, which is the hormone detected by home pregnancy tests.",
      "Dear MUMHEALTH moms, please keep eating right and stay away from known foods that give you gas, such as beans and dairy products. This is because you might begin to feel gassy and bloated during this week",
      "It is also important to eat smaller meals, exercise and avoid tight clothing.",
      "It is also the time to book a prenatal appointment and of course do not stop your prenatal vitamins.",
    ],
  ),
  PregnancyWeekDetails(
    week: 5,
    weekDetails: "By week five, the baby is beginning to grow quickly. "
        "The fertilized egg which formed the blastocyst now consists of three layers. "
        "The innermost layer or endoderm is where the intestine, bladder, pancreas, and liver will form. "
        "The middle layer, or mesoderm, is home to the heart, bones, muscles, reproductive organs, kidneys, and circulatory system. "
        "The outermost layer or ectoderm is where the brain, skin, neural tube, spinal cord, and hair will develop. "
        "This layer needs folic acid to develop properly and this is why we have been emphasizing the importance of prenatal vitamins. ",
    bodyChanges:
        "Changes are now starting to happen that you are probably noticing and we at MUMHEALTH are super excited! "
        "You have missed your period and the pregnancy test is now positive. "
        "You might not make an appointment this early in pregnancy anyway, "
        "although moms who are pregnant with multiples often get appointments sooner.",
    tips: [
      "It is time to choose an obstetrician and facility for prenatal visits.",
      "You should also give yourself and body a break. The many changing hormones may leave you feeling sick, exhausted and having mood swings but it's all normal, so give yourself a break and know that this time won't last forever. ",
      "Do things that bring you comfort and relaxation.",
      "Remember to avoid meals that leave you gassy or bloated.",
      "Remember to continue your prenatal vitamins and diet",
      "We here at MUMHEALTH are always available for you!",
    ],
  ),
  PregnancyWeekDetails(
    week: 6,
    weekDetails:
        "By the 6th week of pregnancy, your baby's heart has started beating and can often be seen early this week by transvaginal ultrasound. "
        "The baby is now about 1/17 of an inch in length and growing rapidly. "
        "You can go for your prenatal appointment and have a first ultrasound with your doctor to assess for any risks and to check the baby's heart rate. "
        "During the transvaginal ultrasound, you will be able to see and hear the heartbeat. "
        "This is a very special moment and we at MUMHEALTH are excited to share this moment with you. "
        "A heart rate over 100 beats per minute is a good sign. "
        "However, a heart rate below 90 beats per minute can be worrisome and increases the risk of a miscarriage.",
    bodyChanges: "",
    tips: [
      "Dear MUMHEALTH moms, please continue to take your prenatal vitamins, exercise right and eat well and healthily.",
      "Stop alcohol consumption and smoking",
      "Continue to do things that bring you comfort ",
      "You can also start journaling, exciting right! and feel free to share your experience with us at MUMHEALTH through any of our platforms and even personally with any of our physicians.",
    ],
  ),
  PregnancyWeekDetails(
    week: 7,
    weekDetails: "",
    bodyChanges:
        "The body is still fighting through the changes common during early pregnancy and trust us, "
        "the changes are many.Hormone levels are on the rise and morning "
        "sickness would start about now if it has not already started. You may be feeling hungry one minute and sick the next. "
        "You might be nauseous most of the time. You might be bloated and having episodes of vomiting. "
        "You might also be feeling sleepy and tired most of the time. Fatigue may leave you feeling as though you have been up all night despite sleeping for 10 hours or more. "
        "These are the battles of pregnancy, but you will soon get relief in weeks to come.",
    tips: [
      "Slow and steady wins the race and the same goes for nausea and morning sickness.",
      "Eating meals slowly and a bit at a time can greatly reduce nausea associated with pregnancy. ",
      "Dry food like crackers and water are perfect in the morning when nausea tends to be strongest. ",
      "If morning sickness happens later in the day, eat only light meals when nausea starts. ",
      "Allowing yourself plenty of time to get out of bed, and starting slow can help you experience less morning sickness. ",
      "Ginger products are great at calming the stomach. Gingersnaps, ginger ale, and real ginger can all help fight nausea.",
      "Do not worry about your baby as he/ she is doing fine, continue to try to eat well and take your prenatal vitamins",
      "Another tip is to drink fluids either before or after your meal but not with your meals. ",
      "Another tip is to drink fluids either before or after your meal but not with your meals. ",
      "If the smells of food cooking bother you, open a window while you cook/or have someone cook for you.",
      "Eating before bed may also help prevent sickness upon waking, as the stomach tends to feel nauseous when empty.",
      "There are approved drugs for nausea but medications should not be used without a physician prescription. It is important to visit a physician if the nausea and vomiting goes beyond control and leaves you dehydrated.",
      "Remember we at MUMHEALTH are here with and for you!",
    ],
  ),
  PregnancyWeekDetails(
    week: 8,
    weekDetails:
        "You baby will continue to grow rapidly. Your baby measured 1/3 of an inch and now he has grown to 3/4 of an inch in length. "
        "The heart is beating and if an ultrasound is performed, a fluttering will be seen on screen. "
        "Joints, muscles, and bones are now forming and tiny fingers and toes gain length every day. "
        "The fingers and toes are webbed at this point. "
        "Teeth are also growing under the gums and these are the baby teeth that will break through first.",
    bodyChanges:
        "The uterus is growing as the baby grows. This week 8, the uterus is about the size of an orange. "
        "Skin changes like acne and pimples (caused by pregnancy hormones) can also start occurring around week 8. "
        "Morning sickness may be subsiding in some women and intensifying in others.",
    tips: [
      "Remember to continue to eat right.",
      "Remember to continue taking your prenatal vitamins. ",
      "Do not worry over skin changes, just try to look after your skin as best as you can. Use safe cosmetic products and good moisturizing products.",
      "If you are still battling with nausea, remember to hang in there, we at MUMHEALTH are rooting for you.",
      "Continue to journal and do your best to enjoy every bit of this remarkable experience.",
    ],
  ),
  PregnancyWeekDetails(
    week: 9,
    weekDetails:
        "By the 9th week, cartilage is forming and bones are growing and so the fetus is gaining weight. "
        "The fetus now weighs about one gram. Baby is forming the skeleton that s/he will use to stand, walk, and run later in life. "
        "Eye structure is progressing and the tongue is beginning to develop. "
        "Intestines have formed in the umbilical cord but are now moving out of the cord and into the baby’s abdomen. "
        "Fingers and toes continue to lengthen but are still webbed. ",
    bodyChanges:
        "Your breasts are getting larger by the day, as the milk ducts are preparing for breastfeeding. "
        "You might still be experiencing indigestion and nausea. "
        "Weight gain will start soon, if it has not started already. It is important to continue to eat balanced diets. "
        "Hormones can be hard on the body and the digestive system seems to take a hard hit during the latter weeks of the first trimester.",
    tips: [
      "Dear MUMHEALTH mom, please continue to eat healthily and take your prenatal vitamins.",
      "If morning sickness is still sticking around, remember all our coping tips shared in the MUMHEALTH week 7 newsletter.",
      "Try to gain weight as healthily as possible, so eat balanced diets.",
      "We at MUMHEALTH understand you might be sick and tired most of the time, but try to look after your skin, hair and nails.",
    ],
  ),
  PregnancyWeekDetails(
    week: 10,
    weekDetails:
        "Your baby’s growth has reached a crucial point by week 10 and  we at MUMHEALTH are proud and excited for you. "
        "You may see fetal movements on ultrasound. The movements are very small, "
        "but they are quite important for the baby and for you too. Exciting right! "
        "With joints fully developed, your baby needs to move to ensure everything is working properly. "
        "From now until the end of the 40 weeks’ gestation, the baby will rarely be completely still. "
        "Feet, toes, and fingers are also fully developed. ",
    bodyChanges:
        "If you are lucky, morning sickness should be easing off or disappearing by week 10. "
        "While in some cases it might peak this week before starting to disappear. "
        "Not to worry dear MUMHEALTH mom, you are doing great. Your blood volume has been steadily "
        "increasing to the point of mom carrying 40-50% more blood. "
        "This blood is pumped through existing veins and so existing veins especially "
        "in the legs and breasts become more visible. You might be noticeably putting on some weight now. "
        "Typically, you will gain about 25 pounds during a single pregnancy. "
        "For multiples, that number will be higher. Remember we at MUMHEALTH think you look great and are doing exceptionally well. "
        "The second prenatal visit occurs between the 10th and 13th week. "
        "If the pregnancy is progressing perfectly, the doctor may wish to wait a bit longer.",
    tips: [
      "Weight gain will differ depending on starting weight before pregnancy. If you were underweight, you may gain as much as 40 pounds with a singleton pregnancy. Having twins increases that amount to 50 pounds or more. ",
      "Moms who started gestation at a normal weight will gain about 25 to 35 pounds with a single pregnancy and 35 to 45 pounds with twins. ",
      "Overweight mothers-to-be will need to gain far less at only 15 to 25 pounds with a single pregnancy and 25 to 35 pounds with twins. ",
      "Remember that no two moms are the same, and continue to eat healthy foods and exercise gently.",
      "You should also monitor your weight and BMI regularly to ensure you are gaining adequate weight.",
      "You also should attend your prenatal appointment and discuss with your doctor if you need a nuchal screen especially if there is a maternal history /risk of having babies with chromosomal abilities. ",
      "The test is done between 11 and 13 weeks and consists of a sonogram measurement of the fetus' nuchal fold and a blood test. These are done to calculate the risk of having a fetus with a chromosomal anomaly like Trisomy 21 (Down syndrome). ",
      "A new screening test called the cell-free fetal DNA test can also now be done at 10 weeks of pregnancy. The cell-free DNA test is a screening test, not a diagnostic test, meaning it provides risks for certain conditions but does not make a definite diagnosis. The test determines the chance that the fetus has Down syndrome, Edward syndrome, or Patau syndrome.",
      "The above tests are not routine tests; they are usually done as a result of certain indications. It is important to listen to your physician as no two pregnancies or women are the same.",
    ],
  ),
  PregnancyWeekDetails(
    week: 11,
    weekDetails:
        "Congratulations dear MUMHEALTH mom, at the start of the 11th week, "
        "your baby is now officially called a fetus as the most crucial development phases are concluding. "
        "The fetus now must concentrate on growing longer and larger during the next 29 weeks. "
        "Growth is fast now and the fetus will gain about one inch in length during the 11th week alone.",
    bodyChanges:
        "Eating should hopefully be less of a task now as nausea and vomiting should have subsided or should be subsiding. "
        "Your uterus is increasing in size and has grown to the size of a grapefruit and can be felt easily by touch. "
        "Weight gain should have started steadily increasing by now. "
        "You might still be feeling bloated and gassy. Do not worry, these are all normal during pregnancy. "
        "You also have access to videos on how to deal with indigestion in pregnancy as well as nausea and vomiting in pregnancy on the MUMHEALTH PARENTING YOUTUBE CHANNEL. "
        "Remember we at MUMHEALTH are here for you, you are doing great dearest.",
    tips: [
      "Remember to continue to eat healthily and to take your prenatal vitamins.",
      "You should still continue to avoid smoking and alcohol consumption.",
      "If you are still battling with nausea, hang in there and continue to try things which give you comfort.",
    ],
  ),
  PregnancyWeekDetails(
    week: 12,
    weekDetails: "This is a new week for the fetus. "
        "The fetus is growing exponentially. "
        "Average length of fetus now is 54 mm and average weight of fetus is 11 gm. "
        "The formed organs are starting to practice the functions they will perform outside of the womb. "
        "The intestines, for instance, start practicing movement that will aid digestion. "
        "The kidneys also start to produce urine. The genitals have started to form but are not visible yet.",
    bodyChanges: "The uterus moves upward during this week of pregnancy. "
        "This is exciting right; your cute baby bump is in the making. "
        "The movement of the uterus relieves some of the pressure on the bladder (the bladder is where your urine is stored) that has caused you to pee often since you got pregnant. "
        "Your strength level might be rising now, but headaches and occasional dizziness are common as your body continues to increase blood volume to meet fetal needs. "
        "Your appetite levels might also be rising as nausea and vomiting hopefully would have subsided. "
        "Your breasts might still be tender and getting larger. Your sense of smell might also be stronger",
    tips: [
      "We at MUMHEALTH are super excited you have started to feel better, and if you have not, hang in there; we are here with you",
      "Continue to take your prenatal vitamins and to attend your clinic appointments where investigations like packed cell volume (PCV) would be done to check your blood volume.",
      "Continue to exercise and eat right",
      "Remember to always try to keep your mood up and positive, pregnancy is too long a period to be miserable",
      "We at MUMHEALTH want it to be the most rewarding and interesting journey for you.",
    ],
  ),
  PregnancyWeekDetails(
    week: 13,
    weekDetails:
        "This is a period of relief as it marks the end of the first trimester, we here at MUMHEALTH say a big congratulation to you. "
        "A lot of women wait till around this time to share the news with family and friends. "
        "The fetus is beginning to look more like a baby. Yippee!! The eyes are moving closer together and the ears have shifted to their normal location. "
        "The intestines are still practicing their movement and the liver and pancreas have started functioning.",
    bodyChanges: "Your cute baby bump is still in the making. "
        "The uterus is getting bigger and ligaments in the abdomen may begin to stretch causing a bit of pain. "
        "Despite your energy levels rising, fatigue might still pop in from time to time.",
    tips: [
      "When you're tired, sleep, and try to find a few minutes every day to put your feet up and relax.",
      "Continue to eat healthy meals and to exercise right’.",
      "If you are still battling with nausea, hang in there and continually refer to tips shared here by MUMHEALTH",
      "Find time to treat yourself to a good meal, massage or spa session as we at MUMHEALTH join you in celebration of the end of the first trimester.",
    ],
  ),
  PregnancyWeekDetails(
    week: 14,
    weekDetails:
        "The fetus is still growing and this week the fetus can measure up to 3 ½ inches in length. "
        "Hands and feet are moving now too, though most of the movements are reflex. "
        "The formed organs are still practicing and improving in their functioning. "
        "All of the vitamins, nutrients, and calories your baby needs are coming from the placenta.",
    bodyChanges:
        "Constipation might begin this 14th week if it has not already started. "
        "The same pregnancy hormones that relax abdominal muscles for uterine growth also relax the muscles of the bowel. "
        "Blood vessels under the skin may begin to fill up with extra blood and start showing through the skin. "
        "This might manifest in areas like the breasts and the limbs. "
        "Your energy levels are still on the rise but remember to get some rest as fatigue can still set in. "
        "Your body is doing a lot of work.Your cute baby bump is still in the making. "
        "You might realize your clothes are getting tighter and your pants do not zip. "
        "It is time to start embracing your weight gain and to maybe start shopping.",
    tips: [
      "Drinking plenty of water and eating foods high in fiber can make you feel less constipated",
      "If your prenatal vitamins have a lot of iron, you can slow down on iron as iron can worsen constipation.",
      "Continue to exercise and take your prenatal vitamins.",
      "Remember to wear loose and comfortable clothing.",
      "Remember to find time to rest and relax, ask for help whenever you need to especially if you have other children you are looking after.",
    ],
  ),
  PregnancyWeekDetails(
    week: 15,
    weekDetails:
        "The uterus is getting larger and your baby’s genitals are easier to identify. "
        "The fetus is bigger now. The fetus now measures between 4 and 4½ inches and weighs up to 3 ½ ounces. "
        "The formed organs are still practicing functioning. "
        "In utero, the fetus may be sucking the thumb or fingers. "
        "You can even appreciate this during your routine ultrasound visits. "
        "The sucking reflex is one of the most important instincts a baby has as it helps babies cannot breastfeed or bottle-feed effectively. "
        "Fine and silky hair might also start to cover the baby’s skin. This fine hair is called lanugo.",
    bodyChanges:
        "The uterus continues to grow bigger and your baby bump might now be visible to others. "
        "This may cause ligaments in the abdomen to stretch causing a bit of pain. "
        "At your next appointment, the doctor may pull out a tape measure, "
        "ask you to lie down, and begin to measure fundal height about the 15th week. "
        "Fundal height is the distance between the top of the uterus and pubic bone. "
        "Typically, the fundal height will measure (in centimeters) the same as the week of pregnancy — the 15th week would equal 15 centimeters. "
        "This measurement is to ensure your baby is growing and developing at the rate he or she should. "
        "Weight gain should also have started steadily increasing. "
        "Your fetus has started wiggling or moving his or her body parts and you will start feeling flutters of movement very soon. "
        "Feeling movement is exciting right! you can share this experience with us at MUMHEALTH as we are also excited for you.",
    tips: [
      "Ultrasound offers an image of the genital area and so you should decide whether or not you want to know your baby’s sex yet.",
      "You should begin shopping, so you are not overwhelmed later in pregnancy.",
      "You should continue journaling and sharing your experience with us here at MUMHEALTH",
      "Do not stop eating well, taking your prenatal vitamins and exercising right.",
    ],
  ),
  PregnancyWeekDetails(
    week: 16,
    weekDetails:
        "The fetus is still growing and your uterus is getting larger. "
        "For a single fetus, the length is about 5 inches and the weight is 5 ounces. "
        "Twins start to develop a bit more slowly at this stage and will only measure about 4 inches and 4 ounces each. "
        "By the start of this week, you may start feeling movements, though most women will not feel distinct movements until after 20 weeks. "
        "Kindly share this with us and other moms on any of our MUMHEALTH platforms. "
        "We at MUMHEALTH want to know how you feel about your baby’s first movement. "
        "These initial movements may only feel like flutters or tiny belly waves but they are the fetus moving around. "
        "The fetus has long since started moving but these movements were not felt because the bones were not hardened. "
        "Fetal bones are hardening now so movements that have been occurring for weeks can now be felt. "
        "The legs are longer than the arms at this point so most movements are kicks, not punches. "
        "Fingernails and toenails continue to grow and all the formed organs continue to practice their functioning.",
    bodyChanges: "Pregnancy hormones like estrogen are on the increase. "
        "Estrogen causes swelling of the nasal passages leading to nasal congestion and in some women nosebleeds. "
        "It is very possible to have nasal congestion from the beginning till the end of pregnancy. "
        "Don’t worry too much, it is very temporal and is a small sacrifice for a big miracle. "
        "Your blood volume is still on the increase and the heart will work harder now to pump the extra blood through the body. "
        "The uterus is getting larger and the ligaments will continue to stretch, which may continue to cause some pain in the abdominal area. "
        "The uterus will be about midway between your pubis and the belly button. "
        "Your baby bump might not be showing yet as it's different from one woman and one pregnancy to the other but we at MUMHEALTH say well done to you and your powerful body is doing great."
        "This week your doctor might schedule an amniocentesis if one is necessary. "
        "This is a procedure that requires drawing a bit of amniotic fluid from the fetal sac to test for chromosome abnormalities. "
        "You should also be aware of the risks and benefits associated with the test. "
        "Women pregnant with multiples will tend to experience swelling and weight gain earlier than women more rapidly.",
    tips: [
      "You may begin to worry about stretch mark as your belly grows, remember to keep your skin moisturized. There is little you can do to prevent this but be rest assured it's all worth it",
      "Continue to eat well, take your prenatal vitamins and to exercise right.",
      "You should continue journaling and sharing this remarkable experience with us at MUMHEALTH",
    ],
  ),
  PregnancyWeekDetails(
    week: 17,
    weekDetails:
        "Fetal growth in a mother’s body is a truly a beautiful thing. "
        "During the 17th week of pregnancy, your baby is continuing to grow exponentially. "
        "S/he may measure as long as 6 inches and weigh up to 7 ounces. "
        "Most formed organs are now practicing functioning. "
        "All reflexes are in place so your little one can now suck, swallow and blink. "
        "All these changes happening in our bodies only show how strong MUMHEALTH moms are, so kindly hang in there. "
        "Fat is being stored under the skin as your baby grows. "
        "The blood volume is still on the increase as the heart is pumping vigorously. "
        "This might make you occasionally breathless, dizzy and have visible veins.",
    bodyChanges:
        "Your uterus is getting larger and the uterus now stretches below the belly button by about 2 inches. "
        "You have probably gained between five and ten pounds at this point, which is common and normal. "
        "Remember you are beautiful and doing a great job. "
        "You probably will still be experiencing some episodes of fatigue. "
        "Fetal movements can still be felt as flutters. "
        "After a while simple placement of the hand on your belly will cause the most memorable moment in life — feeling your baby move! "
        "We at MUMHEALTH cannot wait to share this movement with you.",
    tips: [
      "Continue to eat a healthy pregnancy diet and to take your prenatal vitamins",
      "Many of your clothes might not fit anymore, remember to pamper yourself with a bit of shopping",
      "Take time out every day to put your feet up and relax.",
    ],
  ),
  PregnancyWeekDetails(
    week: 18,
    weekDetails:
        "All the changes in the womb are starting to show. Your cute baby bump is becoming visible. "
        "Your baby now looks like a human and can weigh up to 8 ounces. "
        "All formed organs are still practicing functioning. "
        "Bowel and intestine development continues and the first bowel movement, meconium, is developing inside. "
        "Baby will not pass the first movement until after birth, in most cases. "
        "The boy fetus is developing the prostate gland during week 18 of pregnancy.",
    bodyChanges:
        "Blood volume is still on the increase and dizziness and light-headedness might be a challenge. You are adding weight as your body is growing a miracle",
    tips: [
      "An ultrasound might be scheduled this week",
      "It is commonly done between the 18th and 20th week. "
          "Your baby's gender may be determined during the ultrasound as well as measurements of the arms, legs, head, and abdomen. "
          "It is also time for an anomaly scan used to check all the baby’s organs and parts to be sure your baby is very healthy.",
      "An anomaly scan is important, so dear MUMHEALTH mom keep it in mind.",
      "Continue to eat a healthy pregnancy diet.",
      "Dizziness might pose a challenge now, remember to take it a step at a time, catch your breath anytime needed.",
      "Your packed cell volume should also be monitored if you are having dizzy spells to be sure your blood volume is adequate.",
    ],
  ),
  PregnancyWeekDetails(
    week: 19,
    weekDetails: "During week 19, vernix caseosa starts to form. "
        "Vernix caseosa is a thin, white covering that protects the skin from the fluid environment of the amniotic sac. "
        "This is different from lanugo that has been growing on your baby’s skin since the 15th to 16th week. "
        "By week 19, your baby can measure between 6 and 7 inches long and weigh up to 11 ounces. "
        "Week 19 also marks more than or mid-way for women expecting multiples as most multiple pregnancies do not exceed 38 weeks.",
    bodyChanges:
        "Your uterus continues to increase in size and so your abdomen is continuing to expand. "
        "This expansion might make the skin may feel a bit itchy from time to time. "
        "Stretch marks may also begin to develop at this point. "
        "Stretch marks cannot be prevented, but remember to keep your skin moisturized to prevent dryness and itchiness.",
    tips: [
      "Remember to keep off toxins and to minimize caffeine intake.",
      "Drinking water is essential. You should drink at least 64 ounces of fresh, clean water every day in addition to other drinks.",
      "Continue to eat right and to keep attending prenatal appointments where routine investigations and blood pressure monitoring are paramount.",
    ],
  ),
  PregnancyWeekDetails(
    week: 20,
    weekDetails:
        "The 20th week marks the halfway point for a normal pregnancy. "
        "This week is the halfway point and we at MUMHEALTH say well done dear mom. "
        "Fetal Growth continues, the fetus adds length and weight. "
        "By the 20th week, the baby can weigh more than one pound and measure 8 inches or longer. "
        "Fetal growth varies from woman to woman and from baby to baby. "
        "It is determined by many factors, just be rest assured that all organs grow at the same rate.",
    bodyChanges:
        "The uterus is larger and has finally reached the belly button or navel. "
        "As the fetus grows, an “inside” belly button may become an “outie.” "
        "Our cute baby bump is now quite visibleThe protruded belly button can cause pain or tenderness for some women. "
        "Pubic hair becomes darker.A dark vertical dark line running from the navel to the pubic area is now visible. "
        "This line is known as linea nigra. Baby movements are easy to feel now as the space inside the womb becomes smaller",
    tips: [
      "This is the week to have your anatomic or anomaly ultrasound done. It is a long ultrasound to assess the baby properly.",
      "If you have not shopped for clothes, it is about time.",
      "You should also start shopping for your baby to avoid getting overwhelmed. Remember that we at MUMHEALTH got you covered, no matter the product.",
      "You should continue a pregnancy health diet and please do not stop your prenatal vitamins.",
      "Childbirth classes may also start as early as the 20th week. You should interact with other mothers and start to prepare for your bundle of joy.",
    ],
  ),
  PregnancyWeekDetails(
    week: 21,
    weekDetails:
        "The fetus continues to grow, but more attention is paid to the development of internal organs than weight gain. "
        "Male fetuses begin to drop the testes during week 21. The testes will move from inside the body into the scrotal sac.",
    bodyChanges:
        "Pregnancy weight gain may be about 10 to 15 pounds by this point in gestation and will continue to increase gradually. "
        "Your body and baby need extra calories so eating a well-balanced diet is essential.",
    tips: [
      "Ensure to have an anatomic ultrasound done if you are yet to",
      "Food aversions and sickness should have subsided by now, so ensure you eat well and take your prenatal vitamins",
      "Continue journaling and ensure you enjoy this period as much as possible.",
    ],
  ),
  PregnancyWeekDetails(
    week: 22,
    weekDetails:
        "The fetus continues to grow and we at MUMHEALTH hope you are feeling great. "
        "Fetal organs continue to grow; brain growth continues daily. "
        "The sense of smell, taste, sight, hearing, and touch are all developing as well. "
        "Your baby can now suck, swallow and hear. The fetus can also hear sounds of breathing, and digestion.",
    bodyChanges: "The uterus gets larger and weight gain is consistent. "
        "Larger breasts and body changes might leave you feeling good and sexy. "
        "Remember you are beautiful!. Your baby bump is now visible and you can feel your baby move more distinctively now.",
    tips: [
      "Try to remain positive, eat well and flaunt your cute baby bumo",
      "The additional weight on the front of the body may start to affect your lower back.so remember to wear comfortable clothes and shoes.",
      "Remember to attend prenatal appointments where routine investigations like blood pressure check and urinalysis can be carried.",
      "Continue to exercise right and take your prenatal vitamins.",
      "Continue to journal, attend child birthing classes, start baby shopping and think about baby names. Exciting right!!",
    ],
  ),
  PregnancyWeekDetails(
    week: 23,
    weekDetails:
        "The fetus continues to grow and the fetal bones continue to harden. "
        "The fetal organs continue to practice functioning. The 23rd week marks a huge milestone for the fetus. "
        "Development has reached the point that the fetus could survive if an early birth was required. "
        "The risk factors for impaired health are high, but survival is a possibility if proper facilities and personnel are available. "
        "Baby will continue to sleep and wake, Multiples will also be sleeping and waking, but not necessarily on the same pattern. ",
    bodyChanges:
        "The uterus is getting larger and the uterus has moved to 1 ½ inches above the navel. "
        "Your organs may start moving upwards a bit so has to create space for the baby and so. "
        "Indigestion and heartburn are common symptoms of pregnancy as the ever-growing fetus have less abdominal space. "
        "The changing hormones cause mood swings throughout pregnancy and even for several months after birth. "
        "Pregnant women need to learn to accept crying, yelling, pouting, and smiling as being part of this journey",
    tips: [
      "Rest as much as needed",
      "If you feel any unusual symptoms like pressure on the pelvis or patterned contractions, kindly seek medical help",
      "Continue to attend Doctor’s appointments which will typically involve recording weight, blood pressure, and urine glucose level. ",
      "Continue to take prenatal vitamins and eat a healthy diet.",
    ],
  ),
  PregnancyWeekDetails(
    week: 24,
    weekDetails:
        "This is a huge milestone for the fetus  because at 24 weeks, fetus is usually considered 'viable' by most doctors. "
        "This simply means the fetus has a high chance of surviving if born now although the baby will require months of proper neonatal intensive care. "
        "Your baby continues to gain weight During this week organs are still practicing functioning",
    bodyChanges:
        "The uterus is larger now and has reached two inches above the navel. "
        "Your beautiful bump is now sticking out far enough for the world to notice. "
        "Your blood volume is on the rise now so watch out for dizzy spells. "
        "You might also be having symptoms of dehydration, so ensure you take enough fluids.",
    tips: [
      "Continue to rest as much as you can",
      "Remember to eat a healthy pregnancy diet and take your prenatal vitamins",
      "Drink up! Drink up ! to avoid dehydration",
      "If you are having symptoms of low back pain and abdominal cramping, kindly visit your healthcare provider. These are not Braxton hicks contractions.",
    ],
  ),
  PregnancyWeekDetails(
    week: 25,
    weekDetails:
        "The fetus is growing bigger and stronger. The spine continues to strengthen in the 25th week of gestation. "
        "When complete, the spine will be made up of 1000 ligaments, 150 joints, and 33 rings. "
        "Formed organs are practicing functioning. Some organs like the lungs also continue to grow and expand. "
        "The nostrils have been closed to this point, but now they start to open just a bit.",
    bodyChanges:
        "Your uterus is larger and your abdomen is about the size of a soccer ball. "
        "Your baby bump is now very visible to the outside world. "
        "You might still be experiencing heartburn and indigestion as a result of your belly expansion. "
        "Your growing belly will also be putting pressure on your lower back muscles and joint and so you might be experiencing body achesYou will still be experiencing Braxton hicks contractions, but remember if contractions get painful and regular, kindly seek medical attention.",
    tips: [
      "Keep attending prenatal classes and prenatal appointments. Your healthcare provider might consider doing a glucose challenge test if you are at risk of gestational diabetes",
      "Continue baby shopping and planning your maternity leave.",
      "Continue to journal, create a delivery plan and discuss baby names.",
      "Dear MUMHEALTH mom , please do not forget your prenatal vitamins.",
      "If indigestion is still a problem, eat smaller meals and take plenty of fluid.",
      "Get as much rest as possible.",
      "As your belly expands, aches can occur, make sure to do soothing exercises and to get as much rest as possible.",
    ],
  ),
  PregnancyWeekDetails(
    week: 26,
    weekDetails:
        "The fetus continues to grow rapidly, weighing about two pounds and measuring nine inches or more by the 26th week. "
        "The air sacs of the lungs are starting to develop and the air sacs are beginning to get lined with surfactant which is necessary for normal lung functioning. "
        "The brain is also working hard as the senses of hearing and vision are developing this week.",
    bodyChanges:
        "You may also start to experience Braxton hicks contractions which are contractions that are uncomfortable but not painful. "
        "These contractions do not get stronger with time and they taper off and disappear. "
        "These contractions start and are most common and stronger in later pregnancy. "
        "For pregnant women carrying multiples, these contractions may be a bit more worrisome, as early labor is common with multiples, so if the tightening of the uterus is accompanied by cramping or spotting, and especially if it's more frequent than 2-3 times an hour, it is important to contact the doctor. "
        "Braxton hicks contractions are practice contractions and not supposed to cause signs of labor. "
        "By the time the 26th-week starts, the body needs about 300 extra calories to maintain healthy function and so you would be eating a bit more and slightly gaining weight. "
        "Body swelling may commence at this stage especially in the legs, ankles and feet. "
        "Fluid retention is typical during the latter stages of the second trimester and in third trimester",
    tips: [
      "Watch any contraction closely. ",
      "Remember to put your feet up and to sit down if your lower body is swollen. ",
      "Attend your prenatal appointments so that urinalysis and blood pressure checks are done. ",
      "Report any unusual body swelling to your doctor. ",
      "Get as much rest as needed. ",
    ],
  ),
  PregnancyWeekDetails(
    week: 27,
    weekDetails:
        "Week 27 marks another huge milestone in pregnancy. This is the last week of the second trimester! "
        "And we here at MUMHEALTH are excited for you. "
        "Your baby is growing fast measuring from the top of the head to the tip of the toe, your baby could be 1 1/3 feet long or more. "
        "The brain is and the lungs are quickly developing. "
        "Eyelids open and part of the eyes develop this week as well.",
    bodyChanges:
        "The uterus keeps getting larger and measures about the height of the rib cage. "
        "The expanding uterus can cause shortness of breath as well as worsen indigestion and heartburn this is because the lungs have less room to expand as the uterus grows upwards. "
        "Do not worry when you feel short of breath as the fetus receives more than enough oxygen with each breath even when Mom feels like she is not taking in enough oxygen.",
    tips: [
      "Start to plan your maternity leave",
      "Continue to journal",
      "Remember to wear comfortable clothing",
      "Remember to pause once needed and catch your breath",
    ],
  ),
  PregnancyWeekDetails(
    week: 28,
    weekDetails: "We at MUMHEALTH welcome you to your third trimester. "
        "You dear MUMHEALTH mom have done a great job. "
        "The 28th week of gestation is the start of the 7th month and the third trimester. "
        "Your baby keeps growing at an exponential rate and has a high chance of survival if born during this week. "
        "The lungs are still developing but can breathe air now . "
        "It still needs further development to fully function properly outside the womb. "
        "Body fat is increasing and the fetus is gaining weight. "
        "Women pregnant with multiples will have smaller babies at birth but the babies still develop at a normal rate.",
    bodyChanges:
        "The third trimester changes are less pleasant than the second trimester. "
        "Body cramps, fluid retention and fatigue, are all common from this week until the end of pregnancy. "
        "The symptoms are more in Multiple pregnancies and may leave the female feeling heavier and more breathless pregnant with multiples.",
    tips: [
      "If you are RH negative, you should get a RhoGam shot, please discuss this with your doctor.",
      "You should keep attending your prenatal appointments which should include urine screenings to look for signs of preeclampsia and gestational diabetes.",
      "Continue to get as much rest especially because of the fatigue and body aches.",
      "Ensure you remain hydrated.",
      "Start to prepare the baby nursery and make travel plans if you have any.",
    ],
  ),
  PregnancyWeekDetails(
    week: 29,
    weekDetails: "The fetus is now starting to look like a baby. "
        "The bones and organs especially the lungs and brain are still developing. "
        "The head and body are proportionate in size at this time. "
        "Weight gain is rapid as fat stores continue to build under the skin. "
        "Eyes are completely developed and are now sensitive to light. "
        "Your baby can now see, hear and smell",
    bodyChanges: "You may begin to feel like you have been pregnant forever. "
        "We at MUMHEALTH encourage you to take a day at a time and try to enjoy this remarkable journey. "
        "Fatigue, occasional breathlessness and body aches will persist. "
        "New symptoms can also crop up such as hemorrhoids which is due to the weight of the fetus pressing on the rectum. "
        "This symptom can stick around long after the baby is born, so eat lots of fiber and drink plenty of water to fend off constipation.",
    tips: [
      "You should have a birhplan now. Although labor and delivery is not entirely predictable, "
          "a birthplan is a checklist of sorts to plan out how you want active labor to proceed and what to do if situations arise "
          "that require the birthing plan to be changed a bit.",
      "Continue to take your prenatal vitamin",
      "Continue to drink lots of food and to eat a diet rich in fiber.",
    ],
  ),
  PregnancyWeekDetails(
    week: 30,
    weekDetails:
        "Your baby weighs three pounds or more and continues to gain weight daily. "
        "Skeleton is formed, bones have developed and bone marrow has started producing red blood cells. "
        "You can now talk to your baby; you can even sing to your baby as the hearing has developed to the point that the fetus recognizes certain voices. "
        "The white covering over the baby also begins to fade away in preparation of birth",
    bodyChanges:
        "Your uterus continues to increase and your baby continues to grow. "
        "You may be experiencing body aches, especially low back ache as a result of the added weight. "
        "Heartburn may be more pronounced now. "
        "Fatigue is still common. ",
    tips: [
      "Remember every pregnancy is different and every baby is unique, so no matter how you are feeling, hang in there.",
      "Try to exercise right and do relaxation exercises like swimming and yoga to help relieve body aches.",
      "You can try to sit upright or propped up to avoid or reduce the effect of heartburn.",
      "Always sleep on your side, preferably on your left side and stand up slowly from such position everytime you need to.",
    ],
  ),
  PregnancyWeekDetails(
    week: 31,
    weekDetails:
        "Growth is going to slow down a bit. All necessary body functions are working perfectly, "
        "'and time spent in the uterus at this point is all about your baby getting bigger and his or her lungs developing further.",
    bodyChanges:
        "People would begin to ask when you are due now as your abdomen is getting larger. "
        "The growth will continue until your baby is born. "
        "The uterus now extends more than four inches above the belly button. "
        "Your intestines and Internal organs are moving about to make room for the growing fetus. "
        "This can cause aches, indigestion and heartburn. "
        "The problem of frequent urination you thought had gone can now be a problem as more and more pressure is placed on the bladder. "
        "You will be feeling stronger but less fetal movements as the fetus begins to have less room.",
    tips: [
      "If you are pregnant with multiples, your clinic appointments should be more frequent now as labor and delivery is fast approaching.",
      "Ensure you are taking your prenatal vitamin and adequate amounts of calcium.",
      "Ensure you are getting enough rest as well and getting help when it is needed.",
      "Try not to be put under pressure to do anything including driving and household chores.",
      "If you are concerned about fetal movements, contact your healthcare provider immediately.",
      "Hang in there as we at MUMHEALTH are rooting for you.",
    ],
  ),
  PregnancyWeekDetails(
    week: 32,
    weekDetails:
        "Your baby is getting bigger although weight gain slows down a bit. "
        "All five senses are in full working order. "
        "Your baby can see, taste, smell, feel, and hear. "
        "The lungs are still developing and your baby’s formed organs continue to practice their functioning.",
    bodyChanges: "Your body is still undergoing a lot of changes. "
        "Your uterus is still expanding and pushing on your internal organs. "
        "Heartburn, indigestion, fatigue, constipation and breathlessness are still challenges, but take heart, "
        "the end is near and we at MUMHEALTH cannot wait to celebrate with you. "
        "Braxton hicks contractions are getting stronger and if you are carrying multiples, labor is near",
    tips: [
      "If Braxton hicks contractions change duration and become more frequent, you should contact your healthcare provider.",
      "Continue to drink a lot of water as this will help with constipation and dehydration can also place you at risk of preterm labour.",
      "Your nursery and shopping should be nearing completion as the waiting game has begun.",
      "Get adequate rest and put your feet up once you get the chance.",
    ],
  ),
  PregnancyWeekDetails(
    week: 33,
    weekDetails:
        "During this week 33 amniotic fluid levels peak and will remain the same until the baby is born. "
        "Brain development is rapid and the size of the head is growing to hold new brain tissue. "
        "Brain development accounts for the growth of about 3/8 of an inch each week. "
        "Fetal skin begins to change to pink in the latter weeks of pregnancy. "
        "The color change is attributed to fat distributions under the skin. More fat means pinker skin",
    bodyChanges:
        "Weight gain is increasing. Pregnancy weight gain is essential as the uterus, "
        "placenta and amniotic fluid need to grow and your baby’s development depends on you. "
        "Your body might be swelling. Edema is normal in pregnancy, don’t worry too much, it is only a matter of time. "
        "Fatigue might be something now as you are approaching the end. "
        "We at MUMHEALTH understand what you are going through and wish you the very best.",
    tips: [
      "Rest again is important this week",
      "It is important to continue attending prenatal appointments where routine investigations are carried out.",
      "Blood pressure screenings are very important during the last few weeks of pregnancy as an increase in blood pressure is a common sign of preeclampsia. Women must also watch out for changes in vision, sharp increases in weight, and protein in the urine.",
      "Urine tests, weight measurements, counselling about labour and delivery are also important so ensure you do not skip prenatal appointments",
      "Ensure you are doing minimal exercises, such as walking if you can. This is important especially if you are doing a desk job so as to reduce any swelling and decrease the chance for blood clots in the legs",
      "Continue to drink a lot of fluid",
      "The waiting game is still on and we at MUMHEALTH are counting down with you. ",
    ],
  ),
  PregnancyWeekDetails(
    week: 34,
    weekDetails: "Most organs are fully developed now. "
        "Brain development is still ongoing and is rapid and thus the size of the head is growing to hold new brain tissue. "
        "Brain development accounts for the growth of about 3/8 of an inch each week. "
        "The lungs are also still developing as your baby is getting ready to breathe outside.",
    bodyChanges: "You should still be gaining weight. "
        "You might be having difficulty seeing your feet and wearing your shoes. "
        "Fatigue is very common now as well as body swelling. "
        "You might still be battling with indigestion and heartburn might be getting worse just try to hang in there. ",
    tips: [
      "Eating smaller meals throughout the day is important, so make sure you keep small snacks in your bag. This will help keep your energy levels up as well as prevent indigestion.",
      "Prop yourself up when lying down to relieve heartburn.",
      "Remember to elevate your feet when you can and to get adequate rest.",
      "If body swelling is unusual or edema is pitting, contact your healthcare provider.",
      "Drink a lot of fluid to avoid dehydration.",
      "Start making plans for your maternity leave and complete the baby nursery.",
    ],
  ),
  PregnancyWeekDetails(
    week: 35,
    weekDetails:
        "The baby is still gaining weight and weighs more than 5 ½ pounds by the 35th week. "
        "The baby has occupied most of the space in the uterus, so when your baby moves, you will feel it! "
        "It is common to visibly see movement through the skin of the abdomen from time to time including kicking, punching, and rolling. "
        "This is a very exciting time as you can share this moment with your partner and other family members. "
        "In boys, testes are completely descended from the abdomen into external sacs",
    bodyChanges: "You are feeling really pregnant now. "
        "Fatigue is a major problem as all you want to do is rest. "
        "Some women are still adding weight while some will lose some weight.",
    tips: [
      "You are almost there and we at MUMHEALTH are excited for you",
      "Nothing is more important right now than eating right, drinking water, and resting. There should be no jumping, or tedious exercises.",
      "If your doctor puts you on bed rest, kindly comply.",
      "If you are still active, light exercises like yoga are pregnancy, while others may opt for bed rest.",
      "Your weekly prenatal appointments are now starting. During visits, the doctor may check the cervix to see if there is any change. Vaginal exams are also used to determine fetal position.",
      "If you are behind in making preparations for the big day, now is the time ask for help from friends and family.",
      "You should have started packing your hospital bag and making final preparations for your bundle of joy.",
      "Some women even decide to throw a party! You can take time out to sit and enjoy with your loved ones.",
    ],
  ),
  PregnancyWeekDetails(
    week: 36,
    weekDetails:
        "It is about four weeks to go and we at MUMHEALTH are still counting down with you. "
        "During the next few weeks, the weight of your baby will shift downward relieving some of the breathlessness associated with the uterus growing towards the ribcage. "
        "The downward movement of the uterus will then put pressure on the bladder and cause frequent urination. "
        "The fetus will continue to collect fat and continue to get ready for the outside world. "
        "Multiple fetuses weigh about 5 pounds at this point. "
        "The average twin weighs five pounds five ounces at birth and is born between weeks 36 and 37. "
        "It will not be long now if you are expecting multiples",
    bodyChanges: "The body is making some rapid changes at this point. "
        "Baby weight may be shifting downward. "
        "Braxton hicks contractions are coming more frequently. "
        "Increased blood pressure and fluid retention are also common in the last month of pregnancy but will be watched closely by your doctor. ",
    tips: [
      "You should start rounding up on baby shopping and arranging the nursery",
      "Your hospital bag should be packed",
      "Your prenatal visit now will involve discussing true labor and false. "
          "False labor symptoms are typically the same as active labor, but contractions are not patterned and they do not work to change the cervix. "
          "Talking to the doctor every week means more chances to ask questions. "
          "Continue to write them down because you may lose track of thought easily during the last weeks of gestation. "
          "There are no dumb questions and asking is the only way you will know the answer.",
      "Understanding the signs of labor is important at this stage of pregnancy. "
          "Common signs of labor include abdominal weight shift, bloody show, breaking of the bag of waters, "
          "and change in the cervix (effacement and dilation).",
    ],
  ),
  PregnancyWeekDetails(
    week: 37,
    weekDetails:
        "We at MUMHEALTH congratulate you on the journey so far as the 37th-38th week of pregnancy is considered early term. "
        "Pregnant women who make it to the 37th week no longer have to worry about having the baby early. "
        "The fetus weighs around 6½ pounds and practices breathing during every waking moment.",
    bodyChanges:
        "Vaginal discharge is thicker now and more abundant. This discharge helps to lubricate the birthing canal for when the time comes. "
        "During the last weeks before labor, the body may start to get ready for birth by cleansing the intestinal system. "
        "Pushing out a baby is quite similar to pushing out a bowel movement. "
        "You might start having bouts of diarrhea in preparation for labor",
    tips: [
      "Keep the hospital bag in a visible place",
      "You should have completed hospital registration, and planning for the best possible route to the hospital",
      "Make sure you attend your prenatal appointment so fetal positioning can be checked.",
      "Start to look into your breastfeeding options and plan to commence your maternity leave if you haven’t already",
      "Continue to take your prenatal vitamins and get as much rest",
    ],
  ),
  PregnancyWeekDetails(
    week: 38,
    weekDetails:
        "You are doing great dear MUMHEALTH mom. The baby is still gaining weight. "
        "The baby is gaining about one to two ounces a day. "
        "Your ultrasound done in the 38th week will give an estimate of the weight of the fetus and the doctor may choose to induce labor to protect your health and your baby's health if the baby weighs more than normal. "
        "Meconium is also developing in the bowel of the fetus. "
        "When the bag of waters breaks, it should be clear and not contain meconium. "
        "If meconium appears in the amniotic fluid, you will be monitored more closely and labor will be sped along as quickly as possible. "
        "Multiples are normally born in the 38th week if the pregnancy has not ended before now.",
    bodyChanges:
        "There is really nothing new happening in your body now asides your body getting ready for labor. "
        "Your hormone levels are rising and the cervix is ripening and the baby is shifting lower and lower in the uterus",
    tips: [
      "Your prenatal appointments are still weekly.",
      "During your doctor’s appointment, you should be told about contractions and labor. For true labor, aside from the fact that contractions are stronger and last longer. A pattern is quickly revealed and each contraction comes closer and closer to the last until they are right on top of each other. ",
      "You may feel nervous about every ache and pain, but learning about pregnancy and its effect on the body can help ease this tension. ",
      "You should ask your doctor/healthcare provider as many questions as possible.",
      "Continue to take your prenatal vitamins and get as much rest as possible.",
      "The waiting game is almost over. We at MUMHEALTH are still rooting for you.",
    ],
  ),
  PregnancyWeekDetails(
    week: 39,
    weekDetails:
        "This is a major landmark week in pregnancy too and we at MUMHEALTH cannot wait to congratulate you. "
        "If you are pregnant with multiples, and the babies were not born last week, they will probably be here this week. "
        "Many doctors prefer to deliver twins before week 40. If you are  scheduled for a caesarean section, either because you previously had a cesarean section or for other reasons, chances are that it will be done in the 39th week or later. "
        "If you are expecting a single baby, there is no time like the present to sleep. "
        "The fetus is finished growing and the lungs are the only organ still developing.",
    bodyChanges: "You see in the final days now. "
        "You probably are not feeling any pregnancy glow as you now have a pregnancy mask. "
        "The dropping in the uterine weight can leave you feeling off balance and clumsy. "
        "The uterus drops into the birth canal to help start the labor process. "
        "When pressure is placed on the cervix, signals are passed to the brain that the baby is ready. "
        "This triggers the release of hormones that ripen the cervix. "
        "Fluid is collecting in your arms, legs, ankles and face.",
    tips: [
      "Do not hesitate to ask for help as even walking might seem like a big chore.",
      "Water intake should remain high for the remaining two weeks of pregnancy.",
      "Activity is not really restricted, per se, but high impact aerobics and running are not the best choices in exercise. "
          "However mild exercises like yoga and walking are perfect during week 39.",
      "You should not be travelling at this point, just getting adequate rest.",
      "You should still be attending your prenatal appointments and taking your prenatal vitamins.",
    ],
  ),
];

String formatDate(DateTime date) =>
    DateFormat("MMMM d'${_getDayOfMonthSuffix(date)}', yyyy").format(date);

String _getDayOfMonthSuffix(DateTime date) {
  var dayNum = date.day;
  if (dayNum >= 11 && dayNum <= 13) {
    return 'th';
  }

  switch (dayNum % 10) {
    case 1:
      return 'st';
    case 2:
      return 'nd';
    case 3:
      return 'rd';
    default:
      return 'th';
  }
}
