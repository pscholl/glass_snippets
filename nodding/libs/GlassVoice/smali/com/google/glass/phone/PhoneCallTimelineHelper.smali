.class public Lcom/google/glass/phone/PhoneCallTimelineHelper;
.super Ljava/lang/Object;
.source "PhoneCallTimelineHelper.java"


# static fields
.field public static final PHONE_CALL_ATTACHMENT_FILE_NAME:Ljava/lang/String; = "%s.call"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WAKE_LOCK_TIMEOUT_MS:J = 0x2710L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 54
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V

    return-void
.end method

.method private addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V
    .locals 8
    .parameter "item"
    .parameter "phoneNumber"

    .prologue
    const/4 v7, 0x0

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v2, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 180
    .local v0, call:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v5, 0x8

    iput v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 181
    iput-object p2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    .line 182
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 189
    .local v4, replyMenuValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/common/R$string;->phone_call_reply_menu_display_name:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    .line 190
    iput v7, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    .line 192
    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 193
    .local v3, reply:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v5, 0x2

    iput v5, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 194
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aput-object v4, v5, v7

    iput-object v5, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 195
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v0           #call:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v3           #reply:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v4           #replyMenuValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_0
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 198
    .local v1, delete:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v5, 0x3

    iput v5, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 199
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineHelper;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V

    .line 202
    return-void
.end method

.method public static createAttachment(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 2
    .parameter "filePath"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 213
    .local v0, atachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    const-string v1, "application/vnd.google-glass.phone-call-proto"

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType:Ljava/lang/String;

    .line 214
    iput-object p0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    .line 215
    return-object v0
.end method


# virtual methods
.method createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItem(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 293
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    .line 295
    const/4 v1, 0x6

    iput v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    .line 296
    return-object v0
.end method

.method protected formatDuration(J)Ljava/lang/String;
    .locals 14
    .parameter "elapsedMilliseconds"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 257
    const-wide/16 v3, 0x0

    .line 258
    .local v3, hours:J
    const-wide/16 v5, 0x0

    .line 259
    .local v5, minutes:J
    const-wide/16 v7, 0x0

    .line 261
    .local v7, seconds:J
    const-wide/16 v9, 0x3e8

    div-long v0, p1, v9

    .line 263
    .local v0, elapsedSeconds:J
    const-wide/16 v9, 0x3c

    cmp-long v9, v0, v9

    if-ltz v9, :cond_0

    .line 264
    const-wide/16 v9, 0x3c

    div-long v5, v0, v9

    .line 265
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v5

    sub-long/2addr v0, v9

    .line 267
    :cond_0
    move-wide v7, v0

    .line 269
    const-wide/16 v9, 0x3c

    cmp-long v9, v5, v9

    if-ltz v9, :cond_1

    .line 270
    const-wide/16 v9, 0x3c

    div-long v3, v5, v9

    .line 271
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v3

    sub-long/2addr v5, v9

    .line 275
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_2

    .line 276
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_hours_minutes_seconds:I

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, formattedText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 278
    .end local v2           #formattedText:Ljava/lang/String;
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_3

    .line 279
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_minutes_seconds:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedText:Ljava/lang/String;
    goto :goto_0

    .line 282
    .end local v2           #formattedText:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_seconds:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedText:Ljava/lang/String;
    goto :goto_0
.end method

.method public getNameFromEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 3
    .parameter "entity"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 167
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method protected getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    return-object v0
.end method

.method protected getUnkownEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 237
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    .line 238
    return-object v0
.end method

.method public insertCallAsync(Lcom/google/glass/phone/PhoneCall;)V
    .locals 3
    .parameter "call"

    .prologue
    .line 64
    new-instance v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;-><init>(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/glass/phone/PhoneCall;)V

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method

.method protected sanitizeEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "entity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 226
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getUnkownEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object p1

    goto :goto_0
.end method
