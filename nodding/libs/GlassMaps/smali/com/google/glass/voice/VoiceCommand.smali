.class public Lcom/google/glass/voice/VoiceCommand;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final A:Lcom/google/glass/voice/VoiceCommand;

.field private static final B:Ljava/util/regex/Pattern;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:Ljava/util/List;

.field public static final b:Lcom/google/common/collect/az;

.field public static final c:Lcom/google/glass/voice/VoiceCommand;

.field public static final d:Lcom/google/glass/voice/VoiceCommand;

.field public static final e:Lcom/google/glass/voice/VoiceCommand;

.field public static final f:Lcom/google/glass/voice/VoiceCommand;

.field public static final g:Lcom/google/glass/voice/VoiceCommand;

.field public static final h:Lcom/google/glass/voice/VoiceCommand;

.field public static final i:Lcom/google/glass/voice/VoiceCommand;

.field public static final j:Lcom/google/glass/voice/VoiceCommand;

.field public static final k:Lcom/google/glass/voice/VoiceCommand;

.field public static final l:Lcom/google/glass/voice/VoiceCommand;

.field public static final m:Lcom/google/glass/voice/VoiceCommand;

.field public static final n:Lcom/google/glass/voice/VoiceCommand;

.field public static final o:Lcom/google/glass/voice/VoiceCommand;

.field public static final p:Lcom/google/glass/voice/VoiceCommand;

.field public static final q:Lcom/google/glass/voice/VoiceCommand;

.field public static final r:Lcom/google/glass/voice/VoiceCommand;

.field public static final s:Lcom/google/glass/voice/VoiceCommand;

.field public static final t:Lcom/google/glass/voice/VoiceCommand;

.field public static final u:Lcom/google/glass/voice/VoiceCommand;

.field public static final v:Lcom/google/glass/voice/VoiceCommand;

.field public static final w:Lcom/google/glass/voice/VoiceCommand;

.field public static final x:Lcom/google/glass/voice/VoiceCommand;

.field public static final y:Lcom/google/glass/voice/VoiceCommand;

.field public static final z:Lcom/google/glass/voice/VoiceCommand;


# instance fields
.field private final C:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->b:Lcom/google/common/collect/az;

    const-string v0, "ok glass"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->c:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "google"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->d:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "take a picture"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->e:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "record video"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->f:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "get directions to"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->g:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "send message to"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->h:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "make a call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->i:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "make a video call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->j:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "read aloud"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->k:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "reply"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->l:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "video"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->m:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "share with"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->n:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "add a caption"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->o:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "answer call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->p:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "decline call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->q:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "show route overview"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->r:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "stop directions"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->s:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "take a note"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->t:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "post an update"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->u:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "check me in"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->v:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "add a calendar event"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->w:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "find a recipe"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->x:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "find a place"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->y:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "explore nearby"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->z:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, "listen to"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->A:Lcom/google/glass/voice/VoiceCommand;

    const-string v0, ".*_tag_(.*?)(?=\\s|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->B:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/glass/voice/y;

    invoke-direct {v0}, Lcom/google/glass/voice/y;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2

    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;
    .locals 3

    invoke-static {p0}, Lcom/google/glass/voice/VoiceCommand;->a(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->b:Lcom/google/common/collect/az;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/common/collect/az;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    return-object v0
.end method

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
    check-cast p1, Lcom/google/glass/voice/VoiceCommand;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
