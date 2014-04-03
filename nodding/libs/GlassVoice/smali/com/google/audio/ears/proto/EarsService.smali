.class public final Lcom/google/audio/ears/proto/EarsService;
.super Ljava/lang/Object;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/audio/ears/proto/EarsService$ProductOffer;,
        Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;,
        Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;,
        Lcom/google/audio/ears/proto/EarsService$TvResult;,
        Lcom/google/audio/ears/proto/EarsService$MusicResult;,
        Lcom/google/audio/ears/proto/EarsService$EarsResult;,
        Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;,
        Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;,
        Lcom/google/audio/ears/proto/EarsService$MediaPacket;,
        Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;,
        Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;,
        Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    }
.end annotation


# static fields
.field public static final EARS_RESULT_TYPE_FAMOUS_SPEECH:I = 0x2

.field public static final EARS_RESULT_TYPE_HUMMING:I = 0x3

.field public static final EARS_RESULT_TYPE_MUSIC:I = 0x0

.field public static final EARS_RESULT_TYPE_TV:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
