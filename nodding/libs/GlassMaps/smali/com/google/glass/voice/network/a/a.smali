.class public final Lcom/google/glass/voice/network/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field static final a:Lcom/google/glass/util/CachedFilesManager$Type;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final b:[Ljava/lang/String;

.field private static final c:Lcom/google/glass/logging/i;

.field private static d:Lcom/google/glass/voice/network/a/a;

.field private static e:Landroid/media/MediaPlayer;

.field private static f:Ljava/util/HashSet;


# instance fields
.field private g:Lcom/google/glass/util/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/a/a;->c:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->AUDIO:Lcom/google/glass/util/CachedFilesManager$Type;

    sput-object v0, Lcom/google/glass/voice/network/a/a;->a:Lcom/google/glass/util/CachedFilesManager$Type;

    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "eo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ht"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sw"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "cy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/network/a/a;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/a/a;->f:Ljava/util/HashSet;

    sget-object v0, Lcom/google/glass/voice/network/a/a;->f:Ljava/util/HashSet;

    sget-object v1, Lcom/google/glass/voice/network/a/a;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/voice/network/a/b;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/a/b;-><init>(Lcom/google/glass/voice/network/a/a;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/a/a;->g:Lcom/google/glass/util/n;

    return-void
.end method

.method static synthetic a(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static a()Lcom/google/glass/voice/network/a/a;
    .locals 1

    sget-object v0, Lcom/google/glass/voice/network/a/a;->d:Lcom/google/glass/voice/network/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/voice/network/a/a;

    invoke-direct {v0}, Lcom/google/glass/voice/network/a/a;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/a/a;->d:Lcom/google/glass/voice/network/a/a;

    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/a/a;->d:Lcom/google/glass/voice/network/a/a;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/google/glass/a/a;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    sget-object v0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method static synthetic d()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/voice/network/a/a;->c:Lcom/google/glass/logging/i;

    return-object v0
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/a/a;->e:Landroid/media/MediaPlayer;

    return-void
.end method
