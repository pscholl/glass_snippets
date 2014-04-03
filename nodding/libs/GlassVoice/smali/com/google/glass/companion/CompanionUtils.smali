.class public Lcom/google/glass/companion/CompanionUtils;
.super Ljava/lang/Object;
.source "CompanionUtils.java"


# static fields
.field private static final NOTIFY_LATENCY_MS:J = 0x2932e00L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 168
    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    .line 169
    .local v3, text:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 170
    sget-object v4, Lcom/google/glass/companion/CompanionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Couldn\'t append Glass signature to null text"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .end local p1
    :goto_0
    return-object p1

    .line 175
    .restart local p1
    :cond_0
    sget v4, Lcom/google/glass/common/R$string;->timeline_sms_signature:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, signature:Ljava/lang/String;
    sget v4, Lcom/google/glass/common/R$string;->timeline_sms_signature_format:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, signedText:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 184
    .local v0, copied:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    move-object p1, v0

    .line 185
    goto :goto_0
.end method

.method public static generateSmsSpeakableText(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "displayName"
    .parameter "body"
    .parameter "isOutgoingMessage"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, speakableText:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local p0
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    .restart local p0
    :cond_1
    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Unknown person"

    .end local p0
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const-string v1, " Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getCompanionSmsTimelineItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 10
    .parameter "context"
    .parameter "body"
    .parameter "displayName"
    .parameter "sender"
    .parameter "timestamp"
    .parameter "isNativeSms"
    .parameter "isOutgoingMessage"

    .prologue
    .line 87
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "companion:"

    new-instance v8, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, v6, v7, v8}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItem(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v5

    .line 92
    .local v5, timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 93
    .local v2, recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iput-object p2, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "companion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p6, :cond_1

    const-string v6, "com.android.mms"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, smsCompanionwareId:Ljava/lang/String;
    iput-object v4, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    .line 98
    iput-object p3, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    .line 99
    iput-object p3, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    .line 101
    if-eqz p7, :cond_3

    .line 102
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v6, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v3, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 109
    .end local v3           #shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :goto_2
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    .line 110
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    .line 111
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    .line 113
    iput-object p1, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$string;->sms_speakable_type:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    .line 115
    move/from16 v0, p7

    invoke-static {p2, p1, v0}, Lcom/google/glass/companion/CompanionUtils;->generateSmsSpeakableText(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    .line 117
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/google/glass/timeline/TimelineHelper;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 118
    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/google/glass/timeline/TimelineHelper;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 119
    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/google/glass/timeline/TimelineHelper;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 120
    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/glass/timeline/TimelineHelper;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 123
    if-nez p7, :cond_0

    const-wide/32 v6, 0x2932e00

    add-long/2addr v6, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 124
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    .line 125
    .local v1, notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    const/16 v6, 0xa

    iput v6, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    .line 129
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    .line 130
    iput-object v1, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 133
    .end local v1           #notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    :cond_0
    return-object v5

    .line 94
    .end local v4           #smsCompanionwareId:Ljava/lang/String;
    :cond_1
    const-string v6, "com.google.android.apps.googlevoice"

    goto/16 :goto_0

    .line 102
    .restart local v4       #smsCompanionwareId:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 107
    :cond_3
    iput-object v2, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_2
.end method

.method public static getComponentFromSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "source"

    .prologue
    .line 64
    if-eqz p0, :cond_0

    const-string v0, "companion:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "companion:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lcom/google/glass/companion/CompanionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "not a companion component."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMajorVersion(I)I
    .locals 1
    .parameter "version"

    .prologue
    .line 57
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getMinorVersion(I)I
    .locals 1
    .parameter "version"

    .prologue
    .line 50
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getSmsBundleId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/util/HashUtil;->hashPiiField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSmsCreator(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4
    .parameter "context"

    .prologue
    .line 238
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 241
    .local v1, settingsSecure:Lcom/google/glass/util/SettingsSecure;
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 245
    .local v2, user:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v2, :cond_0

    .line 248
    invoke-static {v2}, Lcom/google/glass/entity/EntityHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 253
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    .line 254
    return-object v0

    .line 250
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .restart local v0       #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    goto :goto_0
.end method

.method public static sendTimelineItem(Landroid/content/Context;Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "context"
    .parameter "companionProxy"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-static {p0, p2}, Lcom/google/glass/companion/CompanionUtils;->appendGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 264
    .local v1, itemToSend:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 266
    .local v0, envelope:Lcom/google/glass/companion/Proto$Envelope;
    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_0

    .line 267
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aput-object v1, v3, v4

    iput-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 275
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v3

    return v3

    .line 269
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-array v3, v4, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method public static stripGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 193
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    .line 194
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 195
    sget-object v2, Lcom/google/glass/companion/CompanionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Couldn\'t strip Glass signature from null text"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_0
    :goto_0
    return-object p1

    .line 199
    :cond_1
    sget v2, Lcom/google/glass/common/R$string;->timeline_sms_signature:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, signature:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public static updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;ILcom/google/glass/timeline/TimelineHelper;Z)V
    .locals 6
    .parameter "context"
    .parameter "itemId"
    .parameter "syncStatus"
    .parameter "timelineHelper"
    .parameter "async"

    .prologue
    .line 217
    sget-object v1, Lcom/google/glass/companion/CompanionUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Updating sync status of item %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance v0, Lcom/google/glass/companion/CompanionUtils$1;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/google/glass/companion/CompanionUtils$1;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Ljava/lang/String;I)V

    .line 227
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    if-eqz p4, :cond_0

    .line 228
    invoke-virtual {p3, v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p3, v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    goto :goto_0
.end method
