.class final enum Lcom/google/android/searchcommon/util/FutureList$Mode;
.super Ljava/lang/Enum;
.source "FutureList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/searchcommon/util/FutureList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/searchcommon/util/FutureList$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/searchcommon/util/FutureList$Mode;

.field public static final enum ALL:Lcom/google/android/searchcommon/util/FutureList$Mode;

.field public static final enum ONLY_SUCCESSFUL:Lcom/google/android/searchcommon/util/FutureList$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/google/android/searchcommon/util/FutureList$Mode;

    const-string v1, "ONLY_SUCCESSFUL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/searchcommon/util/FutureList$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/searchcommon/util/FutureList$Mode;->ONLY_SUCCESSFUL:Lcom/google/android/searchcommon/util/FutureList$Mode;

    .line 19
    new-instance v0, Lcom/google/android/searchcommon/util/FutureList$Mode;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/searchcommon/util/FutureList$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/searchcommon/util/FutureList$Mode;->ALL:Lcom/google/android/searchcommon/util/FutureList$Mode;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/searchcommon/util/FutureList$Mode;

    sget-object v1, Lcom/google/android/searchcommon/util/FutureList$Mode;->ONLY_SUCCESSFUL:Lcom/google/android/searchcommon/util/FutureList$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/searchcommon/util/FutureList$Mode;->ALL:Lcom/google/android/searchcommon/util/FutureList$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/searchcommon/util/FutureList$Mode;->$VALUES:[Lcom/google/android/searchcommon/util/FutureList$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/searchcommon/util/FutureList$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/google/android/searchcommon/util/FutureList$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/searchcommon/util/FutureList$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/searchcommon/util/FutureList$Mode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/searchcommon/util/FutureList$Mode;->$VALUES:[Lcom/google/android/searchcommon/util/FutureList$Mode;

    invoke-virtual {v0}, [Lcom/google/android/searchcommon/util/FutureList$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/searchcommon/util/FutureList$Mode;

    return-object v0
.end method
