.class public Lcom/google/android/speech/embedded/Greco3GrammarCompiler;
.super Ljava/lang/Object;
.source "Greco3GrammarCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/Greco3GrammarCompiler$1;,
        Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field public static NUM_GENERATED_FILES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "G3GrammarCompiler"


# instance fields
.field private mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

.field private final mConfigFile:Ljava/lang/String;

.field private final mSearchPaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    sput v0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->NUM_GENERATED_FILES:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "configFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, searchPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mConfigFile:Ljava/lang/String;

    .line 49
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mSearchPaths:[Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mSearchPaths:[Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "abnfInput"
    .parameter "outputPath"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 88
    .local v0, start:J
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    invoke-virtual {v3, p1}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->compileAbnf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/grammar_clg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/grammar_symbols"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->writeClgFst(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/semantic_fst"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/semantic_symbols"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->writeSemanticFst(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v2, "G3GrammarCompiler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compilation complete, time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    invoke-virtual {v0}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->delete()V

    .line 56
    return-void
.end method

.method public init()Z
    .locals 6

    .prologue
    .line 59
    new-instance v3, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;-><init>(Lcom/google/android/speech/embedded/Greco3GrammarCompiler$1;)V

    iput-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    .line 62
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mConfigFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/speech/embedded/Greco3Mode;->isAsciiConfiguration(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mConfigFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mSearchPaths:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->initFromFile(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 66
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mConfigFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 67
    .local v0, fileBytes:[B
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mSearchPaths:[Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->initFromProto([B[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, init:Z
    goto :goto_0

    .line 70
    .end local v0           #fileBytes:[B
    .end local v1           #init:Z
    :catch_0
    move-exception v2

    .line 71
    .local v2, ioe:Ljava/io/IOException;
    const-string v3, "G3GrammarCompiler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O Exception reading binary config file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method
