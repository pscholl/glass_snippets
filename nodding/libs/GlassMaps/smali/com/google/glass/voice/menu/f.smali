.class public abstract Lcom/google/glass/voice/menu/f;
.super Lcom/google/glass/voice/menu/n;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:I

.field public final c:Lcom/google/glass/voice/VoiceCommand;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/f;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method private varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/voice/menu/e;)V
    .locals 1

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/n;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    iput p2, p0, Lcom/google/glass/voice/menu/f;->b:I

    iput p3, p0, Lcom/google/glass/voice/menu/f;->e:I

    iput p4, p0, Lcom/google/glass/voice/menu/f;->f:I

    return-void
.end method

.method protected varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/voice/menu/e;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/f;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/voice/menu/e;)V

    return-void
.end method

.method private static a(Lcom/google/glass/voice/VoiceCommand;ZLcom/google/glass/voice/menu/VoiceMenuEnvironment;)V
    .locals 4

    invoke-static {p0}, Lcom/google/glass/voice/menu/f;->b(Lcom/google/glass/voice/VoiceCommand;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/menu/f;->a:Lcom/google/glass/logging/i;

    const-string v1, "No user event log data id for command: %s; ignoring."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    :goto_1
    invoke-interface {p2, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_1
.end method

.method private static b(Lcom/google/glass/voice/VoiceCommand;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/glass/voice/menu/f;->a:Lcom/google/glass/logging/i;

    const-string v1, "null command in getUserEventDataId!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->d:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->e:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->f:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "4"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->j:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "11"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->g:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "5"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->i:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "7"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->h:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "6"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->b:Lcom/google/common/collect/az;

    invoke-interface {v0, p0}, Lcom/google/common/collect/az;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "28"

    goto :goto_0

    :cond_8
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/glass/voice/menu/f;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/voice/menu/f;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    invoke-static {v0, p2, p1}, Lcom/google/glass/voice/menu/f;->a(Lcom/google/glass/voice/VoiceCommand;ZLcom/google/glass/voice/menu/VoiceMenuEnvironment;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->a(Lcom/google/glass/voice/menu/n;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

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
    check-cast p1, Lcom/google/glass/voice/menu/f;

    iget-object v2, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    iget-object v3, p1, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/glass/voice/menu/f;->b:I

    iget v3, p1, Lcom/google/glass/voice/menu/f;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/voice/menu/f;->b:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainMenuCommandItem [command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/f;->c:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
