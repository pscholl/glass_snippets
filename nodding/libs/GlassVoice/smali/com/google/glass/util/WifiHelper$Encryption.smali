.class public final enum Lcom/google/glass/util/WifiHelper$Encryption;
.super Ljava/lang/Enum;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/WifiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encryption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/WifiHelper$Encryption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/WifiHelper$Encryption;

.field public static final enum NONE:Lcom/google/glass/util/WifiHelper$Encryption;

.field public static final enum WEP:Lcom/google/glass/util/WifiHelper$Encryption;

.field public static final enum WPA:Lcom/google/glass/util/WifiHelper$Encryption;

.field public static final enum WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/google/glass/util/WifiHelper$Encryption;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/WifiHelper$Encryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 92
    new-instance v0, Lcom/google/glass/util/WifiHelper$Encryption;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/WifiHelper$Encryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 93
    new-instance v0, Lcom/google/glass/util/WifiHelper$Encryption;

    const-string v1, "WEP"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/util/WifiHelper$Encryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 94
    new-instance v0, Lcom/google/glass/util/WifiHelper$Encryption;

    const-string v1, "WPA_EAP"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/util/WifiHelper$Encryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/util/WifiHelper$Encryption;

    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->$VALUES:[Lcom/google/glass/util/WifiHelper$Encryption;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 1
    .parameter "name"

    .prologue
    .line 90
    const-class v0, Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/WifiHelper$Encryption;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->$VALUES:[Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-virtual {v0}, [Lcom/google/glass/util/WifiHelper$Encryption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/WifiHelper$Encryption;

    return-object v0
.end method
