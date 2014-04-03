.class final Lcom/x/google/common/util/MemUtil$MemoryUsage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/google/common/util/MemUtil$MemoryUsage;->toStrings(I)Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/x/google/common/util/MemUtil$MemoryUsage;


# direct methods
.method constructor <init>(Lcom/x/google/common/util/MemUtil$MemoryUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/util/MemUtil$MemoryUsage$1;->this$0:Lcom/x/google/common/util/MemUtil$MemoryUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/x/google/common/util/MemUtil$MemoryUsage;

    iget v0, p2, Lcom/x/google/common/util/MemUtil$MemoryUsage;->numBytesUsed:I

    check-cast p1, Lcom/x/google/common/util/MemUtil$MemoryUsage;

    iget v1, p1, Lcom/x/google/common/util/MemUtil$MemoryUsage;->numBytesUsed:I

    sub-int/2addr v0, v1

    return v0
.end method
