.class public final enum Lcom/google/android/speech/embedded/Greco3Mode;
.super Ljava/lang/Enum;
.source "Greco3Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/speech/embedded/Greco3Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/speech/embedded/Greco3Mode; = null

.field private static final ASCII_SUFFIX:Ljava/lang/String; = ".ascii_proto"

.field public static final enum COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;


# instance fields
.field private final mFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "DICTATION"

    const-string v2, "dictation"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 9
    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "ENDPOINTER_VOICESEARCH"

    const-string v2, "endpointer_voicesearch"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 10
    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "ENDPOINTER_DICTATION"

    const-string v2, "endpointer_dictation"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 11
    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "HOTWORD"

    const-string v2, "google_hotword"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 12
    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "COMPILER"

    const-string v2, "compile_grammar"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 13
    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "GRAMMAR"

    const/4 v2, 0x5

    const-string v3, "grammar"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->$VALUES:[Lcom/google/android/speech/embedded/Greco3Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3Mode;->mFileName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static isAsciiConfiguration(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ascii_proto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/io/File;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 5
    .parameter "file"

    .prologue
    .line 37
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Mode;->values()[Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/speech/embedded/Greco3Mode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 38
    .local v3, type:Lcom/google/android/speech/embedded/Greco3Mode;
    invoke-virtual {v3, p0}, Lcom/google/android/speech/embedded/Greco3Mode;->matches(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    .end local v3           #type:Lcom/google/android/speech/embedded/Greco3Mode;
    :goto_1
    return-object v3

    .line 37
    .restart local v3       #type:Lcom/google/android/speech/embedded/Greco3Mode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v3           #type:Lcom/google/android/speech/embedded/Greco3Mode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->$VALUES:[Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-virtual {v0}, [Lcom/google/android/speech/embedded/Greco3Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method


# virtual methods
.method public isEndpointerMode()Z
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, fileName:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 30
    .local v1, separator:I
    if-lez v1, :cond_0

    .line 31
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3Mode;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
