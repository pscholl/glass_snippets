.class public Lcom/google/glass/voice/VoiceConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final B:Ljava/util/Map;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final d:Lcom/google/glass/voice/VoiceConfig;

.field public static final e:Lcom/google/glass/voice/VoiceConfig;

.field public static final f:Lcom/google/glass/voice/VoiceConfig;

.field public static final g:Lcom/google/glass/voice/VoiceConfig;

.field public static final h:Lcom/google/glass/voice/VoiceConfig;

.field public static final i:Lcom/google/glass/voice/VoiceConfig;

.field public static final j:Lcom/google/glass/voice/VoiceConfig;

.field public static final k:Lcom/google/glass/voice/VoiceConfig;

.field public static final l:Lcom/google/glass/voice/VoiceConfig;

.field public static final m:Lcom/google/glass/voice/VoiceConfig;

.field public static final n:Lcom/google/glass/voice/VoiceConfig;

.field public static final o:Lcom/google/glass/voice/VoiceConfig;

.field public static final p:Lcom/google/glass/voice/VoiceConfig;

.field public static final q:Lcom/google/glass/voice/VoiceConfig;

.field public static final r:Lcom/google/glass/voice/VoiceConfig;

.field public static final s:Lcom/google/glass/voice/VoiceConfig;

.field public static final t:Lcom/google/glass/voice/VoiceConfig;

.field public static final u:Lcom/google/glass/voice/VoiceConfig;

.field public static final v:Lcom/google/glass/voice/VoiceConfig;


# instance fields
.field private final A:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/glass/voice/VoiceConfig$Type;

.field public final c:Z

.field private final w:[Lcom/google/glass/voice/VoiceConfig;

.field private final x:[Ljava/lang/String;

.field private final y:[Ljava/lang/String;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->B:Ljava/util/Map;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "OFF"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->NONE:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->d:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "GUARD"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->e:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "MAIN_MENU"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->f:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "GUARD_CONSERVATIVE"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->g:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "CONTACTS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->h:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "PLUS_SHARE_TARGETS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->i:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "PHOTO_SHARE_TARGETS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->j:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VIDEO_SHARE_TARGETS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->k:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "NOTIFICATION"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->l:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "PHOTO_REVIEW"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->m:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "PHOTO_SHARE"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->n:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "DIRECTIONS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->o:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "INCOMING_CALL"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->p:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VOICE_SEARCH"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->q:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "SOUND_SEARCH"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->r:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "NAVIGATION"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->s:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VOICE_RECORD"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->t:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VOICE_CORRECTION_HOTWORD"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "confirm"

    aput-object v6, v5, v3

    const-string v6, "replace"

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v7, "delete"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "next"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "previous"

    aput-object v7, v5, v6

    const/high16 v7, -0x8000

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->u:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VOICE_CORRECTION"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->v:Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/z;

    invoke-direct {v0}, Lcom/google/glass/voice/z;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceConfig;->b:Lcom/google/glass/voice/VoiceConfig$Type;

    iput-boolean p3, p0, Lcom/google/glass/voice/VoiceConfig;->c:Z

    new-array v0, v1, [Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->y:[Ljava/lang/String;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/voice/VoiceConfig;->z:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->A:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System config names must be unique.  Cannot create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->B:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceConfig;->b:Lcom/google/glass/voice/VoiceConfig$Type;

    iput-boolean p3, p0, Lcom/google/glass/voice/VoiceConfig;->c:Z

    if-nez p4, :cond_0

    new-array p4, v0, [Lcom/google/glass/voice/VoiceConfig;

    :cond_0
e   iput-object p4, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    if-nez p5, :cond_1

    new-array p5, v0, [Ljava/lang/String;

    :cond_1
    iput-object p5, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    if-nez p6, :cond_2

    new-array p6, v0, [Ljava/lang/String;

    :cond_2
    iput-object p6, p0, Lcom/google/glass/voice/VoiceConfig;->y:[Ljava/lang/String;

    iput p7, p0, Lcom/google/glass/voice/VoiceConfig;->z:I

    iput-object p8, p0, Lcom/google/glass/voice/VoiceConfig;->A:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;->b()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid voice configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->B:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 9

    const/high16 v8, -0x8000

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfig;->a(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    array-length v0, v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->y:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/glass/voice/VoiceConfig;->z:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    array-length v5, v4

    move v3, v1

    move v0, v2

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    invoke-static {v6}, Lcom/google/glass/voice/VoiceConfig;->a(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, v6, Lcom/google/glass/voice/VoiceConfig;->b:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v7, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    if-eq v6, v7, :cond_3

    move v0, v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    array-length v3, v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/google/glass/voice/VoiceConfig;->z:I

    if-ne v3, v8, :cond_5

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->A:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    array-length v3, v3

    if-le v3, v2, :cond_7

    :cond_6
    if-eqz v0, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method private c()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/glass/voice/VoiceConfig;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->b:Lcom/google/glass/voice/VoiceConfig$Type;

    iget-object v3, p1, Lcom/google/glass/voice/VoiceConfig;->b:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/VoiceConfig$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->y:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/VoiceConfig;->y:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/glass/voice/VoiceConfig;->z:I

    iget v3, p1, Lcom/google/glass/voice/VoiceConfig;->z:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1}, Lcom/google/glass/voice/VoiceConfig;->c()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->y:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/voice/VoiceConfig;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfig;->a(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ""

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->w:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[systemConfigs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customPhrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->y:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disambiguationCommandType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/voice/VoiceConfig;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", literal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfig;->a(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    aput-object v3, v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->b:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceConfig$Type;->ordinal()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Lcom/google/glass/voice/VoiceConfig;->c:Z

    if-eqz v3, :cond_1

    :goto_1
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->x:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->y:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v1, p0, Lcom/google/glass/voice/VoiceConfig;->z:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;->c()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
