.class public Lcom/google/i18n/phonenumbers/ShortNumberUtil;
.super Ljava/lang/Object;
.source "ShortNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "regionCode"

    .prologue
    .line 64
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getSupportedRegions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "regionCode"

    .prologue
    .line 78
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
