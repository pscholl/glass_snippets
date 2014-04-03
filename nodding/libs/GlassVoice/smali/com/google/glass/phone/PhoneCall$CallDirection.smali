.class public final enum Lcom/google/glass/phone/PhoneCall$CallDirection;
.super Ljava/lang/Enum;
.source "PhoneCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/phone/PhoneCall$CallDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/phone/PhoneCall$CallDirection;

.field public static final enum INCOMING:Lcom/google/glass/phone/PhoneCall$CallDirection;

.field public static final enum OUTGOING:Lcom/google/glass/phone/PhoneCall$CallDirection;

.field public static final enum UNKNOWN:Lcom/google/glass/phone/PhoneCall$CallDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/google/glass/phone/PhoneCall$CallDirection;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/phone/PhoneCall$CallDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->INCOMING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 64
    new-instance v0, Lcom/google/glass/phone/PhoneCall$CallDirection;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/phone/PhoneCall$CallDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->OUTGOING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 70
    new-instance v0, Lcom/google/glass/phone/PhoneCall$CallDirection;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/phone/PhoneCall$CallDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->UNKNOWN:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/phone/PhoneCall$CallDirection;

    sget-object v1, Lcom/google/glass/phone/PhoneCall$CallDirection;->INCOMING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/phone/PhoneCall$CallDirection;->OUTGOING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/phone/PhoneCall$CallDirection;->UNKNOWN:Lcom/google/glass/phone/PhoneCall$CallDirection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->$VALUES:[Lcom/google/glass/phone/PhoneCall$CallDirection;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/phone/PhoneCall$CallDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall$CallDirection;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/phone/PhoneCall$CallDirection;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->$VALUES:[Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v0}, [Lcom/google/glass/phone/PhoneCall$CallDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/phone/PhoneCall$CallDirection;

    return-object v0
.end method
