.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;


# instance fields
.field private cachedSize:I

.field public orientation:Ljava/lang/Float;

.field public pressure:Ljava/lang/Float;

.field public size:Ljava/lang/Float;

.field public toolMajor:Ljava/lang/Float;

.field public toolMinor:Ljava/lang/Float;

.field public touchMajor:Ljava/lang/Float;

.field public touchMinor:Ljava/lang/Float;

.field public x:Ljava/lang/Float;

.field public y:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 788
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    .line 693
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    .line 715
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    .line 716
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    .line 717
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    .line 718
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    .line 719
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    .line 720
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    .line 721
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    .line 722
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    .line 723
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    .line 724
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 729
    if-ne p1, p0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v1

    .line 730
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 731
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 732
    .local v0, other:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    if-gez v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getSerializedSize()I

    .line 795
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 802
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 806
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 810
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 813
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 814
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 817
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 818
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 821
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 822
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 825
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 826
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 829
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 830
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 833
    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 834
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_8
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    .line 838
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 744
    const/16 v0, 0x11

    .line 745
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 746
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 747
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 748
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 749
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 750
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 751
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v3, v1

    .line 752
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    add-int v0, v3, v1

    .line 753
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    if-nez v3, :cond_8

    :goto_8
    add-int v0, v1, v2

    .line 754
    return v0

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_1

    .line 747
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2

    .line 748
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_3

    .line 749
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_4

    .line 750
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_5

    .line 751
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_6

    .line 752
    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_7

    .line 753
    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 847
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 851
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    :sswitch_0
    return-object p0

    .line 857
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    goto :goto_0

    .line 861
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    goto :goto_0

    .line 865
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    goto :goto_0

    .line 869
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    goto :goto_0

    .line 873
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    goto :goto_0

    .line 877
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    goto :goto_0

    .line 881
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    goto :goto_0

    .line 885
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    goto :goto_0

    .line 889
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    goto :goto_0

    .line 847
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 898
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 760
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 763
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 766
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 769
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 771
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 772
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 774
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 775
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 777
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 778
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 780
    :cond_6
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 781
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 783
    :cond_7
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 784
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 786
    :cond_8
    return-void
.end method
