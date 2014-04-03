.class public Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
.super Ljava/lang/Object;
.source "Greco3EngineManager.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/embedded/Greco3EngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resources"
.end annotation


# instance fields
.field final configFile:Ljava/lang/String;

.field final grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

.field final locale:Ljava/lang/String;

.field final mode:Lcom/google/android/speech/embedded/Greco3Mode;

.field final paths:[Ljava/lang/String;

.field final resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3ResourceManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;[Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 0
    .parameter "resources"
    .parameter "configFile"
    .parameter "locale"
    .parameter "grammarType"
    .parameter "mode"
    .parameter "paths"
    .parameter "languagePack"

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;

    .line 405
    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->configFile:Ljava/lang/String;

    .line 406
    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    .line 407
    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 408
    iput-object p5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 409
    iput-object p6, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->paths:[Ljava/lang/String;

    .line 410
    iput-object p7, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 411
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 415
    instance-of v2, p1, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    if-nez v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 419
    check-cast v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 420
    .local v0, other:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    iget-object v3, v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v3, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;

    iget-object v3, v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method isEquivalentTo(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;)Z
    .locals 1
    .parameter "locale"
    .parameter "grammarType"
    .parameter "mode"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
