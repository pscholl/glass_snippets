.class public final enum Lcom/google/glass/util/UiNotifier$Mode;
.super Ljava/lang/Enum;
.source "UiNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/UiNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/UiNotifier$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/UiNotifier$Mode;

.field public static final enum ON_HIDE:Lcom/google/glass/util/UiNotifier$Mode;

.field public static final enum ON_SHOW:Lcom/google/glass/util/UiNotifier$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/google/glass/util/UiNotifier$Mode;

    const-string v1, "ON_SHOW"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/UiNotifier$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/UiNotifier$Mode;->ON_SHOW:Lcom/google/glass/util/UiNotifier$Mode;

    .line 22
    new-instance v0, Lcom/google/glass/util/UiNotifier$Mode;

    const-string v1, "ON_HIDE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/UiNotifier$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/UiNotifier$Mode;->ON_HIDE:Lcom/google/glass/util/UiNotifier$Mode;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/util/UiNotifier$Mode;

    sget-object v1, Lcom/google/glass/util/UiNotifier$Mode;->ON_SHOW:Lcom/google/glass/util/UiNotifier$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/util/UiNotifier$Mode;->ON_HIDE:Lcom/google/glass/util/UiNotifier$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/util/UiNotifier$Mode;->$VALUES:[Lcom/google/glass/util/UiNotifier$Mode;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/UiNotifier$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/util/UiNotifier$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/UiNotifier$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/UiNotifier$Mode;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/util/UiNotifier$Mode;->$VALUES:[Lcom/google/glass/util/UiNotifier$Mode;

    invoke-virtual {v0}, [Lcom/google/glass/util/UiNotifier$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/UiNotifier$Mode;

    return-object v0
.end method
