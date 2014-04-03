package com.google.glass.voice;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.base.Predicate;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

public class SensoryRecognizerFactory extends RecognizerFactory
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final Map<String, StaticRecognizerFiles> nativeAppStaticModels = Maps.newHashMap();
  private MirrorCommandDisambiguationHelper mirrorHelper;
  private NativeCommandDisambiguationHelper nativeCommandHelper;

  static
  {
    nativeAppStaticModels.put("listen to", StaticRecognizerFiles.LISTEN_TO);
    nativeAppStaticModels.put("play music", StaticRecognizerFiles.PLAY_MUSIC);
    nativeAppStaticModels.put("call me a car", StaticRecognizerFiles.CALL_ME_A_CAR);
    nativeAppStaticModels.put("capture a panorama", StaticRecognizerFiles.CAPTURE_A_PANORAMA);
    nativeAppStaticModels.put("check me in", StaticRecognizerFiles.CHECK_ME_IN);
    nativeAppStaticModels.put("create a 3d model", StaticRecognizerFiles.CREATE_A_THREE_D_MODEL);
    nativeAppStaticModels.put("learn a song", StaticRecognizerFiles.LEARN_A_SONG);
    nativeAppStaticModels.put("play a game", StaticRecognizerFiles.PLAY_A_GAME);
    nativeAppStaticModels.put("recognize this song", StaticRecognizerFiles.RECOGNIZE_THIS_SONG);
    nativeAppStaticModels.put("remind me to", StaticRecognizerFiles.REMIND_ME_TO);
    nativeAppStaticModels.put("show a compass", StaticRecognizerFiles.SHOW_A_COMPASS);
    nativeAppStaticModels.put("start a round of golf", StaticRecognizerFiles.START_A_ROUND_OF_GOLF);
    nativeAppStaticModels.put("start a timer", StaticRecognizerFiles.START_A_TIMER);
    nativeAppStaticModels.put("translate this", StaticRecognizerFiles.TRANSLATE_THIS);
    nativeAppStaticModels.put("tune an instrument", StaticRecognizerFiles.TUNE_AN_INSTRUMENT);
    nativeAppStaticModels.put("find a recipe", StaticRecognizerFiles.FIND_A_RECIPE);
    nativeAppStaticModels.put("record a recipe", StaticRecognizerFiles.RECORD_A_RECIPE);
    nativeAppStaticModels.put("start a bike ride", StaticRecognizerFiles.START_A_BIKE_RIDE);
    nativeAppStaticModels.put("start a run", StaticRecognizerFiles.START_A_RUN);
    nativeAppStaticModels.put("start a stopwatch", StaticRecognizerFiles.START_A_STOP_WATCH);
    nativeAppStaticModels.put("start a workout", StaticRecognizerFiles.START_A_WORKOUT);
    nativeAppStaticModels.put("find a place", StaticRecognizerFiles.FIND_A_PLACE);
    nativeAppStaticModels.put("explore nearby", StaticRecognizerFiles.EXPLORE_NEARBY);
  }

  public SensoryRecognizerFactory(MirrorCommandDisambiguationHelper paramMirrorCommandDisambiguationHelper, NativeCommandDisambiguationHelper paramNativeCommandDisambiguationHelper)
  {
    this.mirrorHelper = paramMirrorCommandDisambiguationHelper;
    this.nativeCommandHelper = paramNativeCommandDisambiguationHelper;
  }

  protected static boolean containsNonEmptyString(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      if (!TextUtils.isEmpty(paramArrayOfString[j]))
        return true;
    return false;
  }

  protected static HotwordRecognizer createDynamicRecognizer(Context paramContext, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    return createDynamicRecognizer(paramContext, paramArrayOfString1, paramArrayOfString2, Collections.emptySet());
  }

  protected static HotwordRecognizer createDynamicRecognizer(Context paramContext, String[] paramArrayOfString1, String[] paramArrayOfString2, Collection<TimelineNano.Entity> paramCollection)
  {
    Assert.assertNotNull(paramCollection);
    if (!containsNonEmptyString(paramArrayOfString1))
    {
      logger.w("All custom phrases in dynamic recognizer config empty, returning no op recognizer.", new Object[0]);
      return NO_OP_RECOGNIZER;
    }
    String str = "lts_en_us_9.5.2b.raw";
    if (EntityUtils.hasOnlyFocusEntities(paramCollection))
    {
      str = "lts_en_us_cid_9.3.1.1.raw";
      logger.d("Using CID LTS model.", new Object[0]);
    }
    return new DynamicSensoryRecognizer(paramContext, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw", str, paramArrayOfString1, paramArrayOfString2);
  }

  static HotwordRecognizer createNativeCustomTriggersRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    ArrayList localArrayList1 = Lists.newArrayList(paramVoiceConfig.getCustomPhrases());
    ArrayList localArrayList2 = Lists.newArrayList(paramVoiceConfig.getCustomTags());
    ListIterator localListIterator = localArrayList1.listIterator();
    while (localListIterator.hasNext())
    {
      String str = (String)localListIterator.next();
      if (nativeAppStaticModels.containsKey(str))
      {
        localArrayList2.remove(localListIterator.previousIndex());
        localListIterator.remove();
      }
    }
    if (localArrayList1.isEmpty())
      return NO_OP_RECOGNIZER;
    return createDynamicRecognizer(paramContext, (String[])localArrayList1.toArray(new String[localArrayList1.size()]), (String[])localArrayList2.toArray(new String[localArrayList2.size()]));
  }

  static List<StaticRecognizerFiles> getNativeAppStaticRecogFiles(VoiceConfig paramVoiceConfig)
  {
    LinkedList localLinkedList = Lists.newLinkedList();
    Iterator localIterator = Lists.reverse(Lists.newArrayList(paramVoiceConfig.getCustomPhrases())).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (nativeAppStaticModels.containsKey(str))
        localLinkedList.add(nativeAppStaticModels.get(str));
    }
    return localLinkedList;
  }

  private static HotwordRecognizer newMainMenuRecognizer(Context paramContext)
  {
    MirrorApiHybridHelper localMirrorApiHybridHelper = new MirrorApiHybridHelper();
    ArrayList localArrayList = Lists.newArrayList();
    localArrayList.addAll(localMirrorApiHybridHelper.getNativeHybridRecogFiles(paramContext));
    HotwordRecognizer localHotwordRecognizer1 = NO_OP_RECOGNIZER;
    HotwordRecognizer localHotwordRecognizer2 = localMirrorApiHybridHelper.createLegacyRecognizer(paramContext);
    int i;
    if (Labs.isEnabled(Labs.Feature.NATIVE_APP_VOICE))
    {
      if (NativeAppVoiceConfigHelper.getInstance().getNativeAppsConfig(paramContext) == null)
        break label176;
      i = 1;
      if (i != 0)
      {
        localArrayList.addAll(getNativeAppStaticRecogFiles(NativeAppVoiceConfigHelper.getInstance().getNativeAppsConfig(paramContext)));
        localHotwordRecognizer1 = createNativeCustomTriggersRecognizer(paramContext, NativeAppVoiceConfigHelper.getInstance().getNativeAppsConfig(paramContext));
      }
    }
    if (localArrayList.isEmpty());
    for (Object localObject = StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, StaticRecognizerFiles.MAIN_MENU_LEGACY); ; localObject = StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, localArrayList))
    {
      if (localHotwordRecognizer1 != NO_OP_RECOGNIZER)
        localObject = new HybridHotwordRecognizer(new HotwordRecognizer[] { localObject, localHotwordRecognizer1 });
      if (localHotwordRecognizer2 != NO_OP_RECOGNIZER)
        localObject = new HybridHotwordRecognizer(new HotwordRecognizer[] { localObject, localHotwordRecognizer2 });
      return localObject;
      label176: i = 0;
      break;
      localArrayList.add(0, StaticRecognizerFiles.MAIN_MENU_RTA);
    }
  }

  protected HotwordRecognizer createCustomRecognizer(Context paramContext, VoiceConfig paramVoiceConfig, Collection<TimelineNano.Entity> paramCollection)
  {
    logger.i("Creating custom recognizer: %s", new Object[] { paramVoiceConfig });
    VoiceConfig[] arrayOfVoiceConfig = paramVoiceConfig.getVoiceConfigs();
    String[] arrayOfString1 = paramVoiceConfig.getCustomPhrases();
    String[] arrayOfString2 = paramVoiceConfig.getCustomTags();
    int i = paramVoiceConfig.getDisambiguationCommandType();
    if ((i != -2147483648) || (!TextUtils.isEmpty(paramVoiceConfig.getLiteral())))
    {
      logger.d("Creating disambig recognizer", new Object[0]);
      return createDisambiguationRecognizer(paramContext, i, paramVoiceConfig.getLiteral());
    }
    if (arrayOfVoiceConfig.length == 0)
      return createDynamicRecognizer(paramContext, arrayOfString1, arrayOfString2, paramCollection);
    if (arrayOfVoiceConfig.length > 0)
    {
      ArrayList localArrayList = new ArrayList();
      int j = arrayOfVoiceConfig.length;
      for (int k = 0; k < j; k++)
        localArrayList.add(createRecognizer(paramContext, arrayOfVoiceConfig[k]));
      if (arrayOfString1.length > 0)
        localArrayList.add(createDynamicRecognizer(paramContext, arrayOfString1, arrayOfString2, paramCollection));
      return new HybridHotwordRecognizer((HotwordRecognizer[])localArrayList.toArray(new HotwordRecognizer[0]));
    }
    throw new AssertionError("Illegal voice config description: " + paramVoiceConfig);
  }

  protected HotwordRecognizer createDisambiguationRecognizer(Context paramContext, int paramInt, String paramString)
  {
    ArrayList localArrayList1 = Lists.newArrayList();
    ArrayList localArrayList2 = Lists.newArrayList();
    if (paramInt != -2147483648)
    {
      VoiceConfig localVoiceConfig2 = this.mirrorHelper.getConfig(paramInt);
      if (localVoiceConfig2 == null)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        localFormattingLogger.e("No disambiguation config available for CommandType %s", arrayOfObject);
        return NO_OP_RECOGNIZER;
      }
      localArrayList1.addAll(Arrays.asList(localVoiceConfig2.getCustomPhrases()));
      localArrayList2.addAll(Arrays.asList(localVoiceConfig2.getCustomTags()));
    }
    if (!TextUtils.isEmpty(paramString))
    {
      VoiceConfig localVoiceConfig1 = this.nativeCommandHelper.getConfig(paramString);
      if (localVoiceConfig1 == null)
      {
        logger.e("No disambiguation config available for literal %s", new Object[] { paramString });
        return NO_OP_RECOGNIZER;
      }
      localArrayList1.addAll(Arrays.asList(localVoiceConfig1.getCustomPhrases()));
      localArrayList2.addAll(Arrays.asList(localVoiceConfig1.getCustomTags()));
    }
    return createDynamicRecognizer(paramContext, (String[])localArrayList1.toArray(new String[0]), (String[])localArrayList2.toArray(new String[0]));
  }

  protected HotwordRecognizer createSystemRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    logger.i("Creating system recognizer: %s", new Object[] { paramVoiceConfig });
    if (VoiceConfig.CONTACTS.equals(paramVoiceConfig))
      return createEntityRecognizer(paramContext, paramVoiceConfig.name, EntityUtils.getContactEntities(paramContext));
    if (VoiceConfig.GUARD.equals(paramVoiceConfig))
      return StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, StaticRecognizerFiles.GUARD);
    if (VoiceConfig.INCOMING_CALL.equals(paramVoiceConfig))
      return StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, StaticRecognizerFiles.INCOMING_CALL);
    if (VoiceConfig.MAIN_MENU.equals(paramVoiceConfig))
      return newMainMenuRecognizer(paramContext);
    if (VoiceConfig.NOTIFICATION.equals(paramVoiceConfig))
      return StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, StaticRecognizerFiles.NOTIFICATION);
    if (VoiceConfig.GUARD_CONSERVATIVE.equals(paramVoiceConfig))
      return StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, StaticRecognizerFiles.NOTIFICATION_GUARD);
    if (VoiceConfig.OFF.equals(paramVoiceConfig))
      return NO_OP_RECOGNIZER;
    if (VoiceConfig.PHOTO_SHARE_TARGETS.equals(paramVoiceConfig))
    {
      List localList2 = prependNames(paramContext, EntityUtils.getShareTargetEntities(paramContext, "image/jpeg"));
      return createEntityRecognizer(paramContext, paramVoiceConfig.name, localList2);
    }
    if (VoiceConfig.VIDEO_SHARE_TARGETS.equals(paramVoiceConfig))
    {
      List localList1 = prependNames(paramContext, EntityUtils.getShareTargetEntities(paramContext, "video/mp4"));
      return createEntityRecognizer(paramContext, paramVoiceConfig.name, localList1);
    }
    if (VoiceConfig.PLUS_SHARE_TARGETS.equals(paramVoiceConfig))
      return createEntityRecognizer(paramContext, paramVoiceConfig.name, EntityUtils.getPlusShareTargetEntities(paramContext));
    if (VoiceConfig.PHOTO_REVIEW.equals(paramVoiceConfig))
      return StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, StaticRecognizerFiles.PHOTO_REVIEW);
    if (VoiceConfig.PHOTO_SHARE.equals(paramVoiceConfig))
      return StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, StaticRecognizerFiles.PHOTO_SHARE);
    if (VoiceConfig.DIRECTIONS.equals(paramVoiceConfig))
      return StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, StaticRecognizerFiles.DIRECTIONS);
    if (VoiceConfig.VOICE_CORRECTION_HOTWORD.equals(paramVoiceConfig))
      return createCustomRecognizer(paramContext, paramVoiceConfig);
    logger.e("Recognizer not found for system config: %s", new Object[] { paramVoiceConfig });
    return NO_OP_RECOGNIZER;
  }

  private static class MirrorApiHybridHelper
  {
    private static final Map<Integer, StaticRecognizerFiles> legacyRecogFiles = new HashMap();
    private static final Map<Integer, StaticRecognizerFiles> rtaRecogFiles = new HashMap();

    public MirrorApiHybridHelper()
    {
      addLegacyCommandConfig(1, StaticRecognizerFiles.POST_AN_UPDATE);
      addRtaCommandConfig(0, StaticRecognizerFiles.TAKE_A_NOTE);
      addRtaCommandConfig(2, StaticRecognizerFiles.CHECK_ME_IN);
      addRtaCommandConfig(3, StaticRecognizerFiles.ADD_A_CALENDAR_EVENT);
      addRtaCommandConfig(4, StaticRecognizerFiles.FIND_A_RECIPE);
      addRtaCommandConfig(5, StaticRecognizerFiles.FIND_A_PLACE);
      addRtaCommandConfig(6, StaticRecognizerFiles.EXPLORE_NEARBY);
    }

    private static void addLegacyCommandConfig(int paramInt, StaticRecognizerFiles paramStaticRecognizerFiles)
    {
      legacyRecogFiles.put(Integer.valueOf(paramInt), paramStaticRecognizerFiles);
    }

    private static void addRtaCommandConfig(int paramInt, StaticRecognizerFiles paramStaticRecognizerFiles)
    {
      rtaRecogFiles.put(Integer.valueOf(paramInt), paramStaticRecognizerFiles);
    }

    private List<Integer> getImplementedCommands(Context paramContext)
    {
      final ListMultimap localListMultimap = EntityUtils.getMirrorCommandEntities(paramContext);
      return FluentIterable.from(localListMultimap.keySet()).filter(new Predicate()
      {
        public boolean apply(Integer paramAnonymousInteger)
        {
          return !localListMultimap.get(paramAnonymousInteger).isEmpty();
        }
      }).toList();
    }

    private boolean hasLegacyModel(int paramInt)
    {
      return legacyRecogFiles.containsKey(Integer.valueOf(paramInt));
    }

    private boolean hasRtaModel(int paramInt)
    {
      return rtaRecogFiles.containsKey(Integer.valueOf(paramInt));
    }

    public HotwordRecognizer createLegacyRecognizer(Context paramContext)
    {
      ArrayList localArrayList = Lists.newArrayList();
      Iterator localIterator = getImplementedCommands(paramContext).iterator();
      while (localIterator.hasNext())
      {
        int i = ((Integer)localIterator.next()).intValue();
        if (hasLegacyModel(i))
        {
          localArrayList.add(StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, (StaticRecognizerFiles)legacyRecogFiles.get(Integer.valueOf(i))));
        }
        else if (hasRtaModel(i))
        {
          FormattingLogger localFormattingLogger2 = SensoryRecognizerFactory.logger;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(i);
          localFormattingLogger2.i("RTA model for command type %s, will be recognized by native hybrid.", arrayOfObject2);
        }
        else
        {
          FormattingLogger localFormattingLogger1 = SensoryRecognizerFactory.logger;
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(i);
          localFormattingLogger1.e("No hand-tuned model for command type %s! Will not recognize this command.", arrayOfObject1);
        }
      }
      if (localArrayList.isEmpty())
        return RecognizerFactory.NO_OP_RECOGNIZER;
      return new HybridHotwordRecognizer((HotwordRecognizer[])localArrayList.toArray(new HotwordRecognizer[localArrayList.size()]));
    }

    public List<StaticRecognizerFiles> getNativeHybridRecogFiles(Context paramContext)
    {
      ArrayList localArrayList = Lists.newArrayList();
      Iterator localIterator = getImplementedCommands(paramContext).iterator();
      while (localIterator.hasNext())
      {
        int i = ((Integer)localIterator.next()).intValue();
        if (hasRtaModel(i))
          localArrayList.add(rtaRecogFiles.get(Integer.valueOf(i)));
      }
      return localArrayList;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.SensoryRecognizerFactory
 * JD-Core Version:    0.6.2
 */