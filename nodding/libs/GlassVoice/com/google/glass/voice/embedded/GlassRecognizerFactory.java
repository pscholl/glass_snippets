package com.google.glass.voice.embedded;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Multimap;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.ProtoEnumUtils;
import com.google.glass.voice.EntityUtils;
import com.google.glass.voice.HotwordRecognizer;
import com.google.glass.voice.MirrorCommandDisambiguationHelper;
import com.google.glass.voice.NativeAppVoiceConfigHelper;
import com.google.glass.voice.NativeCommandDisambiguationHelper;
import com.google.glass.voice.RecognizerFactory;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.Entity.Command.CommandType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GlassRecognizerFactory extends RecognizerFactory
{
  private static final String TAG = "GlassFactory";
  private static final FormattingLogger logger = FormattingLoggers.getLogger("GlassFactory");
  public static final Map<Integer, String> mirrorCommands = new HashMap();
  private final MirrorCommandDisambiguationHelper mirrorHelper;
  private NativeCommandDisambiguationHelper nativeCommandHelper;

  static
  {
    mirrorCommands.put(Integer.valueOf(1), "post an update");
    mirrorCommands.put(Integer.valueOf(0), "take a note");
    mirrorCommands.put(Integer.valueOf(2), "check me in");
    mirrorCommands.put(Integer.valueOf(3), "add a calendar event");
    mirrorCommands.put(Integer.valueOf(4), "find a recipe");
    mirrorCommands.put(Integer.valueOf(5), "find a place");
    mirrorCommands.put(Integer.valueOf(6), "explore nearby");
  }

  public GlassRecognizerFactory(MirrorCommandDisambiguationHelper paramMirrorCommandDisambiguationHelper, NativeCommandDisambiguationHelper paramNativeCommandDisambiguationHelper)
  {
    this.mirrorHelper = paramMirrorCommandDisambiguationHelper;
    this.nativeCommandHelper = paramNativeCommandDisambiguationHelper;
  }

  private HotwordRecognizer createDisambiguationRecognizer(Context paramContext, int paramInt, Collection<TimelineNano.Entity> paramCollection)
  {
    VoiceConfig localVoiceConfig = this.mirrorHelper.getConfig(paramInt);
    return createCustomRecognizer(paramContext, new VoiceConfig(getDecoderName(localVoiceConfig), localVoiceConfig.getCustomPhrases(), localVoiceConfig.getCustomTags()), paramCollection);
  }

  private HotwordRecognizer createDisambiguationRecognizer(Context paramContext, String paramString)
  {
    VoiceConfig localVoiceConfig = this.nativeCommandHelper.getConfig(paramString);
    return createCustomRecognizer(paramContext, new VoiceConfig(getDecoderName(localVoiceConfig), localVoiceConfig.getCustomPhrases(), localVoiceConfig.getCustomTags()));
  }

  private VoiceCommand getCommand(String paramString)
  {
    if ("[hotword_ok_glass]".equals(paramString))
      return VoiceCommand.OK_GLASS;
    if ("[hotword_take_a_picture]".equals(paramString))
      return VoiceCommand.TAKE_PHOTO;
    if ("[hotword_record_a_video]".equals(paramString))
      return VoiceCommand.RECORD_VIDEO;
    if ("[hotword_google]".equals(paramString))
      return VoiceCommand.GOOGLE;
    if ("[hotword_get_directions]".equals(paramString))
      return VoiceCommand.NAVIGATION;
    if ("[hotword_make_a_video_call]".equals(paramString))
      return VoiceCommand.VIDEO_CALL;
    if ("[hotword_make_a_call]".equals(paramString))
      return VoiceCommand.CALL;
    if ("[hotword_send_a_message]".equals(paramString))
      return VoiceCommand.SEND_MESSAGE_TO;
    if ("[hotword_reply]".equals(paramString))
      return VoiceCommand.REPLY;
    if ("[hotword_read_aloud]".equals(paramString))
      return VoiceCommand.READ_ALOUD;
    if ("[hotword_answer_call]".equals(paramString))
      return VoiceCommand.ANSWER_CALL;
    if ("[hotword_ignore_call]".equals(paramString))
      return VoiceCommand.DECLINE_CALL;
    if ("[hotword_share_with]".equals(paramString))
      return VoiceCommand.SHARE;
    if ("[listen_to]".equals(paramString))
      return VoiceCommand.LISTEN_TO;
    if ("[hotword_take_a_note]".equals(paramString))
      return VoiceCommand.TAKE_NOTE;
    if ("[hotword_post_an_update]".equals(paramString))
      return VoiceCommand.POST_AN_UPDATE;
    if ("[hotword_check_me_in]".equals(paramString))
      return VoiceCommand.CHECK_ME_IN;
    if ("[hotword_add_a_calendar_event]".equals(paramString))
      return VoiceCommand.ADD_A_CALENDAR_EVENT;
    if ("[hotword_find_a_recipe]".equals(paramString))
      return VoiceCommand.FIND_A_RECIPE;
    if ("[hotword_find_a_place]".equals(paramString))
      return VoiceCommand.FIND_A_PLACE;
    if ("[hotword_explore_nearby]".equals(paramString))
      return VoiceCommand.EXPLORE_NEARBY;
    return null;
  }

  private String getDecoderName(VoiceConfig paramVoiceConfig)
  {
    try
    {
      Object localObject2;
      if (VoiceConfig.CONTACTS.equals(paramVoiceConfig))
      {
        String str2 = EmbeddedRecognizerController.Decoder.DYN_1.name();
        localObject2 = str2;
      }
      while (true)
      {
        return localObject2;
        if (VoiceConfig.PLUS_SHARE_TARGETS.equals(paramVoiceConfig))
        {
          localObject2 = EmbeddedRecognizerController.Decoder.DYN_2.name();
        }
        else if (VoiceConfig.PHOTO_SHARE_TARGETS.equals(paramVoiceConfig))
        {
          localObject2 = EmbeddedRecognizerController.Decoder.DYN_3.name();
        }
        else if (VoiceConfig.MAIN_MENU.equals(paramVoiceConfig))
        {
          localObject2 = EmbeddedRecognizerController.Decoder.DYN_4.name();
        }
        else
        {
          String str1 = EmbeddedRecognizerController.Decoder.DYN_5.name();
          localObject2 = str1;
        }
      }
    }
    finally
    {
    }
  }

  private HotwordRecognizer newMainMenuRecognizer(Context paramContext)
  {
    VoiceCommand[] arrayOfVoiceCommand = new VoiceCommand[8];
    arrayOfVoiceCommand[0] = VoiceCommand.GOOGLE;
    arrayOfVoiceCommand[1] = VoiceCommand.TAKE_PHOTO;
    arrayOfVoiceCommand[2] = VoiceCommand.RECORD_VIDEO;
    arrayOfVoiceCommand[3] = VoiceCommand.NAVIGATION;
    arrayOfVoiceCommand[4] = VoiceCommand.SEND_MESSAGE_TO;
    arrayOfVoiceCommand[5] = VoiceCommand.CALL;
    arrayOfVoiceCommand[6] = VoiceCommand.SEND_MESSAGE_TO;
    arrayOfVoiceCommand[7] = VoiceCommand.VIDEO_CALL;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int i = arrayOfVoiceCommand.length;
    for (int j = 0; j < i; j++)
    {
      localArrayList1.add(arrayOfVoiceCommand[j].getLiteral());
      localArrayList2.add("");
    }
    if (Labs.isEnabled(Labs.Feature.NATIVE_APP_VOICE))
    {
      VoiceConfig localVoiceConfig2 = NativeAppVoiceConfigHelper.getInstance().getNativeAppsConfig(paramContext);
      if (localVoiceConfig2 != null)
      {
        localArrayList1.addAll(Arrays.asList(localVoiceConfig2.getCustomPhrases()));
        localArrayList2.addAll(Arrays.asList(localVoiceConfig2.getCustomTags()));
      }
    }
    VoiceConfig localVoiceConfig1 = createMirrorConfig(paramContext);
    if (localVoiceConfig1 != null)
    {
      localArrayList1.addAll(Arrays.asList(localVoiceConfig1.getCustomPhrases()));
      localArrayList2.addAll(Arrays.asList(localVoiceConfig1.getCustomTags()));
    }
    if (localArrayList1.isEmpty())
      return new FilteredGrecoRecognizer(paramContext, EmbeddedRecognizerController.Decoder.MENU, arrayOfVoiceCommand);
    return createCustomRecognizer(paramContext, new VoiceConfig(getDecoderName(VoiceConfig.MAIN_MENU), (String[])localArrayList1.toArray(new String[0]), (String[])localArrayList2.toArray(new String[0])));
  }

  protected HotwordRecognizer createCustomRecognizer(Context paramContext, final VoiceConfig paramVoiceConfig, Collection<TimelineNano.Entity> paramCollection)
  {
    if (paramVoiceConfig.getDisambiguationCommandType() != -2147483648)
      return createDisambiguationRecognizer(paramContext, paramVoiceConfig.getDisambiguationCommandType(), paramCollection);
    if (!TextUtils.isEmpty(paramVoiceConfig.getLiteral()))
    {
      logger.d("creating disambiguation grammar for literal", new Object[0]);
      return createDisambiguationRecognizer(paramContext, paramVoiceConfig.getLiteral());
    }
    if (paramVoiceConfig.getVoiceConfigs().length > 0)
      throw new UnsupportedOperationException("Not yet implemented.");
    return new EmbeddedGlassRecognizer(paramContext, EmbeddedRecognizerController.Decoder.valueOf(paramVoiceConfig.name), paramVoiceConfig.getCustomPhrases(), paramVoiceConfig.getCustomTags())
    {
      public VoiceCommand stringToCommand(String paramAnonymousString)
      {
        VoiceCommand localVoiceCommand = GlassRecognizerFactory.this.getCommand(paramAnonymousString);
        if (localVoiceCommand != null)
          return localVoiceCommand;
        for (int i = 0; i < paramVoiceConfig.getCustomPhrases().length; i++)
          if (("[hotword_" + paramVoiceConfig.getCustomPhrases()[i].replace(" ", "_") + "]").equals(paramAnonymousString))
          {
            if (paramVoiceConfig.getCustomTags().length > i)
            {
              String str = paramVoiceConfig.getCustomTags()[i];
              return new VoiceCommand(paramAnonymousString + "_tag_" + str);
            }
            return new VoiceCommand(paramAnonymousString);
          }
        return null;
      }
    };
  }

  public VoiceConfig createMirrorConfig(Context paramContext)
  {
    ListMultimap localListMultimap = EntityUtils.getMirrorCommandEntities(paramContext);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int[] arrayOfInt = ProtoEnumUtils.getEnumValues(TimelineNano.Entity.Command.CommandType.class);
    int i = arrayOfInt.length;
    int j = 0;
    if (j < i)
    {
      int k = arrayOfInt[j];
      if ((localListMultimap.containsKey(Integer.valueOf(k))) && (!localListMultimap.get(Integer.valueOf(k)).isEmpty()))
      {
        if (!mirrorCommands.containsKey(Integer.valueOf(k)))
          break label138;
        localArrayList1.add(mirrorCommands.get(Integer.valueOf(k)));
        localArrayList2.add("");
      }
      while (true)
      {
        j++;
        break;
        label138: FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = ("Not a known mirror command: " + k);
        localFormattingLogger.w("GlassFactory", arrayOfObject);
      }
    }
    if (localArrayList1.size() == 0)
      return null;
    return new VoiceConfig("MIRROR", (String[])localArrayList1.toArray(new String[0]), (String[])localArrayList2.toArray(new String[0]));
  }

  protected HotwordRecognizer createSystemRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    FormattingLogger localFormattingLogger1 = logger;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = ("Creating system recognizer: " + paramVoiceConfig);
    localFormattingLogger1.i("GlassFactory", arrayOfObject1);
    if (VoiceConfig.CONTACTS.equals(paramVoiceConfig))
      return createEntityRecognizer(paramContext, getDecoderName(paramVoiceConfig), EntityUtils.getContactEntities(paramContext));
    if (VoiceConfig.GUARD.equals(paramVoiceConfig))
    {
      EmbeddedRecognizerController.Decoder localDecoder7 = EmbeddedRecognizerController.Decoder.GUARD;
      VoiceCommand[] arrayOfVoiceCommand7 = new VoiceCommand[1];
      arrayOfVoiceCommand7[0] = VoiceCommand.OK_GLASS;
      return new FilteredGrecoRecognizer(paramContext, localDecoder7, arrayOfVoiceCommand7);
    }
    if (VoiceConfig.INCOMING_CALL.equals(paramVoiceConfig))
    {
      EmbeddedRecognizerController.Decoder localDecoder6 = EmbeddedRecognizerController.Decoder.MENU;
      VoiceCommand[] arrayOfVoiceCommand6 = new VoiceCommand[2];
      arrayOfVoiceCommand6[0] = VoiceCommand.ANSWER_CALL;
      arrayOfVoiceCommand6[1] = VoiceCommand.DECLINE_CALL;
      return new FilteredGrecoRecognizer(paramContext, localDecoder6, arrayOfVoiceCommand6);
    }
    if (VoiceConfig.MAIN_MENU.equals(paramVoiceConfig))
      return newMainMenuRecognizer(paramContext);
    if (VoiceConfig.NOTIFICATION.equals(paramVoiceConfig))
    {
      EmbeddedRecognizerController.Decoder localDecoder5 = EmbeddedRecognizerController.Decoder.MENU;
      VoiceCommand[] arrayOfVoiceCommand5 = new VoiceCommand[2];
      arrayOfVoiceCommand5[0] = VoiceCommand.REPLY;
      arrayOfVoiceCommand5[1] = VoiceCommand.READ_ALOUD;
      return new FilteredGrecoRecognizer(paramContext, localDecoder5, arrayOfVoiceCommand5);
    }
    if (VoiceConfig.GUARD_CONSERVATIVE.equals(paramVoiceConfig))
    {
      EmbeddedRecognizerController.Decoder localDecoder4 = EmbeddedRecognizerController.Decoder.GUARD;
      VoiceCommand[] arrayOfVoiceCommand4 = new VoiceCommand[1];
      arrayOfVoiceCommand4[0] = VoiceCommand.OK_GLASS;
      return new FilteredGrecoRecognizer(paramContext, localDecoder4, arrayOfVoiceCommand4);
    }
    if (VoiceConfig.OFF.equals(paramVoiceConfig))
    {
      EmbeddedRecognizerController.getEmbeddedRecognizerController(paramContext).switchDecoders(EmbeddedRecognizerController.Decoder.NONE);
      return NO_OP_RECOGNIZER;
    }
    if (VoiceConfig.PHOTO_SHARE_TARGETS.equals(paramVoiceConfig))
    {
      List localList2 = prependNames(paramContext, EntityUtils.getShareTargetEntities(paramContext, "image/jpeg"));
      return createEntityRecognizer(paramContext, getDecoderName(paramVoiceConfig), localList2);
    }
    if (VoiceConfig.VIDEO_SHARE_TARGETS.equals(paramVoiceConfig))
    {
      List localList1 = prependNames(paramContext, EntityUtils.getShareTargetEntities(paramContext, "video/mp4"));
      return createEntityRecognizer(paramContext, getDecoderName(paramVoiceConfig), localList1);
    }
    if (VoiceConfig.PLUS_SHARE_TARGETS.equals(paramVoiceConfig))
      return createEntityRecognizer(paramContext, getDecoderName(paramVoiceConfig), EntityUtils.getPlusShareTargetEntities(paramContext));
    if (VoiceConfig.PHOTO_REVIEW.equals(paramVoiceConfig))
    {
      EmbeddedRecognizerController.Decoder localDecoder3 = EmbeddedRecognizerController.Decoder.MENU;
      VoiceCommand[] arrayOfVoiceCommand3 = new VoiceCommand[1];
      arrayOfVoiceCommand3[0] = VoiceCommand.SHARE;
      return new FilteredGrecoRecognizer(paramContext, localDecoder3, arrayOfVoiceCommand3);
    }
    if (VoiceConfig.PHOTO_SHARE.equals(paramVoiceConfig))
    {
      EmbeddedRecognizerController.Decoder localDecoder2 = EmbeddedRecognizerController.Decoder.MENU;
      VoiceCommand[] arrayOfVoiceCommand2 = new VoiceCommand[1];
      arrayOfVoiceCommand2[0] = VoiceCommand.SHARE;
      return new FilteredGrecoRecognizer(paramContext, localDecoder2, arrayOfVoiceCommand2);
    }
    if (VoiceConfig.DIRECTIONS.equals(paramVoiceConfig))
    {
      EmbeddedRecognizerController.Decoder localDecoder1 = EmbeddedRecognizerController.Decoder.MENU;
      VoiceCommand[] arrayOfVoiceCommand1 = new VoiceCommand[2];
      arrayOfVoiceCommand1[0] = VoiceCommand.SHOW_HIDE_ROUTE_OVERVIEW;
      arrayOfVoiceCommand1[1] = VoiceCommand.STOP_DIRECTIONS;
      return new FilteredGrecoRecognizer(paramContext, localDecoder1, arrayOfVoiceCommand1);
    }
    FormattingLogger localFormattingLogger2 = logger;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = ("Glass recognizer not found for system config: " + paramVoiceConfig);
    localFormattingLogger2.e("GlassFactory", arrayOfObject2);
    return NO_OP_RECOGNIZER;
  }

  private class FilteredGrecoRecognizer extends EmbeddedGlassRecognizer
  {
    private List<VoiceCommand> acceptableCommands;

    public FilteredGrecoRecognizer(Context paramDecoder, EmbeddedRecognizerController.Decoder paramArrayOfVoiceCommand, VoiceCommand[] arg4)
    {
      super(paramArrayOfVoiceCommand);
      Object[] arrayOfObject;
      this.acceptableCommands = Arrays.asList(arrayOfObject);
    }

    public VoiceCommand stringToCommand(String paramString)
    {
      VoiceCommand localVoiceCommand = GlassRecognizerFactory.this.getCommand(paramString);
      if (this.acceptableCommands.contains(localVoiceCommand))
        return localVoiceCommand;
      return null;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.embedded.GlassRecognizerFactory
 * JD-Core Version:    0.6.2
 */