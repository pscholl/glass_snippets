.class public Lcom/google/glass/voice/NativeAppVoiceConfigHelper;
.super Ljava/lang/Object;
.source "NativeAppVoiceConfigHelper.java"


# static fields
.field private static final instance:Lcom/google/glass/voice/NativeAppVoiceConfigHelper;


# instance fields
.field private currentCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAppConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;

    invoke-direct {v0}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;-><init>()V

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceConfigHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/google/glass/voice/NativeAppVoiceConfigHelper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceConfigHelper;

    return-object v0
.end method

.method private getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTags(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "commandStrings"

    .prologue
    .line 53
    array-length v3, p2

    new-array v2, v3, [Ljava/lang/String;

    .line 54
    .local v2, tags:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 55
    aget-object v0, p2, v1

    .line 56
    .local v0, commandString:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0           #commandString:Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected createNativeAppsConfig(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->currentCommands:Ljava/util/List;

    .line 38
    iget-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->currentCommands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->nativeAppConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->currentCommands:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 42
    .local v0, commandStrings:[Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getTags(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, commandTags:[Ljava/lang/String;
    new-instance v2, Lcom/google/glass/voice/VoiceConfig;

    const-string v3, "NATIVE_APP_COMMANDS"

    invoke-direct {v2, v3, v0, v1}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->nativeAppConfig:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method public getNativeAppsConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->nativeAppConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->currentCommands:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->createNativeAppsConfig(Landroid/content/Context;)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->nativeAppConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method
