.class public Lcom/google/android/speech/params/RequestIdGenerator;
.super Ljava/lang/Object;
.source "RequestIdGenerator.java"


# static fields
.field public static final INSTANCE:Lcom/google/android/speech/params/RequestIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/speech/params/RequestIdGenerator;

    invoke-direct {v0}, Lcom/google/android/speech/params/RequestIdGenerator;-><init>()V

    sput-object v0, Lcom/google/android/speech/params/RequestIdGenerator;->INSTANCE:Lcom/google/android/speech/params/RequestIdGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public newRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
