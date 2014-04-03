.class public final enum Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;
.super Ljava/lang/Enum;
.source "ShortNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/ShortNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortNumberCost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

.field public static final enum PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

.field public static final enum STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

.field public static final enum TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

.field public static final enum UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    const-string v1, "TOLL_FREE"

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    .line 37
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    const-string v1, "STANDARD_RATE"

    invoke-direct {v0, v1, v3}, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    .line 38
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    const-string v1, "PREMIUM_RATE"

    invoke-direct {v0, v1, v4}, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    .line 39
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    const-string v1, "UNKNOWN_COST"

    invoke-direct {v0, v1, v5}, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->$VALUES:[Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    return-object v0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->$VALUES:[Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    return-object v0
.end method
