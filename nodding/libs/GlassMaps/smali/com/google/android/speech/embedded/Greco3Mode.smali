.class public final enum Lcom/google/android/speech/embedded/Greco3Mode;
.super Ljava/lang/Enum;


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

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "DICTATION"

    const-string v2, "dictation"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "ENDPOINTER_VOICESEARCH"

    const-string v2, "endpointer_voicesearch"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "ENDPOINTER_DICTATION"

    const-string v2, "endpointer_dictation"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "HOTWORD"

    const-string v2, "google_hotword"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "COMPILER"

    const-string v2, "compile_grammar"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v1, "GRAMMAR"

    const/4 v2, 0x5

    const-string v3, "grammar"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3Mode;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public static isAsciiConfiguration(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ascii_proto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/io/File;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 5

    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Mode;->values()[Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, p0}, Lcom/google/android/speech/embedded/Greco3Mode;->matches(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1

    const-class v0, Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->$VALUES:[Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-virtual {v0}, [Lcom/google/android/speech/embedded/Greco3Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method


# virtual methods
.method public final isEndpointerMode()Z
    .locals 1

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

.method public final matches(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3Mode;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
