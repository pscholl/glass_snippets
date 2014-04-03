.class final enum Lcom/google/glass/voice/Sensory$State;
.super Ljava/lang/Enum;
.source "Sensory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/Sensory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/Sensory$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/Sensory$State;

.field public static final enum ACTIVE:Lcom/google/glass/voice/Sensory$State;

.field public static final enum DESTROYED:Lcom/google/glass/voice/Sensory$State;

.field public static final enum DESTROYING:Lcom/google/glass/voice/Sensory$State;

.field public static final enum INACTIVE:Lcom/google/glass/voice/Sensory$State;

.field private static final allowedTransitions:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/google/glass/voice/Sensory$State;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/voice/Sensory$State;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/google/glass/voice/Sensory$State;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/Sensory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    .line 56
    new-instance v0, Lcom/google/glass/voice/Sensory$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/Sensory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    .line 59
    new-instance v0, Lcom/google/glass/voice/Sensory$State;

    const-string v1, "DESTROYING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/Sensory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    .line 62
    new-instance v0, Lcom/google/glass/voice/Sensory$State;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/Sensory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->DESTROYED:Lcom/google/glass/voice/Sensory$State;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/Sensory$State;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->DESTROYED:Lcom/google/glass/voice/Sensory$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->$VALUES:[Lcom/google/glass/voice/Sensory$State;

    .line 64
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/glass/voice/Sensory$State;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->allowedTransitions:Ljava/util/EnumMap;

    .line 68
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->allowedTransitions:Ljava/util/EnumMap;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    sget-object v2, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    sget-object v3, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->allowedTransitions:Ljava/util/EnumMap;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    sget-object v2, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    sget-object v3, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->allowedTransitions:Ljava/util/EnumMap;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    sget-object v2, Lcom/google/glass/voice/Sensory$State;->DESTROYED:Lcom/google/glass/voice/Sensory$State;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkTransition(Lcom/google/glass/voice/Sensory$State;Lcom/google/glass/voice/Sensory$State;)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->allowedTransitions:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected from state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->allowedTransitions:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected transition from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 81
    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/Sensory$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 45
    const-class v0, Lcom/google/glass/voice/Sensory$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/Sensory$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/Sensory$State;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->$VALUES:[Lcom/google/glass/voice/Sensory$State;

    invoke-virtual {v0}, [Lcom/google/glass/voice/Sensory$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/Sensory$State;

    return-object v0
.end method
