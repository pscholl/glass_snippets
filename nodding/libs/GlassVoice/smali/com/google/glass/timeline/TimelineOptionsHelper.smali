.class public Lcom/google/glass/timeline/TimelineOptionsHelper;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;,
        Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;,
        Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;
    }
.end annotation


# static fields
.field private static final DESCRIPTION_MAX_LEN:I = 0x1e

.field public static final REQUEST_CODE_SHARE:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final audioManager:Landroid/media/AudioManager;

.field private final callHelper:Lcom/google/glass/phone/PhoneCallHelper;

.field private final hangoutHelper:Lcom/google/glass/util/HangoutHelper;

.field private final iconProvider:Lcom/google/glass/util/IconProvider;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private final timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;)V
    .locals 1
    .parameter "activity"
    .parameter "iconProvider"
    .parameter "timelineOptionProgressListener"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    .line 145
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    .line 147
    invoke-virtual {p1}, Lcom/google/glass/app/GlassActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->audioManager:Landroid/media/AudioManager;

    .line 148
    invoke-virtual {p1}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 149
    invoke-virtual {p1}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 150
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 151
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    .line 153
    iput-object p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method private addCustom(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 0
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 301
    return-void
.end method

.method private addDelete(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 375
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_delete_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method private addHangout(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 502
    const/4 v5, 0x0

    .line 503
    .local v5, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_hangout:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 508
    :cond_0
    :goto_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_hangout:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_video_call_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 511
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_hangout_no_hangout:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private addMenuItem(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 2
    .parameter "menu"
    .parameter "timelineItem"
    .parameter "menuItem"

    .prologue
    .line 227
    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    .line 229
    .local v0, menuValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    iget v1, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    packed-switch v1, :pswitch_data_0

    .line 292
    :goto_0
    :pswitch_0
    return-void

    .line 231
    :pswitch_1
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addCustom(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 237
    :pswitch_3
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReply(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 240
    :pswitch_4
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReplyAll(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 243
    :pswitch_5
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addSendMessage(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 246
    :pswitch_6
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addDelete(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 249
    :pswitch_7
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addShare(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 252
    :pswitch_8
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addSend(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 255
    :pswitch_9
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReadAloud(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 258
    :pswitch_a
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVoiceCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 261
    :pswitch_b
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 264
    :pswitch_c
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addSearch(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 267
    :pswitch_d
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/widget/OptionMenu$Item;

    goto :goto_0

    .line 270
    :pswitch_e
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addHangout(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 273
    :pswitch_f
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addOpenUri(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 276
    :pswitch_10
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addTogglePinned(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 279
    :pswitch_11
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addPlayVideo(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 282
    :pswitch_12
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVolume(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 285
    :pswitch_13
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addShowRecipients(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_5
        :pswitch_12
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method private addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 8
    .parameter "menu"
    .parameter "menuItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 484
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 485
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v4, Lcom/google/glass/common/R$string;->phone_call_mute:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 488
    .local v1, muteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    new-instance v3, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v4, Lcom/google/glass/common/R$string;->phone_call_unmute:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_microphone_off_medium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 491
    .local v3, unmuteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v1, v4, v6

    aput-object v3, v4, v7

    invoke-virtual {p0, p1, p2, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I

    move-result v0

    .line 492
    .local v0, menuItemId:I
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 493
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v4

    return-object v4
.end method

.method private addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 449
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_navigate:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_navigate_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationLauncher;->wakeUpNavigation(Landroid/content/Context;)V

    .line 453
    return-void
.end method

.method private addPlayVideo(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    .line 559
    iget-object v0, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_play_video:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_play_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 565
    :cond_1
    return-void
.end method

.method private addReadAloud(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 419
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_read_aloud:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_read_aloud_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method private addSearch(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 461
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_expand_search:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_search_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method private addSend(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    .line 405
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/glass/entity/EntityCache;->getMatchingSendTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v7

    .line 407
    .local v7, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_send:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 411
    :cond_0
    return-void
.end method

.method private addShare(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    .line 386
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/glass/entity/EntityCache;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v7

    .line 388
    .local v7, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_share:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->sharing_no_share_targets:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_share:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addTogglePinned(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 575
    iget-object v0, p4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_unpin:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_unpin_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 582
    :goto_0
    return-void

    .line 579
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_pin:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_pin_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addVoiceCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 430
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    const/4 v5, 0x0

    .line 432
    .local v5, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_call:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 437
    :cond_0
    :goto_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_voice_call:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_phone_out_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 441
    .end local v5           #description:Ljava/lang/String;
    :cond_1
    return-void

    .line 434
    .restart local v5       #description:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_hangout_no_call:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private addVolume(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuItem"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 630
    .local v7, resources:Landroid/content/res/Resources;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_volume:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_volume_medium:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 634
    return-void
.end method

.method public static getCallOrHangoutStatusDescription(Landroid/app/Activity;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/util/HangoutHelper;)Ljava/lang/String;
    .locals 1
    .parameter "activity"
    .parameter "phoneCallHelper"
    .parameter "hangoutHelper"

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget v0, Lcom/google/glass/common/R$string;->phone_call_in_call:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 363
    :cond_0
    invoke-virtual {p2}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    sget v0, Lcom/google/glass/common/R$string;->hangout_in_hangout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "value"
    .parameter "defaultResId"

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 704
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 705
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 707
    :cond_1
    return-object v0
.end method

.method public static getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 6
    .parameter "item"
    .parameter "state"

    .prologue
    .line 688
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 689
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 690
    .local v3, value:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    if-nez p1, :cond_0

    iget v4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_1

    :cond_0
    iget v4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    if-ne v4, p1, :cond_2

    .line 696
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_1
    :goto_1
    return-object v3

    .line 689
    .restart local v0       #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #value:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static isBrokenMedia(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "timelineItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 208
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 209
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 213
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 214
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 6
    .parameter "selectedTimelineItem"
    .parameter "selectedMenuItem"

    .prologue
    .line 970
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 971
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 973
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "itemId"

    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    const-string v4, "menu_item_id"

    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_0

    .line 978
    const-string v4, "creator"

    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 982
    :cond_0
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v3

    .line 983
    .local v3, shareTargetCount:I
    const-string v4, "share_target_count"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 984
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 985
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v4, v0

    .line 986
    .local v2, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->createShareTargetExtraKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    .end local v2           #shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4, v1}, Lcom/google/glass/app/GlassActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 990
    const/4 v4, 0x1

    .line 992
    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #shareTargetCount:I
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onCustom(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 19
    .parameter "timelineItem"
    .parameter "menuItem"

    .prologue
    .line 1163
    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/TimelineHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v17

    .line 1164
    .local v17, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1166
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1167
    .local v14, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1168
    .local v15, mu:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1169
    invoke-interface {v14, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1173
    .end local v15           #mu:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v14, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1176
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v16

    .line 1177
    .local v16, pendingValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v11

    .line 1178
    .local v11, confirmedValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    new-instance v18, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 1179
    .local v18, userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v4, 0x5

    move-object/from16 v0, v18

    iput v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type:I

    .line 1180
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload:Ljava/lang/String;

    .line 1182
    if-eqz v16, :cond_7

    if-eqz v11, :cond_7

    .line 1183
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v12

    .line 1186
    .local v12, defaultValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v6

    .line 1187
    .local v6, pendingText:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1188
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v6

    .line 1190
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1191
    .local v7, pendingIcon:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_4

    .line 1192
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1194
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v8

    .line 1195
    .local v8, confirmedText:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1196
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v8

    .line 1198
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1199
    .local v9, confirmedIcon:Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_6

    .line 1200
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1203
    :cond_6
    new-instance v10, Lcom/google/glass/timeline/TimelineOptionsHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper$2;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    .line 1217
    .end local v6           #pendingText:Ljava/lang/String;
    .end local v7           #pendingIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #confirmedText:Ljava/lang/String;
    .end local v9           #confirmedIcon:Landroid/graphics/drawable/Drawable;
    .end local v12           #defaultValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1215
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0
.end method

.method private onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z
    .locals 12
    .parameter "timelineItem"
    .parameter "menuItem"
    .parameter "deletedListener"

    .prologue
    const/4 v11, 0x1

    .line 1241
    iget-object v8, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    .line 1242
    .local v8, itemId:Ljava/lang/String;
    iget-object v9, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    .line 1245
    .local v9, itemSourceId:Ljava/lang/String;
    invoke-static {p2, v11}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v10

    .line 1246
    .local v10, pendingValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirming:I

    invoke-virtual {p0, v10, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    .line 1247
    .local v2, pendingText:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$drawable;->ic_delete_medium:I

    invoke-direct {p0, v10, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1248
    .local v3, pendingIcon:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v7

    .line 1249
    .local v7, confirmedValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirmed:I

    invoke-virtual {p0, v7, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v4

    .line 1250
    .local v4, confirmedText:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$drawable;->ic_done_medium:I

    invoke-direct {p0, v7, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1252
    .local v5, confirmedIcon:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1255
    if-eqz p3, :cond_0

    .line 1256
    invoke-interface {p3}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;->onConfirmDelete()V

    .line 1258
    :cond_0
    new-instance v6, Lcom/google/glass/timeline/TimelineOptionsHelper$4;

    invoke-direct {v6, p0, v9, v8, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper$4;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    .line 1277
    return v11
.end method

.method private onHangout(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 7
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1121
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v4}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v4}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1122
    :cond_0
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "In a call or hangout, not initiating a new one."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move v2, v3

    .line 1152
    :goto_0
    return v2

    .line 1127
    :cond_1
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    .line 1128
    .local v0, roomId:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1129
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Re-joining Hangout roomId=%s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    :goto_1
    const/4 v1, 0x0

    .line 1135
    .local v1, target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_2

    .line 1136
    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1137
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Using creator as invite target."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    :cond_2
    if-nez v1, :cond_3

    .line 1141
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No timeline item creator found, falling back to use share target instead."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1143
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v1, v4, v3

    .line 1147
    :cond_3
    if-nez v1, :cond_4

    .line 1148
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No share target either.  Possibly a dev using adb to directly join a room?"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    :cond_4
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v4, v0, v1, v3}, Lcom/google/glass/util/HangoutHelper;->joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V

    goto :goto_0

    .line 1131
    .end local v1           #target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No room ID given, will create a new Hangout."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private onMuteMic(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "selectedOptionMenuItem"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 886
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, p1}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 887
    const/4 v0, 0x1

    return v0
.end method

.method private onOpenUri(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 1
    .parameter "selectedMenuItem"

    .prologue
    .line 813
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onOpenUri(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 1428
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 1429
    .local v1, userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 1430
    .local v0, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    .line 1431
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1432
    const/16 v2, 0x9

    iput v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type:I

    .line 1433
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    .line 1434
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    .line 1441
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v3, Lcom/google/glass/timeline/TimelineOptionsHelper$7;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper$7;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 1460
    return v4

    .line 1436
    :cond_0
    const/16 v2, 0x8

    iput v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type:I

    .line 1437
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    .line 1438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    goto :goto_0
.end method

.method private onVoiceCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 3
    .parameter "item"
    .parameter "timelineItem"

    .prologue
    .line 1073
    const/4 v0, 0x0

    .line 1076
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1077
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1079
    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    .line 1098
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVoiceCall(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1080
    :cond_1
    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1083
    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 1088
    :cond_2
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    .line 1089
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1090
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    .line 1093
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1095
    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method private onVolume()Z
    .locals 4

    .prologue
    .line 804
    new-instance v0, Lcom/google/glass/widget/VolumeControlDialog;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->audioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/widget/VolumeControlDialog;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;Landroid/media/AudioManager;)V

    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->show()V

    .line 805
    const/4 v0, 0x1

    return v0
.end method

.method private showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V
    .locals 4
    .parameter "menuItem"
    .parameter "pendingText"
    .parameter "pendingIcon"
    .parameter "confirmedText"
    .parameter "confirmedIcon"
    .parameter "listener"

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAnimated(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/TimelineOptionsHelper$8;

    invoke-direct {v2, p0, p1, p6}, Lcom/google/glass/timeline/TimelineOptionsHelper$8;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 1500
    return-void
.end method


# virtual methods
.method public varargs addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I
    .locals 2
    .parameter "menu"
    .parameter "extra"
    .parameter "itemStates"

    .prologue
    .line 681
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v0

    .line 682
    .local v0, id:I
    invoke-virtual {p1, v0, p3}, Lcom/google/glass/widget/OptionMenu;->addItem(I[Lcom/google/glass/widget/OptionMenu$ItemState;)V

    .line 683
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 684
    return v0
.end method

.method addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "menu"
    .parameter "label"
    .parameter "icon"
    .parameter "isEnabled"
    .parameter "description"
    .parameter "extra"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 665
    new-instance v2, Lcom/google/glass/widget/OptionMenu$ItemState;

    invoke-direct {v2, v4, p2, p3}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 666
    .local v2, itemState:Lcom/google/glass/widget/OptionMenu$ItemState;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v2, v3, v4

    invoke-virtual {p0, p1, p6, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I

    move-result v0

    .line 667
    .local v0, id:I
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    .line 668
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1, p4}, Lcom/google/glass/widget/OptionMenu$Item;->setEnabled(Z)V

    .line 669
    invoke-virtual {v1, p5}, Lcom/google/glass/widget/OptionMenu$Item;->setDescription(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public addMuteMic(Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 2
    .parameter "menu"

    .prologue
    .line 471
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 472
    .local v0, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v1, 0xb

    iput v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 473
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    return-object v1
.end method

.method addOpenUri(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 14
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 521
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    .line 522
    .local v13, uri:Ljava/lang/String;
    move-object v6, v13

    .line 523
    .local v6, description:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 526
    :cond_0
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 528
    .local v9, lowerUri:Ljava/lang/String;
    const/4 v11, 0x1

    .line 529
    .local v11, shouldAddItem:Z
    const-string v1, "http:"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https:"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    :cond_1
    sget v12, Lcom/google/glass/common/R$string;->timeline_menu_view_website:I

    .line 544
    .local v12, stringResId:I
    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    .line 545
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v12}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/google/glass/common/R$drawable;->browser_website:I

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 548
    :cond_3
    return-void

    .line 532
    .end local v12           #stringResId:I
    :cond_4
    sget v12, Lcom/google/glass/common/R$string;->timeline_menu_open:I

    .line 533
    .restart local v12       #stringResId:I
    const/4 v6, 0x0

    .line 537
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 538
    .local v8, launcherIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 540
    .local v10, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public addReadMore(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 9
    .parameter "menu"
    .parameter "timelineItem"

    .prologue
    const/16 v8, 0x10

    .line 592
    const/4 v3, 0x0

    .line 593
    .local v3, readMoreItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v4, 0x0

    .line 594
    .local v4, readMoreItemIndex:I
    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 595
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 596
    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v5, v1

    .line 597
    .local v2, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget v5, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    if-ne v5, v8, :cond_2

    .line 598
    move-object v3, v2

    .line 599
    move v4, v1

    .line 605
    .end local v1           #i:I
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_0
    const/4 v0, 0x0

    .line 606
    .local v0, defaultValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    if-eqz v3, :cond_1

    .line 607
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    .line 610
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v5

    sget v6, Lcom/google/glass/common/R$string;->timeline_menu_read_more:I

    invoke-virtual {p0, v0, v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$drawable;->ic_document_medium:I

    invoke-direct {p0, v0, v7}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/google/glass/widget/OptionMenu;->insertItem(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 613
    invoke-virtual {p1, v4}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 614
    return-void

    .line 595
    .end local v0           #defaultValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .restart local v1       #i:I
    .restart local v2       #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method addReply(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 320
    invoke-static {p4}, Lcom/google/glass/timeline/TimelineHelper;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_retry:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 329
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getCallOrHangoutStatusDescription(Landroid/app/Activity;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/util/HangoutHelper;)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, description:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_reply:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method addReplyAll(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getCallOrHangoutStatusDescription(Landroid/app/Activity;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/util/HangoutHelper;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, description:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_reply_all:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_all_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method addSendMessage(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getCallOrHangoutStatusDescription(Landroid/app/Activity;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/util/HangoutHelper;)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, description:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_send_message:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method addShowRecipients(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 646
    iget-object v0, p4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_show_recipients:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_people_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 650
    :cond_0
    return-void
.end method

.method public addVolume(Lcom/google/glass/widget/OptionMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 618
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 619
    .local v0, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v1, 0x13

    iput v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 620
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVolume(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 621
    return-void
.end method

.method protected getGlassActivity()Lcom/google/glass/app/GlassActivity;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1517
    new-instance v0, Lcom/google/glass/util/HangoutHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/HangoutHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "defaultResId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 712
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    .line 717
    :goto_0
    return-object v0

    .line 714
    :cond_0
    if-eqz p2, :cond_1

    .line 715
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, p2}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method protected getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method public handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/widget/OptionMenu$Item;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;Ljava/lang/String;)Z
    .locals 7
    .parameter "selectedTimelineItem"
    .parameter "selectedOptionMenuItem"
    .parameter "deletedListener"
    .parameter "originLogData"

    .prologue
    const/4 v2, 0x0

    .line 734
    if-nez p1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v2

    .line 738
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 739
    .local v1, selectedMenuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    if-eqz v1, :cond_0

    .line 743
    iget v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 744
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 783
    :pswitch_0
    sget-object v3, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Action not handled: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 746
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onCustom(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 749
    :pswitch_2
    invoke-virtual {p0, v0, p1, p4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onShare(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 751
    :pswitch_3
    invoke-direct {p0, p1, v1, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z

    move-result v2

    goto :goto_0

    .line 753
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 755
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 757
    :pswitch_6
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onSendMessage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 759
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 761
    :pswitch_8
    invoke-direct {p0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 763
    :pswitch_9
    invoke-direct {p0, v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVoiceCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 765
    :pswitch_a
    invoke-virtual {p0, v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 767
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 769
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onMuteMic(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v2

    goto :goto_0

    .line 771
    :pswitch_d
    invoke-direct {p0, v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onHangout(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 773
    :pswitch_e
    invoke-direct {p0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onOpenUri(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 775
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 777
    :pswitch_10
    invoke-virtual {p0, v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 779
    :pswitch_11
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVolume()Z

    move-result v2

    goto :goto_0

    .line 781
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onShowRecipients(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_6
        :pswitch_11
        :pswitch_12
        :pswitch_2
    .end packed-switch
.end method

.method public handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 12
    .parameter "menu"
    .parameter "timelineItem"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 167
    if-nez p2, :cond_0

    .line 168
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No item to populate options."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :goto_0
    return v11

    .line 173
    :cond_0
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->isBrokenMedia(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Item is broken media; not adding menu options."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    iget-object v7, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .local v7, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v10, v7, v8

    .line 181
    .local v10, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-direct {p0, p1, p2, v10}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 180
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 188
    .end local v7           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_2
    iget v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->PZ:Lcom/google/glass/util/Labs$Feature;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.glass.prototype.pz"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 193
    .local v6, zoomItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v0, 0x7

    iput v0, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 194
    const-string v0, "com.google.glass.prototype.pz.ACTION"

    iput-object v0, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    .line 197
    const-string v2, "Zoom"

    sget v0, Lcom/google/glass/common/R$drawable;->ic_photo_medium:I

    invoke-direct {p0, v5, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 201
    .end local v6           #zoomItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v0

    if-lez v0, :cond_4

    :goto_2
    move v11, v4

    goto :goto_0

    :cond_4
    move v4, v11

    goto :goto_2
.end method

.method protected notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 2
    .parameter "updatedItem"
    .parameter "userAction"
    .parameter "menuItem"

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v1, Lcom/google/glass/timeline/TimelineOptionsHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper$3;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 1232
    return-void
.end method

.method public onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;I)Z
    .locals 2
    .parameter "location"
    .parameter "travelMode"

    .prologue
    .line 956
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 957
    .local v0, navigationIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 958
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 959
    const/4 v1, 0x1

    .line 961
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "menuItem"
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v0, 0x0

    .line 941
    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v1, :cond_0

    .line 942
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No location set for timeline item %s, skipping navigation."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    :goto_0
    return v0

    .line 946
    :cond_0
    iget v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    if-ltz v1, :cond_1

    iget v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    .line 948
    .local v0, travelMode:I
    :cond_1
    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onOpenUri(Ljava/lang/String;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 820
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 821
    sget-object v3, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No uri available to open."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    :goto_0
    return v2

    .line 825
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 828
    .local v1, launcherIntent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 835
    goto :goto_0

    .line 829
    :catch_0
    move-exception v0

    .line 832
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No activity found that could open %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "selectedMenuItem"
    .parameter "selectedTimelineItem"

    .prologue
    .line 854
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 855
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Ljava/lang/String;)Z

    .line 869
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 857
    :cond_1
    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 858
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    .line 860
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 861
    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 862
    :cond_2
    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 864
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const-string v3, "timeline_id"

    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/glass/timeline/TimelineActivityHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "selectedTimelineItem"

    .prologue
    .line 842
    const/16 v1, 0x11

    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 844
    .local v0, playVideoMenuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-virtual {p0, v0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    return v1
.end method

.method public onPlayVideo(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const-string v1, "video_url"

    invoke-static {v0, v1, p1}, Lcom/google/glass/timeline/TimelineActivityHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const/4 v0, 0x1

    return v0
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .parameter "timelineItem"

    .prologue
    .line 1350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z

    move-result v0

    return v0
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z
    .locals 6
    .parameter "timelineItem"
    .parameter "speakExtraContext"

    .prologue
    const/4 v3, 0x1

    .line 1363
    const/4 v0, 0x0

    .line 1364
    .local v0, isTranslationTts:Z
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1365
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    .line 1366
    .local v2, uriStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1367
    .local v1, uri:Landroid/net/Uri;
    const-string v4, "translate.google.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/translate_tts"

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 1369
    :goto_0
    if-eqz v0, :cond_0

    .line 1370
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/timeline/TimelineOptionsHelper$5;

    invoke-direct {v5, p0, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper$5;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1385
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #uriStr:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1386
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/timeline/TimelineOptionsHelper$6;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper$6;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1419
    :cond_1
    return v3

    .line 1367
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #uriStr:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 1282
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1287
    const-string v1, "REPLY_TO_ID"

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1289
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 1290
    return v4
.end method

.method public onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 1295
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1300
    const-string v1, "REPLY_TO_ID"

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const-string v1, "REPLY_ALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1302
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1303
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 1304
    return v4
.end method

.method public onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 4
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 895
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "application/glass+html"

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timeline item does not have a answer card HTML attachment"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    :goto_0
    return v0

    .line 901
    :cond_0
    new-instance v0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper$1;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    .line 933
    goto :goto_0
.end method

.method public onSendMessage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 12
    .parameter "timelineItem"
    .parameter "menuItem"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1309
    sget-object v8, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Entering send message flow from timeline item."

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1311
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v10, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1315
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v8}, Lcom/google/glass/app/GlassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1317
    .local v0, companionIntent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1318
    .local v3, isCompanionConnected:Z
    if-eqz v0, :cond_0

    .line 1319
    const-string v8, "com.google.glass.extra.STATE"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1326
    :cond_0
    iget-object v8, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    .line 1327
    .local v1, displayName:Ljava/lang/String;
    iget-object v8, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v5, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    .line 1328
    .local v5, toId:Ljava/lang/String;
    const/4 v4, -0x1

    .line 1330
    .local v4, messageType:I
    if-eqz v3, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1331
    const/4 v4, 0x2

    .line 1336
    :goto_0
    if-eqz v5, :cond_1

    if-nez v1, :cond_3

    .line 1337
    :cond_1
    sget-object v6, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Send message initiated but no contact given, bailing."

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 1345
    :goto_1
    return v6

    .line 1333
    :cond_2
    const/4 v4, 0x1

    .line 1334
    iget-object v8, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v5, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    goto :goto_0

    .line 1340
    :cond_3
    sget-object v8, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Sending message to %s, %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v7

    aput-object v1, v10, v6

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1341
    const/16 v7, 0x8

    invoke-static {v7, v4, v5, v1}, Lcom/google/glass/voice/VoiceMessageHelper;->createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1343
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "should_finish_turn_screen_off"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1344
    iget-object v7, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v7, v2}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onShare(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z
    .locals 9
    .parameter "action"
    .parameter "selectedTimelineItem"
    .parameter "originLogData"

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1000
    sget-object v6, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1003
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v6, v5}, Lcom/google/glass/share/ShareActivityHelper;->getBaseShareActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 1004
    .local v3, shareMenuIntent:Landroid/content/Intent;
    const-string v6, "item_id"

    new-instance v7, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v7, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1006
    const-string v6, "update_timeline_share"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1007
    const-string v6, "animateToTimelineItem"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1013
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 1014
    .local v4, sharingFeatures:[I
    if-nez v4, :cond_0

    .line 1016
    .local v0, allowVoiceAnnotation:Z
    :goto_0
    const-string v6, "voice_annotation"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1020
    const-string v6, "origin_log_data"

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    const/16 v6, 0x15

    if-ne v6, p1, :cond_1

    .line 1025
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/glass/entity/EntityCache;->getMatchingSendTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1033
    .local v1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1034
    const-string v6, "valid_share_target_count"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1036
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "valid_share_target"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v6}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1014
    .end local v0           #allowVoiceAnnotation:Z
    .end local v1           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v2           #i:I
    :cond_0
    invoke-static {v4, v0}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v0

    goto :goto_0

    .line 1026
    .restart local v0       #allowVoiceAnnotation:Z
    :cond_1
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1027
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/glass/entity/EntityCache;->getMatchingShareMenuGroupTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    goto :goto_1

    .line 1030
    .end local v1           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_2
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/glass/entity/EntityCache;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    goto :goto_1

    .line 1042
    :cond_3
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v6, v3, v8}, Lcom/google/glass/app/GlassActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1043
    return v8
.end method

.method public onShowRecipients(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v4, 0x1

    .line 1051
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/share/ShareActivityHelper;->getBaseShareActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 1053
    .local v1, shareMenuIntent:Landroid/content/Intent;
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1054
    const-string v2, "valid_share_target_count"

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "valid_share_target"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    .end local v0           #i:I
    :cond_0
    const-string v2, "disable_selection"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1063
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v2, v1}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 1064
    return v4
.end method

.method public onVoiceCall(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v0, 0x0

    .line 1105
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "In a call or hangout, not initiating a new one."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 1112
    :goto_0
    return v0

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    .line 1112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onVolume(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "selectedItem"

    .prologue
    .line 792
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 793
    .local v0, selectedMenuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v1, 0x13

    iget v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    if-ne v1, v2, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVolume()Z

    move-result v1

    .line 796
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
