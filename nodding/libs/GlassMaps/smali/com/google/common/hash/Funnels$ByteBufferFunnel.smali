.class final enum Lcom/google/common/hash/Funnels$ByteBufferFunnel;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/common/hash/Funnel;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/Funnels$ByteBufferFunnel;

.field public static final enum INSTANCE:Lcom/google/common/hash/Funnels$ByteBufferFunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$ByteBufferFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$ByteBufferFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$ByteBufferFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/hash/Funnels$ByteBufferFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$ByteBufferFunnel;
    .locals 1

    const-class v0, Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$ByteBufferFunnel;
    .locals 1

    sget-object v0, Lcom/google/common/hash/Funnels$ByteBufferFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$ByteBufferFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/q;)V
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$ByteBufferFunnel;->funnel(Ljava/nio/ByteBuffer;Lcom/google/common/hash/q;)V

    return-void
.end method

.method public final funnel(Ljava/nio/ByteBuffer;Lcom/google/common/hash/q;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lcom/google/common/hash/q;->c([BII)Lcom/google/common/hash/q;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-interface {p2, v1}, Lcom/google/common/hash/q;->b(B)Lcom/google/common/hash/q;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method
