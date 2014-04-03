.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ViewType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SmsType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncProtocol;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncStatus;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SourceType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# instance fields
.field public attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field public bundleId:Ljava/lang/String;

.field private cachedSize:I

.field public canonicalUrl:Ljava/lang/String;

.field public cloudSyncProtocol:I

.field public cloudSyncStatus:I

.field public companionSyncProtocol:I

.field public companionSyncStatus:I

.field public creationTime:Ljava/lang/Long;

.field public creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field public displayTime:Ljava/lang/Long;

.field public expirationTime:Ljava/lang/Long;

.field public html:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public inReplyTo:Ljava/lang/String;

.field public isBundleCover:Ljava/lang/Boolean;

.field public isDeleted:Ljava/lang/Boolean;

.field public isPinned:Ljava/lang/Boolean;

.field public linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

.field public location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

.field public menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

.field public modifiedTime:Ljava/lang/Long;

.field public notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

.field public pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

.field public pinScore:Ljava/lang/Integer;

.field public pinTime:Ljava/lang/Long;

.field public progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

.field public sendToPhoneUrl:Ljava/lang/String;

.field public shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field public sharingFeature:[I

.field public smsType:I

.field public source:Ljava/lang/String;

.field public sourceAccountId:Ljava/lang/String;

.field public sourceItemId:Ljava/lang/String;

.field public sourceType:I

.field public speakableText:Ljava/lang/String;

.field public speakableType:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 171
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    .line 180
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 183
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 198
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 201
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 204
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 207
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 210
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 213
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    .line 216
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    .line 219
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    .line 222
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    .line 225
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    .line 230
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    .line 233
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 236
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 239
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 538
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    .line 15
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 994
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 242
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    .line 244
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    .line 245
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    .line 246
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    .line 247
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    .line 248
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    .line 249
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    .line 250
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    .line 251
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    .line 252
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    .line 253
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    .line 254
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    .line 255
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    .line 257
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    .line 258
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 259
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 260
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    .line 263
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    .line 264
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    .line 265
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    .line 266
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 267
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 268
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 269
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 270
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 271
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    .line 272
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    .line 273
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    .line 274
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    .line 275
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    .line 276
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    .line 277
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    .line 278
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 279
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 280
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    .line 282
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    if-ne p1, p0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 288
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 289
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 290
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_c
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    if-nez v3, :cond_12

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_3

    :goto_10
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_11
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_12
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_13
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_14
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_15
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_16
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_3

    :goto_17
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v3, :cond_3

    :goto_18
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_19
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v3, :cond_1d

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v3, :cond_3

    :goto_1a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_e

    :cond_12
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_f

    :cond_13
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_11

    :cond_15
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_12

    :cond_16
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_13

    :cond_17
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_14

    :cond_18
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_15

    :cond_19
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_16

    :cond_1a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_17

    :cond_1b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_18

    :cond_1c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_19

    :cond_1d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1a
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    if-gez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSerializedSize()I

    .line 545
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    const/high16 v9, -0x8000

    .line 550
    const/4 v5, 0x0

    .line 551
    .local v5, size:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 552
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 555
    :cond_0
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    if-eqz v6, :cond_1

    .line 556
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 559
    :cond_1
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    if-eqz v6, :cond_2

    .line 560
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 563
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 564
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 567
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v6, :cond_4

    .line 568
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 571
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v6, :cond_5

    .line 572
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .line 573
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const/4 v6, 0x6

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 572
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 578
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 581
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 582
    const/16 v6, 0x8

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 585
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v6, :cond_8

    .line 586
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    .line 587
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    const/16 v6, 0x9

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 586
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 591
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v6, :cond_9

    .line 592
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 595
    :cond_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_a

    .line 596
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_a

    aget-object v2, v0, v3

    .line 597
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v6, 0xb

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 601
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    if-eq v6, v9, :cond_b

    .line 602
    const/16 v6, 0xc

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 605
    :cond_b
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    if-eq v6, v9, :cond_c

    .line 606
    const/16 v6, 0xd

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 609
    :cond_c
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    if-eq v6, v9, :cond_d

    .line 610
    const/16 v6, 0xe

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 613
    :cond_d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    if-eqz v6, :cond_e

    .line 614
    const/16 v6, 0xf

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 617
    :cond_e
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v6, :cond_f

    .line 618
    const/16 v6, 0x10

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 621
    :cond_f
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    if-eqz v6, :cond_10

    .line 622
    const/16 v6, 0x11

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 625
    :cond_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_11

    .line 626
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .restart local v0       #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_11

    aget-object v2, v0, v3

    .line 627
    .restart local v2       #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v6, 0x12

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 631
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_11
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 632
    const/16 v6, 0x13

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 635
    :cond_12
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    if-eq v6, v9, :cond_13

    .line 636
    const/16 v6, 0x14

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 639
    :cond_13
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    if-eqz v6, :cond_14

    .line 640
    const/16 v6, 0x15

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 643
    :cond_14
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    if-eqz v6, :cond_15

    .line 644
    const/16 v6, 0x17

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 647
    :cond_15
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    if-eqz v6, :cond_16

    .line 648
    const/16 v6, 0x18

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 651
    :cond_16
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 652
    const/16 v6, 0x19

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 655
    :cond_17
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    if-eqz v6, :cond_18

    .line 656
    const/16 v6, 0x1c

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 659
    :cond_18
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    if-eqz v6, :cond_19

    .line 660
    const/16 v6, 0x1d

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 663
    :cond_19
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    if-eqz v6, :cond_1a

    .line 664
    const/16 v6, 0x1e

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 667
    :cond_1a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    if-eqz v6, :cond_1b

    .line 668
    const/16 v6, 0x1f

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 671
    :cond_1b
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    if-eq v6, v9, :cond_1c

    .line 672
    const/16 v6, 0x21

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 675
    :cond_1c
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    if-eq v6, v9, :cond_1d

    .line 676
    const/16 v6, 0x22

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 679
    :cond_1d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    if-eqz v6, :cond_1e

    .line 680
    const/16 v6, 0x23

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 683
    :cond_1e
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    if-eqz v6, :cond_1f

    .line 684
    const/16 v6, 0x24

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 687
    :cond_1f
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    if-eqz v6, :cond_20

    .line 688
    const/16 v6, 0x25

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 691
    :cond_20
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    if-eqz v6, :cond_21

    .line 692
    const/16 v6, 0x26

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 695
    :cond_21
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    if-eqz v6, :cond_22

    .line 696
    const/16 v6, 0x27

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 699
    :cond_22
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    if-eq v6, v9, :cond_23

    .line 700
    const/16 v6, 0x28

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 703
    :cond_23
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v6, v6

    if-lez v6, :cond_25

    .line 704
    const/4 v1, 0x0

    .line 705
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v4, :cond_24

    aget v2, v0, v3

    .line 706
    .local v2, element:I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 705
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 709
    .end local v2           #element:I
    :cond_24
    add-int/2addr v5, v1

    .line 710
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 712
    .end local v0           #arr$:[I
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_25
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v6, :cond_26

    .line 713
    const/16 v6, 0x2a

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 716
    :cond_26
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v6, :cond_27

    .line 717
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v4, :cond_27

    aget-object v2, v0, v3

    .line 718
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    const/16 v6, 0x2b

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 717
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 722
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_27
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    .line 723
    return v5
.end method

.method public hashCode()I
    .locals 12

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v11, 0x20

    const/4 v3, 0x0

    .line 332
    const/16 v1, 0x11

    .line 333
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 334
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    .line 335
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    move v2, v3

    :goto_2
    add-int v1, v6, v2

    .line 336
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    if-nez v2, :cond_b

    move v2, v3

    :goto_3
    add-int v1, v6, v2

    .line 337
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    if-nez v2, :cond_c

    move v2, v3

    :goto_4
    add-int v1, v6, v2

    .line 338
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    if-nez v2, :cond_d

    move v2, v3

    :goto_5
    add-int v1, v6, v2

    .line 339
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    if-nez v2, :cond_e

    move v2, v3

    :goto_6
    add-int v1, v6, v2

    .line 340
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    if-nez v2, :cond_f

    move v2, v3

    :goto_7
    add-int v1, v6, v2

    .line 341
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    if-nez v2, :cond_10

    move v2, v3

    :goto_8
    add-int v1, v6, v2

    .line 342
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    if-nez v2, :cond_11

    move v2, v3

    :goto_9
    add-int v1, v6, v2

    .line 343
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    if-nez v6, :cond_13

    move v4, v3

    :cond_0
    :goto_a
    add-int v1, v2, v4

    .line 344
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 345
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    add-int v1, v2, v4

    .line 346
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v3

    :goto_c
    add-int v1, v4, v2

    .line 347
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v3

    :goto_d
    add-int v1, v4, v2

    .line 348
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v3

    :goto_e
    add-int v1, v4, v2

    .line 349
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_18

    move v2, v3

    :goto_f
    add-int v1, v4, v2

    .line 350
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_19

    mul-int/lit8 v1, v1, 0x1f

    .line 356
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    if-nez v2, :cond_1b

    move v2, v3

    :goto_10
    add-int v1, v4, v2

    .line 357
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    if-nez v2, :cond_1c

    move v2, v3

    :goto_11
    add-int v1, v4, v2

    .line 358
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    if-nez v2, :cond_1d

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 359
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    if-nez v2, :cond_1e

    move v2, v3

    :goto_13
    add-int v1, v4, v2

    .line 360
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    if-nez v2, :cond_1f

    move v2, v3

    :goto_14
    add-int v1, v4, v2

    .line 361
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    if-nez v2, :cond_20

    move v2, v3

    :goto_15
    add-int v1, v4, v2

    .line 362
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v2, :cond_21

    mul-int/lit8 v1, v1, 0x1f

    .line 368
    :cond_2
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v2, :cond_23

    move v2, v3

    :goto_16
    add-int v1, v4, v2

    .line 369
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v2, :cond_24

    mul-int/lit8 v1, v1, 0x1f

    .line 375
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v2, :cond_26

    mul-int/lit8 v1, v1, 0x1f

    .line 381
    :cond_4
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v2, :cond_28

    move v2, v3

    :goto_17
    add-int v1, v4, v2

    .line 382
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    add-int v1, v2, v4

    .line 383
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    add-int v1, v2, v4

    .line 384
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    add-int v1, v2, v4

    .line 385
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    add-int v1, v2, v4

    .line 386
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    add-int v1, v2, v4

    .line 387
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    if-nez v2, :cond_29

    move v2, v3

    :goto_18
    add-int v1, v4, v2

    .line 388
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    add-int v1, v2, v4

    .line 389
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-nez v2, :cond_2a

    mul-int/lit8 v1, v1, 0x1f

    .line 395
    :cond_5
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v2, :cond_2b

    move v2, v3

    :goto_19
    add-int v1, v4, v2

    .line 396
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v2, :cond_2c

    mul-int/lit8 v1, v1, 0x1f

    .line 402
    :cond_6
    return v1

    .line 333
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 334
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 335
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    goto/16 :goto_2

    :cond_a
    move v2, v5

    goto/16 :goto_2

    .line 336
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    ushr-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v2, v7

    goto/16 :goto_3

    .line 337
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    ushr-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v2, v7

    goto/16 :goto_4

    .line 338
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    ushr-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v2, v7

    goto/16 :goto_5

    .line 339
    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    ushr-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v2, v7

    goto/16 :goto_6

    .line 340
    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    ushr-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v2, v7

    goto/16 :goto_7

    .line 341
    :cond_10
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_8

    .line 342
    :cond_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v4

    goto/16 :goto_9

    :cond_12
    move v2, v5

    goto/16 :goto_9

    .line 343
    :cond_13
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    goto/16 :goto_a

    .line 344
    :cond_14
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 346
    :cond_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 347
    :cond_16
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 348
    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 349
    :cond_18
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 352
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 353
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    if-nez v2, :cond_1a

    move v2, v3

    :goto_1b
    add-int v1, v4, v2

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 353
    :cond_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_1b

    .line 356
    .end local v0           #i:I
    :cond_1b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 357
    :cond_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 358
    :cond_1d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 359
    :cond_1e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 360
    :cond_1f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 361
    :cond_20
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 364
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 365
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v2, v2, v0

    if-nez v2, :cond_22

    move v2, v3

    :goto_1d
    add-int v1, v4, v2

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 365
    :cond_22
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hashCode()I

    move-result v2

    goto :goto_1d

    .line 368
    .end local v0           #i:I
    :cond_23
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hashCode()I

    move-result v2

    goto/16 :goto_16

    .line 371
    :cond_24
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 372
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_25

    move v2, v3

    :goto_1f
    add-int v1, v4, v2

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 372
    :cond_25
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hashCode()I

    move-result v2

    goto :goto_1f

    .line 377
    .end local v0           #i:I
    :cond_26
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_20
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 378
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_27

    move v2, v3

    :goto_21
    add-int v1, v4, v2

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 378
    :cond_27
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hashCode()I

    move-result v2

    goto :goto_21

    .line 381
    .end local v0           #i:I
    :cond_28
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->hashCode()I

    move-result v2

    goto/16 :goto_17

    .line 387
    :cond_29
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_18

    .line 391
    :cond_2a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_22
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 392
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    aget v4, v4, v0

    add-int v1, v2, v4

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 395
    .end local v0           #i:I
    :cond_2b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->hashCode()I

    move-result v2

    goto/16 :goto_19

    .line 398
    :cond_2c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_23
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 399
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    if-nez v2, :cond_2d

    move v2, v3

    :goto_24
    add-int v1, v4, v2

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 399
    :cond_2d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->hashCode()I

    move-result v2

    goto :goto_24
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 731
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 732
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 736
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 737
    :sswitch_0
    return-object p0

    .line 742
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    goto :goto_0

    .line 746
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    goto :goto_0

    .line 750
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    goto :goto_0

    .line 754
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    goto :goto_0

    .line 758
    :sswitch_5
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 759
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 763
    :sswitch_6
    const/16 v6, 0x32

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 764
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v6, :cond_2

    move v1, v5

    .line 765
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 766
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v6, :cond_1

    .line 767
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 770
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 771
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v7, v6, v1

    .line 772
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 773
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 764
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v1, v6

    goto :goto_1

    .line 776
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v7, v6, v1

    .line 777
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 781
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    goto/16 :goto_0

    .line 785
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 789
    :sswitch_9
    const/16 v6, 0x4a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 790
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v6, :cond_5

    move v1, v5

    .line 791
    .restart local v1       #i:I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 792
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v6, :cond_4

    .line 793
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    :cond_4
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 796
    :goto_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    .line 797
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    aput-object v7, v6, v1

    .line 798
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 799
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 790
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v1, v6

    goto :goto_3

    .line 802
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    aput-object v7, v6, v1

    .line 803
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 807
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :sswitch_a
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 808
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 812
    :sswitch_b
    const/16 v6, 0x5a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 813
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v6, :cond_8

    move v1, v5

    .line 814
    .restart local v1       #i:I
    :goto_5
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 815
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_7

    .line 816
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    :cond_7
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 819
    :goto_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_9

    .line 820
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 821
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 822
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 819
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 813
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v1, v6

    goto :goto_5

    .line 825
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 826
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 830
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 831
    .local v4, temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    goto/16 :goto_0

    .line 835
    .end local v4           #temp:I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 836
    .restart local v4       #temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    goto/16 :goto_0

    .line 840
    .end local v4           #temp:I
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 841
    .restart local v4       #temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    goto/16 :goto_0

    .line 845
    .end local v4           #temp:I
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 849
    :sswitch_10
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 850
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 854
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    goto/16 :goto_0

    .line 858
    :sswitch_12
    const/16 v6, 0x92

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 859
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v6, :cond_b

    move v1, v5

    .line 860
    .restart local v1       #i:I
    :goto_7
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 861
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_a

    .line 862
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    :cond_a
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 865
    :goto_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_c

    .line 866
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 867
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 868
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 859
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v1, v6

    goto :goto_7

    .line 871
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_c
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 872
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 876
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    goto/16 :goto_0

    .line 880
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 881
    .restart local v4       #temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    goto/16 :goto_0

    .line 885
    .end local v4           #temp:I
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 889
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 893
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    goto/16 :goto_0

    .line 897
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    goto/16 :goto_0

    .line 901
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 905
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 909
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    goto/16 :goto_0

    .line 913
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 917
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 918
    .restart local v4       #temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    goto/16 :goto_0

    .line 922
    .end local v4           #temp:I
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 923
    .restart local v4       #temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    goto/16 :goto_0

    .line 927
    .end local v4           #temp:I
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    goto/16 :goto_0

    .line 931
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 935
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    goto/16 :goto_0

    .line 939
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    goto/16 :goto_0

    .line 943
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    goto/16 :goto_0

    .line 947
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 948
    .restart local v4       #temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    goto/16 :goto_0

    .line 952
    .end local v4           #temp:I
    :sswitch_25
    const/16 v6, 0x148

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 953
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v1, v6

    .line 954
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [I

    .line 955
    .local v2, newArray:[I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 956
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 957
    :goto_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_d

    .line 958
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    .line 959
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 957
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 962
    :cond_d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    goto/16 :goto_0

    .line 966
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[I
    :sswitch_26
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 967
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 971
    :sswitch_27
    const/16 v6, 0x15a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 972
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v6, :cond_f

    move v1, v5

    .line 973
    .restart local v1       #i:I
    :goto_a
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 974
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v6, :cond_e

    .line 975
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 977
    :cond_e
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 978
    :goto_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_10

    .line 979
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v7, v6, v1

    .line 980
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 981
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 972
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_f
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v1, v6

    goto :goto_a

    .line 984
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v7, v6, v1

    .line 985
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 732
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xba -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xe2 -> :sswitch_19
        0xe8 -> :sswitch_1a
        0xf2 -> :sswitch_1b
        0xfa -> :sswitch_1c
        0x108 -> :sswitch_1d
        0x110 -> :sswitch_1e
        0x118 -> :sswitch_1f
        0x120 -> :sswitch_20
        0x12a -> :sswitch_21
        0x132 -> :sswitch_22
        0x138 -> :sswitch_23
        0x140 -> :sswitch_24
        0x148 -> :sswitch_25
        0x152 -> :sswitch_26
        0x15a -> :sswitch_27
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v7, -0x8000

    .line 407
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 408
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 411
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 413
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 414
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 416
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 417
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 419
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_4

    .line 420
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 422
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_5

    .line 423
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 424
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 428
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 430
    :cond_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 431
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 433
    :cond_7
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v4, :cond_8

    .line 434
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 435
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    const/16 v4, 0x9

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 438
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v4, :cond_9

    .line 439
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 441
    :cond_9
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v4, :cond_a

    .line 442
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_a

    aget-object v1, v0, v2

    .line 443
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v4, 0xb

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 446
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    if-eq v4, v7, :cond_b

    .line 447
    const/16 v4, 0xc

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 449
    :cond_b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    if-eq v4, v7, :cond_c

    .line 450
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 452
    :cond_c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    if-eq v4, v7, :cond_d

    .line 453
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 455
    :cond_d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    if-eqz v4, :cond_e

    .line 456
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 458
    :cond_e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v4, :cond_f

    .line 459
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 461
    :cond_f
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    if-eqz v4, :cond_10

    .line 462
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 464
    :cond_10
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v4, :cond_11

    .line 465
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .restart local v0       #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 466
    .restart local v1       #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v4, 0x12

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 469
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_11
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 470
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 472
    :cond_12
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    if-eq v4, v7, :cond_13

    .line 473
    const/16 v4, 0x14

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 475
    :cond_13
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    if-eqz v4, :cond_14

    .line 476
    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 478
    :cond_14
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 479
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 481
    :cond_15
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 482
    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 484
    :cond_16
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 485
    const/16 v4, 0x19

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 487
    :cond_17
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 488
    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 490
    :cond_18
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    if-eqz v4, :cond_19

    .line 491
    const/16 v4, 0x1d

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 493
    :cond_19
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 494
    const/16 v4, 0x1e

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 496
    :cond_1a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 497
    const/16 v4, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 499
    :cond_1b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    if-eq v4, v7, :cond_1c

    .line 500
    const/16 v4, 0x21

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 502
    :cond_1c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    if-eq v4, v7, :cond_1d

    .line 503
    const/16 v4, 0x22

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 505
    :cond_1d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    if-eqz v4, :cond_1e

    .line 506
    const/16 v4, 0x23

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 508
    :cond_1e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    if-eqz v4, :cond_1f

    .line 509
    const/16 v4, 0x24

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 511
    :cond_1f
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 512
    const/16 v4, 0x25

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 514
    :cond_20
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 515
    const/16 v4, 0x26

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 517
    :cond_21
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    if-eqz v4, :cond_22

    .line 518
    const/16 v4, 0x27

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 520
    :cond_22
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    if-eq v4, v7, :cond_23

    .line 521
    const/16 v4, 0x28

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 523
    :cond_23
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v4, v4

    if-lez v4, :cond_24

    .line 524
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_4
    if-ge v2, v3, :cond_24

    aget v1, v0, v2

    .line 525
    .local v1, element:I
    const/16 v4, 0x29

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 528
    .end local v0           #arr$:[I
    .end local v1           #element:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_24
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v4, :cond_25

    .line 529
    const/16 v4, 0x2a

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 531
    :cond_25
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v4, :cond_26

    .line 532
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_5
    if-ge v2, v3, :cond_26

    aget-object v1, v0, v2

    .line 533
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    const/16 v4, 0x2b

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 536
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_26
    return-void
.end method
