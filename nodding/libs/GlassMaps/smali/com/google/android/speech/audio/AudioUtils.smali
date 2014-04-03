.class public final Lcom/google/android/speech/audio/AudioUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/speech/audio/AudioUtils;->a:Ljava/util/UUID;

    return-void
.end method
