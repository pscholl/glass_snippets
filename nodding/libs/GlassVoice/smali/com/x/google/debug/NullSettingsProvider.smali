.class public Lcom/x/google/debug/NullSettingsProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/debug/SettingsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeBoolean(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public getAttributeLong(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public getAttributeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public hasCapability(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
